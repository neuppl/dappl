import random
import time
from collections import namedtuple

from problog.ddnnf_formula import DDNNF
from problog.engine import DefaultEngine, ground
from problog.evaluator import Semiring, Evaluator
from problog.program import PrologString, PrologFile, LogicProgram
from problog.logic import Term, Constant, Clause, AnnotatedDisjunction
from problog.formula import LogicFormula
from problog import get_evaluatable
import problog.evaluator

from lfi_term import LfiTerm

LFI_TERM_NAME = 't'
EU_TERM_NAME = 's'

pn_weight = namedtuple('pos_neg_weight', 'p_weight, n_weight')


def get_ulearner(model_filename, examples_filenames, max_epoch=3, learning_rate=0.7, batch_size=32):
    """
    # TODO
    :param model_filename:
    :param examples_filenames:
    :param max_epoch:
    :param learning_rate:
    :param batch_size: The brach size used during gradient descent. When None, the entire dataset is used.
    :return: The learned utility for each term.
    :rtype dict[Term, float]
    """
    program = PrologFile(model_filename)
    examples = list(read_examples(examples_filenames))
    ulearner = ULearner.get_ulearner(examples, program)
    ulearner.batch_size = batch_size if batch_size is not None else len(examples)
    ulearner.max_epoch = max_epoch
    ulearner.learning_rate = learning_rate
    ulearner.lfi_u_init_value = 0
    return ulearner


class PrinterDefault:

    def print(self, msg):
        print(msg)


printer = PrinterDefault()

class ULearner:

    def __init__(self, db, util_examples, lfi_p_init_value=0.5, lfi_u_init_value=0,
                 batch_size=32, max_epoch=100, convergence_threshold=1, learning_rate=0.4):
        """
        Initialise the utility learner

        :param db: The ProbLog database to use
        :param util_examples: The list of examples to learn from. Each example is a tuple consisting of a list of
        observations and the total utility of the example.
        :type util_examples: list[tuple[list[(Term, bool)], int]]
        :param batch_size: The batch size used in gradient descent.
        :type batch_size: int
        """
        assert util_examples is not None
        self.util_examples = util_examples
        self.util_processed_examples = None
        assert db is not None
        self.db = db
        assert 0 <= lfi_p_init_value <= 1
        self.lfi_p_init_value = lfi_p_init_value
        self.lfi_u_init_value = lfi_u_init_value
        assert 0 < batch_size
        self.batch_size = min(batch_size, len(util_examples))
        self.max_epoch = max_epoch
        self.convergence_threshold = convergence_threshold
        self.learning_rate = learning_rate

        self._semiring_eu = SemiringEU()
        self._kc = None
        self._weights = None
        self._utility_lfi_weights = None
        self._probability_lfi_weights = None
        self._key_to_util_index = None
        self._key_to_prob_index = None
        self.term_to_key = dict()
        self.log = LFILog()

    @staticmethod
    def get_ulearner(util_examples, program):
        """
        get a utility learner

        :param util_examples: The list of examples to learn from. Each example is a tuple consisting of a list of
        observations and the total utility of the example.
        :type util_examples: list[tuple[list[(Term, bool)], int]]
        :param program: The ProbLog program with some unknown utilities. use utility(atom, t(_)) when the utility is
        unknown. Use utility(atom, t(10)) if an initial guess of 10 should be used during the learning.
        """
        engine = DefaultEngine(label_all=True, keep_order=True)
        db = engine.prepare(program)
        return ULearner(db, util_examples)

    def prepare(self):
        # Prepare LF
        engine = DefaultEngine(label_all=True, keep_order=True)
        utilities = dict(engine.query(self.db, Term('utility', None, None)))

        # - Gather observed terms
        observed_terms = set()
        for example in self.util_examples:
            observations, utility = example
            observed_terms |= {obs_term for obs_term, obs_value in observations}  # TODO is it important to query for \+ obs_term in the negative case?

        # - Include the utility Terms
        queries = observed_terms | set(utilities.keys())
        lf = engine.ground_all(self.db, queries=queries)  # type: LogicFormula

        # Knowledge compilation
        kc_class = get_evaluatable(name="ddnnf")
        starttime = time.time()
        self._kc = kc_class.create_from(lf)  # type: DDNNF
        endtime = time.time()
        print("Compilation took %s" % (endtime - starttime))

        # Processed examples
        self.util_processed_examples = self._process_examples(self._kc, self.util_examples)

        # term to key
        for util in utilities:
            self.term_to_key[util] = self._kc.get_node_by_name(util)

        # Fix weights
        self._weights, self._utility_lfi_weights, self._probability_lfi_weights, self._key_to_util_index, \
            self._key_to_prob_index = self._get_fixed_weights(self._kc, utilities,
                                                              lfi_u_init_value=self.lfi_u_init_value,
                                                              lfi_p_init_value=self.lfi_p_init_value)
        #print("\nFixed weights: %s" % self._weights)
        printer.print("utility_lfi_weights: %s" % self._utility_lfi_weights)
        #print("probability_lfi_weights: %s" % self._probability_lfi_weights)
        #print("key_to_util_index: %s" % self._key_to_util_index)
        #print("key_to_prob_index: %s \n" % self._key_to_prob_index)

    def learn(self):
        """
        TODO
        :return:
        """
        if self._kc is None:
            self.prepare()

        processed_examples = self.util_processed_examples
        M = len(processed_examples)
        evaluator_eu = self._kc.get_evaluator(semiring=self._semiring_eu, weights=self._weights)  # type: Evaluator

        # Report MSE before start. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
        totalmse = self.mse(processed_examples, evaluator_eu)
        self.log.mse.append(totalmse)

        # TODO Ignoring probabilities for now
        epoch = 0
        while epoch < self.max_epoch:  # TODO and converging difference < ... OR MSE < ...?
            epoch += 1

            example_counter = 0
            while example_counter < len(processed_examples):  # For each batch
                batch_end = min(example_counter + self.batch_size, len(processed_examples))
                used_batch_size = batch_end - example_counter

                # Reset gradients
                util_gradients = {key: 0 for key in self._key_to_util_index}

                # Calculate gradients u_i: = 2/M \sum_{j=1}^M (ceu(q_j,T) - \tilde{u}_j) Prob(f_i,q_j|q_j)
                for example in processed_examples[example_counter:batch_end]:  # For each example in the batch
                    observations, utility = example
                    #print("\nEXAMPLE %s" % observations)

                    # Part 1 = (ceu(_j,T) - \tilde{u_j})
                    self._add_evidence(evaluator_eu, observations, None)
                    evaluator_eu.propagate()
                    ceu = evaluator_eu.evaluate(0).args[1].compute_value()
                    part1 = ceu - utility

                    # Part 2 for each u_i: Prob(f_i, g_j |g_j)
                    for key in self._key_to_util_index:
                        part2 = evaluator_eu.evaluate(key).args[0].compute_value()
                        #print("For key %s part 2 %s" % (key, part2))
                        util_gradients[key] += part1 * part2
                    evaluator_eu.clear_evidence()  # TODO Any evidence that was already in the program is lost.
                util_gradients = {key: (grad * 2 / used_batch_size) for key, grad in util_gradients.items()}
                #print("Gradients: %s" % util_gradients)
                self.log.gradients.append(util_gradients)

                # Move utilities to opposite of gradients
                for key, index in self._key_to_util_index.items():
                    self._utility_lfi_weights[index] -= self.learning_rate * util_gradients[key]
                #print("Updated to utilities: %s" % self._utility_lfi_weights)
                example_counter += self.batch_size

            # Report MSE at end of epoch.
            totalmse = self.mse(processed_examples, evaluator_eu)
            self.log.mse.append(totalmse)
        return self.get_current_util_weights()

    def mse(self, processed_examples, evaluator_eu=None):
        """
        Get the mean squared error for the currently set weights compared to the utilities in the examples.
        :param processed_examples: The examples to evaluate on, in a processed format. See get_processed_examples()
        :type processed_examples: list[tuple[list[tuples[int, bool]],float]
        :param evaluator_eu: The expected utility evaluator to use. Use None unless you know what you are doing.
        :return: The mean squared error of the currently set weights on the given processed_examples.
        :rtype: float
        """
        if evaluator_eu is None:
            evaluator_eu = self._kc.get_evaluator(semiring=self._semiring_eu, weights=self._weights)
        # MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
        totalmse = 0.0
        for example in processed_examples:
            observations, utility = example
            self._add_evidence(evaluator_eu, observations, None)
            evaluator_eu.propagate()
            ceu = evaluator_eu.evaluate(0).args[1].compute_value()
            diff = ceu - utility
            # print("diff = ceu - utility: %s = %s - %s" % (diff, ceu, utility))
            totalmse = totalmse + diff ** 2
            evaluator_eu.clear_evidence()
        totalmse = totalmse / len(processed_examples)
        return totalmse

    def get_processed_examples(self):
        """
        The examples to learn from, processed such that each term is replaced by its key.
        :return: The examples self.util_examples, modified such that each term is replaced by its key within the
        knowledge base. Changes to the returned structure can impact the results of this class instance;
        :rtype: list[tuple[list[tuples[int, bool]],float]
        """
        return self.util_processed_examples

    def set_current_util_weights(self, utilities):
        """
        Set the current utility weights.
        :param utilities: For each term, the utility to set. Only terms which have unknown utilities and were prepared
        earlier are set, the rest is ignored.
        :type utilities: dict[Term, float]
        """
        for term, util in utilities.items():
            key = self.term_to_key.get(term)
            if key is not None:
                index = self._key_to_util_index.get(key)
                if index is not None:
                    self._utility_lfi_weights[index] = util

    def get_current_util_weights(self):
        """
        Get the currently set utility weights.
        :return: The utility weights set for each term. The returned dictionary can safely be modified.
        :rtype: dict[Term, float]
        """
        result_dict = dict()
        for term, key in self.term_to_key.items():
            index = self._key_to_util_index.get(key)
            if index is not None:
                result_dict[term] = self._utility_lfi_weights[index]
        return result_dict

    def learn_adaptive_rate(self, increase_rate=1.1, decrease_rate=0.9):
        """
        TODO
        :param increase_rate: The factor with which to multiply the learning rate when the MSE was improved.
        :param decrease_rate: The factor with which to multiply the learning rate when the MSE was worse.
        :return:
        """
        if self._kc is None:
            self.prepare()

        processed_examples = self._process_examples(self._kc, self.util_examples)
        M = len(processed_examples)
        evaluator_eu = self._kc.get_evaluator(semiring=self._semiring_eu, weights=self._weights)  # type: Evaluator
        learning_rate = self.learning_rate

        # Report MSE before start. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
        totalmse = self.mse(processed_examples, evaluator_eu)
        self.log.mse.append(totalmse)
        self.log.weights.append(self.get_current_util_weights())

        # TODO Ignoring probabilities for now
        epoch = 0
        attempt = 0
        max_attempts = 10
        sweeps = 0  # Keep track of how many calculations (1 per batch) have been performed.
        max_sweeps = self.max_epoch * len(processed_examples) / self.batch_size * 3
        while epoch < self.max_epoch and learning_rate > 10e-5 and sweeps < max_sweeps:  # TODO and converging difference < ... OR MSE < ...?
            epoch += 1

            example_counter = 0
            mse = 0
            while example_counter < len(processed_examples):  # For each batch
                batch_end = min(example_counter + self.batch_size, len(processed_examples))
                used_batch_size = batch_end - example_counter

                # Calculate batch MSE before the update. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
                prevmse = self.mse(processed_examples[example_counter:batch_end], evaluator_eu)

                mse = float('inf')
                while prevmse < mse and not (learning_rate <= 1 and attempt > max_attempts):
                    # Reset gradients
                    util_gradients = {key: 0 for key in self._key_to_util_index}

                    # Calculate gradients u_i: = 2/M \sum_{j=1}^M (ceu(q_j,T) - \tilde{u}_j) Prob(f_i,q_j|q_j)
                    sweeps += 1
                    for example in processed_examples[example_counter:batch_end]:  # For each example in the batch
                        observations, utility = example

                        # Part 1 = (ceu(_j,T) - \tilde{u_j})
                        self._add_evidence(evaluator_eu, observations, None)
                        evaluator_eu.propagate()
                        ceu = evaluator_eu.evaluate(0).args[1].compute_value()
                        part1 = ceu - utility

                        # Part 2 for each u_i: Prob(f_i, g_j |g_j)
                        for key in self._key_to_util_index:
                            part2 = evaluator_eu.evaluate(key).args[0].compute_value()
                            util_gradients[key] += part1 * part2
                        evaluator_eu.clear_evidence()  # TODO Any evidence that was already in the program is lost.
                    util_gradients = {key: (grad * 2 / used_batch_size) for key, grad in util_gradients.items()}

                    # Move utilities to opposite of gradients
                    for key, index in self._key_to_util_index.items():
                        self._utility_lfi_weights[index] -= learning_rate * util_gradients[key]

                    # Calculate batch MSE after update. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
                    mse = self.mse(processed_examples[example_counter:batch_end], evaluator_eu)

                    # If previous solution better: Retry with smaller learn rate else continue with higher learn rate.
                    if prevmse < mse:
                        # reset
                        for key, index in self._key_to_util_index.items():
                            self._utility_lfi_weights[index] += learning_rate * util_gradients[key]
                        # learning rate lower
                        if learning_rate <= 1:
                            attempt += 1
                        learning_rate *= decrease_rate
                        printer.print('Batch MSE was %s and is now %s. Learning rate changed to %s' % (prevmse, mse, learning_rate))
                    else:
                        learning_rate *= increase_rate
                        printer.print('Batch MSE was %s and is now %s. Learning rate changed to %s' % (prevmse, mse, learning_rate))
                        attempt = 0
                        self.log.gradients.append(util_gradients)
                example_counter += self.batch_size

            # Report MSE at end of epoch. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
            if self.batch_size != M:
                totalmse = self.mse(processed_examples, evaluator_eu)
                printer.print("Epoch %s finished with total MSE %s" % (epoch, totalmse))
            else:
                totalmse = mse
            self.log.mse.append(totalmse)
            self.log.weights.append(self.get_current_util_weights())

        # Report results
        resulting_util_weights = dict()
        for term, key in self.term_to_key.items():
            util_index = self._key_to_util_index.get(key)
            if util_index is not None:
                resulting_util_weights[term] = self._utility_lfi_weights[util_index]
        return resulting_util_weights

    def learn_adaptive_rate_left_out(self, increase_rate=1.1, decrease_rate=0.9, left_out=0.3):
        """
        TODO
        :param increase_rate: The factor with which to multiply the learning rate when the MSE was improved.
        :param decrease_rate: The factor with which to multiply the learning rate when the MSE was worse.
        :param left_out: The fraction of data that should be used as test data.
        :return:
        """
        processed_examples = self._process_examples(self._kc, self.util_examples)
        left_out_size = int(len(processed_examples) * left_out)
        train_data = processed_examples[0:-left_out_size]
        test_data = processed_examples[len(processed_examples)-left_out_size:]

        current_epoch = 0
        best_weights = None
        best_test_loss = float('inf')
        restart = 0
        while current_epoch < self.max_epoch:
            if restart != 0:
                self.set_random_utilities()
                printer.print("Restart %s" % restart)
            restart += 1
            current_epoch, weights, test_loss = self._learn_adaptive_rate_left_out(train_data, test_data, increase_rate, decrease_rate, current_epoch)
            if test_loss < best_test_loss:
                best_test_loss = test_loss
                best_weights = weights
        printer.print("Best weights %s" % best_weights)
        printer.print("Best test loss %s" % best_test_loss)
        return best_weights

    def _learn_adaptive_rate_left_out(self, train_data, test_data, increase_rate=1.1, decrease_rate=0.9, current_epoch=0):
        if self._kc is None:
            self.prepare()

        M = len(train_data)
        evaluator_eu = self._kc.get_evaluator(semiring=self._semiring_eu, weights=self._weights)  # type: Evaluator
        learning_rate = self.learning_rate

        # Report MSE before start. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
        totalmse = self.mse(train_data, evaluator_eu)
        self.log.mse.append(totalmse)
        prev_test_loss = self.mse(test_data, evaluator_eu)
        self.log.mse_test.append(prev_test_loss)
        self.log.weights.append(self.get_current_util_weights())

        # TODO Ignoring probabilities for now
        epoch = current_epoch
        attempt = 0
        max_attempts = 10
        sweeps = 0  # Keep track of how many calculations (1 per batch) have been performed.
        max_sweeps = self.max_epoch * len(train_data) / self.batch_size * 3
        test_loss = prev_test_loss
        while epoch < self.max_epoch and learning_rate > 10e-5 and sweeps < max_sweeps and test_loss <= prev_test_loss:  # TODO and converging difference < ... OR MSE < ...?
            example_counter = 0
            mse = 0

            prev_test_loss = test_loss

            while example_counter < len(train_data):  # For each batch
                batch_end = min(example_counter + self.batch_size, len(train_data))
                used_batch_size = batch_end - example_counter

                # Calculate batch MSE before the update. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
                prevmse = self.mse(train_data[example_counter:batch_end], evaluator_eu)

                mse = float('inf')
                while prevmse < mse and not (learning_rate <= 1 and attempt > max_attempts):
                    # Reset gradients
                    util_gradients = {key: 0 for key in self._key_to_util_index}

                    # Calculate gradients u_i: = 2/M \sum_{j=1}^M (ceu(q_j,T) - \tilde{u}_j) Prob(f_i,q_j|q_j)
                    sweeps += 1
                    for example in train_data[example_counter:batch_end]:  # For each example in the batch
                        observations, utility = example

                        # Part 1 = (ceu(_j,T) - \tilde{u_j})
                        self._add_evidence(evaluator_eu, observations, None)
                        evaluator_eu.propagate()
                        ceu = evaluator_eu.evaluate(0).args[1].compute_value()
                        part1 = ceu - utility

                        # Part 2 for each u_i: Prob(f_i, g_j |g_j)
                        for key in self._key_to_util_index:
                            part2 = evaluator_eu.evaluate(key).args[0].compute_value()
                            util_gradients[key] += part1 * part2
                        evaluator_eu.clear_evidence()  # TODO Any evidence that was already in the program is lost.
                    util_gradients = {key: (grad * 2 / used_batch_size) for key, grad in util_gradients.items()}

                    # Move utilities to opposite of gradients
                    for key, index in self._key_to_util_index.items():
                        self._utility_lfi_weights[index] -= learning_rate * util_gradients[key]

                    # Calculate batch MSE after update. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
                    mse = self.mse(train_data[example_counter:batch_end], evaluator_eu)

                    # If previous solution better: Retry with smaller learn rate else continue with higher learn rate.
                    if prevmse < mse:
                        # reset
                        for key, index in self._key_to_util_index.items():
                            self._utility_lfi_weights[index] += learning_rate * util_gradients[key]
                        # learning rate lower
                        if learning_rate <= 1:
                            attempt += 1
                        learning_rate *= decrease_rate
                        printer.print('Batch MSE was %s and is now %s. Learning rate changed to %s' % (
                        prevmse, mse, learning_rate))
                    else:
                        learning_rate *= increase_rate
                        printer.print('Batch MSE was %s and is now %s. Learning rate changed to %s' % (
                        prevmse, mse, learning_rate))
                        attempt = 0
                        self.log.gradients.append(util_gradients)
                example_counter += self.batch_size

            # Report MSE at end of epoch. MSE = 1/M sum_{j=1}^M (ceu(q_j, T) - \tilde{u}_j)**2
            if self.batch_size != M:
                totalmse = self.mse(train_data, evaluator_eu)
                printer.print("Epoch %s finished with total MSE %s" % (epoch, totalmse))
            else:
                totalmse = mse
            self.log.mse.append(totalmse)

            test_loss = self.mse(test_data, evaluator_eu)
            self.log.mse_test.append(test_loss)
            self.log.weights.append(self.get_current_util_weights())
            printer.print("Test loss was %s" % test_loss)
            epoch += 1

        # Report results
        resulting_util_weights = dict()
        for term, key in self.term_to_key.items():
            util_index = self._key_to_util_index.get(key)
            if util_index is not None:
                resulting_util_weights[term] = self._utility_lfi_weights[util_index]
        return epoch, resulting_util_weights, prev_test_loss

    def set_random_utilities(self):
        """
        Set all the unknown utilities to a random value between -50 and 50.
        """
        for index in range(1, len(self._utility_lfi_weights)):
            self._utility_lfi_weights[index] = random.randint(-50, 50)

    @staticmethod
    def _add_evidence(evaluator: Evaluator, indices, value):
        """
        TODO Move to Evaluator.py

        :param evaluator:
        :param indices: The index of the evidence OR a list of tuples, each consisting of the index and the value.
        :type indices: (int | list[tuple[int, bool]])
        :param value: The value of the evidence. This is ignored if indices is a list of evidence.
        """
        if isinstance(indices, list):
            evidence = indices
        else:
            evidence = [(indices, value)]
        for index, value in evidence:
            if value > 0:
                evaluator.add_evidence(index)
            else:
                evaluator.add_evidence(-index)

    @staticmethod
    def _process_examples(kc, examples):
        """
        Convert the observations from Term to int (key in the given kc).
        :param kc: The knowledge base from which we lookup the Term and retrieve its key.
        :type kc: LogicFormula
        :param examples: The examples to process.
        :type examples: : list[tuple[list[(Term, bool)], int]]
        :return: The examples but with each Term replaced by its key in kc.
        :raise KeyError: When there is an observed Term with a name not found in kc.
        """
        def _process_examples_sub(kc: LogicFormula, observations):
            return [(kc.get_node_by_name(obs_term), obs_value) for obs_term, obs_value in observations]
        return [(_process_examples_sub(kc, observations), utility) for observations, utility in examples]

    def _get_fixed_weights(self, kc, utilities, lfi_u_init_value=0, lfi_p_init_value=0.5):
        """
        Get the weights present in kc, adjusted with the weights provided in utilities.
        A weight for the 0 node is used to keep track of the costs for the utility variables which are always true.

        An unknown utility is represented as an LfiTerm storing an index and reference to a list of values. During evaluation,
        the value at the index in the list and at any time, its value is determined by its index and list

        :param kc: The BaseFormula of which to retrieve existing weights.
        :type kc: problog.formula.BaseFormula
        :param utilities: The utility variables to adjust the weight of. A dict of type {Term : external_weight} where
        external weights are those given to the semiring to get the internal value.
        :type utilities: dict[Term, Any]
        :return:
            1) The weights of kc adjusted with the weights of utilities (dict of type {name : external_weight}).
            When both a positive and negative weight are specified, the pn_weight namedtuple is used.
            2) utility_lfi_weights - A list of utilities, one for each unknown utility term. The LfiTerms store a
            reference to this list and retrieve their value using their index. The first element is a dummy.
            3) prob_lfi_weights - A list of probabilities, one for each unknown probability term. The LfiTerms store a
            reference to this list and retrieve their value using their index. The first element is a dummy.
            4) key_to_util_index - A dictionary mapping each node to the index in the utility_lfi_weights list.
            5) key_to_prob_index - A dictionary mapping each node to the index in the prob_index list.
        :rtype: Tuple[dict[Term, (pn_weight | Any)], list[float], list[float], dict[int, int], dict[int, int]]
        """
        current_weights = dict(kc.get_weights())
        new_weights = dict()
        utility_lfi_weights = list()  # Stores init values. ID -> init weight
        utility_lfi_weights.append(-1)  # Sentinel because 0 = -0
        prob_lfi_weights = list()  # Stores init values. ID -> init weight
        prob_lfi_weights.append(-1)  # Sentinel because 0 = -0

        key_to_util_index = dict()  # node key : index of value in utility_lfi_weights
        key_to_prob_index = dict()  # node key : index of value in prob_lfi_weights

        ZERO_CST = Constant(0)
        ONE_CST = Constant(1.0)

        current_weights[0] = pn_weight(eu_term(ONE_CST, ZERO_CST), eu_term(ONE_CST, ZERO_CST))

        # Prepare all but the True weights to eu_term(p, cst) with p or cst potentially unknown lfi_term(lfi_id)
        for key, weight in current_weights.items():
            if isinstance(weight, Constant):
                prob = weight.compute_value()
                p_weight = eu_term(weight, ZERO_CST)
                n_weight = eu_term(Constant(1 - prob), ZERO_CST)
                new_weights[key] = pn_weight(p_weight, n_weight)

            elif isinstance(weight, Term) and weight.functor == LFI_TERM_NAME:  # t(_):
                prob_init = weight.args[0].compute_value() if isinstance(weight.args[0], Constant) else lfi_p_init_value
                prob_lfi_weights.append(prob_init)
                lfi_id = len(prob_lfi_weights) - 1
                p_weight = eu_term(lfi_term(prob_lfi_weights, lfi_id), ZERO_CST)
                n_weight = eu_term(lfi_term(prob_lfi_weights, -lfi_id), ZERO_CST)
                key_to_prob_index[key] = lfi_id
                new_weights[key] = pn_weight(p_weight, n_weight)

            elif isinstance(weight, Term) and weight.functor == EU_TERM_NAME:  # s(p,u):
                p = weight.args[0]
                if isinstance(p, Term) and p.functor == LFI_TERM_NAME:
                    prob_init = p.args[0].compute_value() if isinstance(p.args[0], Constant) else lfi_p_init_value
                    prob_lfi_weights.append(prob_init)
                    lfi_id = len(prob_lfi_weights) - 1
                    p_prob = lfi_term(prob_lfi_weights, lfi_id)
                    n_prob = lfi_term(prob_lfi_weights, -lfi_id)
                else:
                    assert isinstance(p, Constant)
                    p_prob = p
                    n_prob = Constant(1 - p.compute_value())

                u = weight.args[1]
                if isinstance(u, Term) and u.functor == LFI_TERM_NAME:
                    u_init = u.args[0].compute_value() if isinstance(u.args[0], Constant) else lfi_u_init_value
                    utility_lfi_weights.append(u_init)
                    lfi_id = len(utility_lfi_weights) - 1
                    p_utility = lfi_term(utility_lfi_weights, lfi_id)
                    key_to_util_index[key] = lfi_id
                else:
                    assert isinstance(u, Constant)
                    p_utility = u

                p_weight = eu_term(p_prob, p_utility)
                n_weight = eu_term(n_prob, ZERO_CST)
                new_weights[key] = pn_weight(p_weight, n_weight)
            else:
                new_weights[key] = weight
        current_weights = new_weights
        # post-condition: Every weight is pn_weight or True

        # Start adding/replacing utilities
        for util, cost_cst in utilities.items():
            key = self.term_to_key[util]

            if key is None:
                continue  # TODO Possible?
            else:
                current_weight = current_weights.get(abs(key))

            if isinstance(cost_cst, Constant):  # Known utility
                cost = cost_cst.compute_value()
                if key >= 0:
                    if current_weight is True:
                        pos_weight = eu_term(ONE_CST, cost_cst)
                        neg_weight = eu_term(ONE_CST, ZERO_CST)
                        current_weights[key] = pn_weight(pos_weight, neg_weight)
                    elif isinstance(current_weight, pn_weight):
                        pos_weight, neg_weight = current_weight
                        pos_weight_utility = pos_weight.args[1]
                        if not isinstance(pos_weight_utility, Term) or pos_weight_utility != LFI_TERM_NAME:
                            pos_new_cost = Constant(pos_weight_utility.compute_value() + cost)
                            new_pos_weight = eu_term(pos_weight.args[0], pos_new_cost)
                            current_weights[key] = pn_weight(new_pos_weight, neg_weight)
                    else:
                        raise ValueError("Expected True or a value of type pn_weight. Found: %s of type %s" %
                                         (current_weight, type(current_weight)))
                else:  # = key < 0
                    if current_weight is True:
                        pos_weight = eu_term(ONE_CST, ZERO_CST)
                        neg_weight = eu_term(ONE_CST, cost_cst)
                        current_weights[abs(key)] = pn_weight(pos_weight, neg_weight)
                    elif isinstance(current_weight, pn_weight):
                        pos_weight, neg_weight = current_weight
                        neg_weight_utility = neg_weight.args[1]
                        if not isinstance(neg_weight_utility, Term) or neg_weight_utility != LFI_TERM_NAME:
                            neg_new_cost = Constant(neg_weight_utility.compute_value() + cost)
                            new_neg_weight = eu_term(neg_weight.args[0], neg_new_cost)
                            current_weights[abs(key)] = pn_weight(pos_weight, new_neg_weight)
                    else:
                        raise ValueError("Expected True or a value of type pn_weight. Found: %s of type %s" %
                                         (current_weight, type(current_weight)))

            elif isinstance(cost_cst, Term) and cost_cst.functor == LFI_TERM_NAME:  # LFI (unknown / start value)
                u_init = cost_cst.args[0].compute_value() if isinstance(cost_cst.args[0], Constant) else lfi_u_init_value
                lfi_utility = lfi_term(utility_lfi_weights, len(utility_lfi_weights))
                if key >= 0:
                    if current_weight is True:  # same
                        key_to_util_index[key] = len(utility_lfi_weights)
                        utility_lfi_weights.append(u_init)
                        pos_weight = eu_term(ONE_CST, lfi_utility)
                        neg_weight = eu_term(ONE_CST, ZERO_CST)
                        current_weights[key] = pn_weight(pos_weight, neg_weight)
                    elif isinstance(current_weight, pn_weight):
                        pos_weight, neg_weight = current_weight
                        pos_weight_utility = pos_weight.args[1]
                        if not isinstance(pos_weight_utility, Term) or pos_weight_utility.functor != LFI_TERM_NAME:
                            key_to_util_index[key] = len(utility_lfi_weights)
                            utility_lfi_weights.append(u_init)
                            new_pos_weight = eu_term(pos_weight.args[0], lfi_utility)  # Overrides given cost
                            current_weights[key] = pn_weight(new_pos_weight, neg_weight)
                else:  # = key < 0
                    if current_weight is True:
                        key_to_util_index[key] = len(utility_lfi_weights)
                        utility_lfi_weights.append(u_init)
                        pos_weight = eu_term(ONE_CST, ZERO_CST)
                        neg_weight = eu_term(ONE_CST, lfi_utility)
                        current_weights[abs(key)] = pn_weight(pos_weight, neg_weight)
                    elif isinstance(current_weight, pn_weight):
                        pos_weight, neg_weight = current_weight
                        neg_weight_utility = neg_weight.args[1]
                        if not isinstance(neg_weight_utility, Term) or neg_weight_utility.functor != LFI_TERM_NAME:
                            key_to_util_index[key] = len(utility_lfi_weights)
                            utility_lfi_weights.append(u_init)
                            new_neg_weight = eu_term(neg_weight.args[0], lfi_utility)  # Overrides given cost
                            current_weights[abs(key)] = pn_weight(pos_weight, new_neg_weight)
        """
        # Convert current_weights to util_name -> weight
        result = dict()
        for name in utilities:
            key = kc.get_node_by_name(name)
            if key is not None:
                if key >= 0:
                    result[name] = current_weights[key]
                else:
                    value = current_weights[abs(key)]
                    result[name] = pn_weight(value.n_weight, value.p_weight)
        """
        return current_weights, utility_lfi_weights, prob_lfi_weights, key_to_util_index, key_to_prob_index


def eu_term(prob, cost):
    return Term(EU_TERM_NAME, prob, cost)


def lfi_term(lfi_list, lfi_id):
    return LfiTerm(value_source=lfi_list, value_index=lfi_id)


class SemiringEU(problog.evaluator.Semiring):
    """
    The expected utility semiring. Each element is a tuple of probability and expected utility: (p, eu).
    """

    def one(self):
        return 1.0, 0.0

    def zero(self):
        return 0.0, 0.0

    def plus(self, a, b):
        return a[0] + b[0], a[1] + b[1]

    def times(self, a, b):
        return a[0] * b[0], a[0] * b[1] + b[0] * a[1]

    def negate(self, a):
        if isinstance(a, tuple):
            return 1 - a[0], 0
        else:
            return 1 - a, 0

    def value(self, a):
        if isinstance(a, Term) and a.functor == EU_TERM_NAME:
            p = a.args[0].compute_value()
            u = a.args[1].compute_value()
            return p, p * u
        else:
            return float(a), 0

    def result(self, a, formula=None):
        return eu_term(Constant(a[0]), Constant(a[1]))

    def normalize(self, a, z):
        p_a, eu_a = a
        p_z, eu_z = z
        # each world I has p(I) and eu(I) = p(I) * u(I).
        # Normalizing the probability of the world (p(I)/p(Z) results p(I) / p(Z) * u(I) = eu(I) / p(Z)
        # Since total result = Sum_I [p(I) * u(I)]
        if p_a == 0.0:
            return 0.0, 0.0
        return p_a / p_z, eu_a / p_z

    def pos_value(self, a, key=None):
        if isinstance(a, pn_weight):
            return self.value(a.p_weight)
        else:
            return self.value(a)

    def neg_value(self, a, key=None):
        if isinstance(a, pn_weight):
            return self.value(a.n_weight)
        else:
            return self.negate(self.value(a))

    def is_dsp(self):
        return True

    def is_nsp(self):
        return True

    def in_domain(self, a):
        import numbers
        return 0.0 - 1e-6 <= a[0] <= 1.0 + 1e-6 and isinstance(a[1], numbers.Number)

    def ad_complement(self, ws, key=None):  # TODO
        s = self.zero()
        for w in ws:
            s = self.plus(s, w)
        return self.negate(s)

    def true(self, key=None):
        """Handle weight for deterministically true."""
        return self.one(), self.zero()

    def false(self, key=None):
        """Handle weight for deterministically false."""
        return self.zero(), self.one()

    def to_evidence(self, pos_weight, neg_weight, sign):
        if sign > 0:
            return pos_weight, (0.0, 0.0)
        else:
            return (0.0, 0.0), neg_weight

    def ad_negate(self, pos_weight, neg_weight):
        p_p, p_eu = pos_weight
        n_p, n_eu = neg_weight
        if n_p == 0:
            return 1.0, n_eu
        else:
            return 1.0, n_eu / n_p


def read_examples(*filenames):
    """
    Read in the examples and return a processed list of examples. Each example will be an element of this list,
    consisting of a list of atoms observed to be true/false;
    :param filenames: Filenames containing examples
    :type filenames: str
    :return: A list of the processed examples. Each example is an element of this list and will itself be a tuple of a
    list containing the observed terms and a utility. The observations are represented as a tuple of
    (atom, true/false/None).
    :rtype: list[tuple[list[(Term, bool)], int]]
    """
    for filename in filenames:
        with open(filename) as f:
            example = ''
            for line in f:
                if line.strip().startswith('---'):
                    pl = PrologString(example)
                    atoms = extract_evidence(pl)
                    total_utility = extract_utility(pl)
                    if len(atoms) > 0:
                        yield atoms, total_utility
                    example = ''
                else:
                    example += line
            if example != '':
                pl = PrologString(example)
                atoms = extract_evidence(pl)
                total_utility = extract_utility(pl)
                if len(atoms) > 0:
                    yield atoms, total_utility


def extract_utility(pl):
    """
    Extract the total utility from pl by querying for utility(X). When multiple answers are present, the first hit will
    be used (order undefined).
    :param pl: The ProbLog String/Program/DB to extract the utility from.
    :return: The total utility found in pl.
    :rtype: int
    :exception: When there is no total utility.
    """
    engine = DefaultEngine()
    atoms = engine.query(pl, Term('utility', None))
    if len(atoms) == 0:
        raise Exception("An example is missing the total utility, e.g. utility(5).")
    else:
        return atoms[0][0].value


def extract_evidence(pl):
    """
    Extract all evidence from pl as a list of format [(Term, bool)].
    :param pl: The ProbLog String/Program/DB to extract the evidence from.
    :return: A list of all the evidence, formatted as tuples (Term, bool|None). None in the case x in evidence(atom,x) is not true/false.
    :rtype list[tuple[Term, bool]]
    """
    engine = DefaultEngine()
    atoms = engine.query(pl, Term('evidence', None, None))
    atoms1 = engine.query(pl, Term('evidence', None))
    atoms2 = engine.query(pl, Term('observe', None))
    for atom in atoms1 + atoms2:
        atom = atom[0]
        if atom.is_negated():
            atoms.append((-atom, Term('false')))
        else:
            atoms.append((atom, Term('true')))
    return [(at, str2bool(vl)) for at, vl in atoms]


def str2bool(s):
    if str(s) == 'true':
        return True
    elif str(s) == 'false':
        return False
    else:
        return None


class LFILog:

    def __init__(self):
        self.mse = list()
        self.mse_test = list()
        self.gradients = list()
        self.weights = list()
