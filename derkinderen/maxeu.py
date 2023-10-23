"""
ProbLog expected utility computation task using aProbLog mechanics.

Copyright 2019 KU Leuven, DTAI Research Group
"""
import sys
import time
from collections import namedtuple

import graphviz
from graphviz import Digraph
from ulearner import PrinterDefault

from problog.sdd_formula_explicit import x_constrained_named
from problog.program import PrologFile, PrologString
from problog.engine import DefaultEngine
from problog import get_evaluatable
from problog.evaluator import Semiring
from problog.logic import Term, Constant, Not
from problog.util import init_logger
from problog.sdd_formula import SDD
from problog.sdd_formula import x_constrained
from problog.formula import BaseFormula, LogicFormula

printer = PrinterDefault()

pn_weight = namedtuple('pos_neg_weight', 'p_weight, n_weight')

def main(argv):
    args = argparser().parse_args(argv)

    inputfile = args.inputfile
    init_logger(args.verbose)

    pl = PrologFile(inputfile)

    return map_task(pl, evaluatable_name='sddx')


def get_best_decision(db):
    engine = DefaultEngine(label_all=True, keep_order=True)
    utilities = dict(engine.query(db, Term('utility', None, None)))
    true_term = Term('true')
    pl_queries = [true_term]
    queries = set(pl_queries).union(set(utilities.keys()))
    # Ground as utilities
    lf = engine.ground_all(db, queries=queries)  # type: LogicFormula

    # Decisions
    decisions = []
    decision_term = Term("?")
    for _, n, type in lf:
        if type == 'atom' and n.probability == decision_term:  #TODO remove type == 'atom' ??
            decisions.append(n.name)

    # SDDX
    kc_class = get_evaluatable(name='sddx')
    var_constraint = x_constrained_named(X_named=decisions)
    starttime_compilation = time.time()
    kc = kc_class.create_from(lf, var_constraint=var_constraint)
    endtime_compilation = time.time()
    compile_time = endtime_compilation - starttime_compilation
    printer.print("Compilation took %s seconds." % compile_time)
    decision_dict = {kc.get_node_by_name(decision): decision for decision in decisions}
    decision_keys = {*decision_dict.keys()}
    semiring = SemiringMAXEU(decision_keys)

    # Fix weights
    starttime_weights = time.time()
    weights = _get_fixed_weights(kc, semiring, utilities, decisions, decision_keys)
    endtime_weights = time.time()
    weight_time = endtime_weights - starttime_weights
    printer.print("Fixing weights took %s seconds" % weight_time)
    #print("\nFixed weights: %s" % weights)

    # query True
    starttime_evaluation = time.time()
    results = {x: kc.evaluate(index=kc.get_node_by_name(x), semiring=semiring, weights=weights) for x in pl_queries}
    endtime_evaluation = time.time()
    evaluation_time = endtime_evaluation - starttime_evaluation
    printer.print("Circuit evaluation took %s seconds." % evaluation_time)

    # Map decision keys to terms
    temp_dict = dict()
    for key, term in decision_dict.items():
        if key == 0:
            temp_dict[key] = term
        elif not isinstance(term, Not):
            temp_dict[key] = term
            temp_dict[-key] = Not('not', term)
        elif isinstance(term, Not):
            temp_dict[key] = term
            temp_dict[-key] = term.args[0]
    decision_dict = temp_dict

    p, eu, d_set = results[true_term]
    d_dict = {decision_dict[abs(d_key)]: 1 if d_key >= 0 else 0 for d_key in d_set}
    runtime = evaluation_time + compile_time + weight_time
    size = kc.get_manager().get_manager().size()
    printer.print("Best decisions %s" % d_dict)
    printer.print("Expected utility %s" % eu)
    printer.print("Compile time %s" % compile_time)
    printer.print("Runtime %s" % runtime)
    return d_dict, eu, size, compile_time, runtime

    #for result_key in results:
    #    p, eu, d_set = results[result_key]
    #            d_set_new = {("" if d_key >= 0 else "-") + str(decision_dict[abs(d_key)]) for d_key in d_set}
    #    results[result_key] = (p, eu, d_set_new)
    #return results[true_term][2], results[true_term][1]


def map_task(pl: PrologString, evaluatable_name=None):
    """
    Compute the expected utility using the queries and model described by pl.

    :param pl: The PrologString to compute the expected utility of. Syntax: utility(attribute,utility). and ?::decision.
    :param evaluatable_name: The preferred evaluatable. e.g. 'ddnnf'. Beware: the SDD and BDD classes are using an
    encoding that can yield wrong results.
     :return: dict {name : (prob, expected_utility)}. The expected utility of a query is defined as the sum of the
         expected utilities of each world satisfying the query. The expected utility of a world is defined as the
         probability of the world multiplied with the sum of the utilities in that world.
     """
    engine = DefaultEngine(label_all=True, keep_order=True)
    db = engine.prepare(pl)
    return map_task_db(db, evaluatable_name)


def map_task_db(db, evaluatable_name=None):
    """
    Compute the expected utility using the queries and model described by pl.

    :param db: The database to compute the expected utility from.
    :param evaluatable_name: The preferred evaluatable. e.g. 'ddnnf'. Beware: the SDD and BDD classes are using an
    encoding that can yield wrong results.
     :return: dict {name : (prob, expected_utility)}. The expected utility of a query is defined as the sum of the
         expected utilities of each world satisfying the query. The expected utility of a world is defined as the
         probability of the world multiplied with the sum of the utilities in that world.
     """
    engine = DefaultEngine(label_all=True, keep_order=True)
    utilities = dict(engine.query(db, Term('utility', None, None)))
    pl_queries = [q[0] for q in engine.query(db, Term('query', None))]
    queries = set(pl_queries).union(set(utilities.keys()))
    # Ground as utilities
    lf = engine.ground_all(db, queries=queries)  # type: LogicFormula

    # Decisions
    decisions = []
    decision_term = Term("?")
    for _, n, type in lf:
        if type == 'atom' and n.probability == decision_term:  #TODO remove type == 'atom' ??
            decisions.append(n.name)

    #print.printer("decisions %s" % decisions)
    #print.printer("lf")
    #print.printer(lf)

    # SDD
    kc_class = get_evaluatable(name=evaluatable_name)
    var_constraint = x_constrained_named(X_named=decisions)
    starttime_compilation = time.time()
    kc = kc_class.create_from(lf, var_constraint=var_constraint)
    endtime_compilation = time.time()
    printer.print("Compilation took %s seconds." % (endtime_compilation - starttime_compilation))
    decision_dict = {kc.get_node_by_name(decision): decision for decision in decisions}
    decision_keys = {*decision_dict.keys()}
    semiring = SemiringMAXEU(decision_keys)

    # Fix weights
    starttime_weights = time.time()
    weights = _get_fixed_weights(kc, semiring, utilities, decisions, decision_keys)
    endtime_weights = time.time()
    printer.print("Fixing weights took %s seconds" % (endtime_weights - starttime_weights))
    printer.print("\nFixed weights: %s" % weights)

    # query True
    starttime_evaluation = time.time()
    results = {x: kc.evaluate(index=kc.get_node_by_name(x), semiring=semiring, weights=weights) for x in pl_queries}
    endtime_evaluation = time.time()
    printer.print("Circuit evaluation took %s seconds." % (endtime_evaluation - starttime_evaluation))

    # Map decision keys to decision names.
    for result_key in results:
        p, eu, d_set = results[result_key]
        d_set_new = {("" if d_key >= 0 else "-") + str(decision_dict[abs(d_key)]) for d_key in d_set}
        results[result_key] = (p, eu, d_set_new)

    printer.print("Results: %s\n" % results)

    view = False
    if view:
         #dot = kc.to_dot(use_internal=True)
        kc.get_manager().get_manager().garbage_collect() #.minimize()
        dot = kc.sdd_to_dot(node=None, litnamemap=True)
        b = graphviz.Source(dot)
        b.view()

    #print(kc.get_manager().get_manager())

    return results


def _get_fixed_weights(kc: BaseFormula, semiring: Semiring, utilities, decision_names, decision_keys):
    """
    Get the weights present in kc, adjusted with the weights provided in utilities.
    A weight for the 0 node is used to keep track of the costs for the utility variables which are always true.
    The negative weight of 0 is the relevant weight as the -0 weight will override the 0 weight.


    :param kc: The BaseFormula of which to retrieve existing weights.
    :param semiring: The semiring that will be used for evaluation.
    :param utilities: dict of type {name : external_weight} (external weights are those given to the semiring to get
        the value of.) The utility variables to adjust the weight of.
    :return: dict of type {name : external_weight} The weights of kc, adjusted with the weights of utilities.
        When both a positive and negative weight are specified, the problog.formula.pn_weight namedtuple is used.
    """
    current_weights = dict(kc.get_weights())
    current_weights[0] = pn_weight(Term('s', 1.0, Constant(0), set()), Term('s', 0.0, Constant(0), set()))

    printer.print("start decisions: %s" % decision_keys)
    printer.print('start utilities: %s' % utilities)

    for decision_key in decision_keys:
        # TODO: if key is None?
        abs_key = abs(decision_key)
        current_weights[abs_key] = pn_weight(Term('s', 1.0, Constant(0), {abs_key}), Term('s', 1.0, Constant(0), {-abs_key}))

    # Fill in current_weights: key -> weight
    for util in utilities:
        cost_cst = utilities[util]
        cost = utilities[util].compute_value()
        key = kc.get_node_by_name(util)

        if key is None:
            continue  # TODO Possible?
        else:
            current_weight = current_weights.get(abs(key))
            #if current_weight is None: # Indicator variable
            #    current_weight = pn_weight(Term('s', 1.0, Constant(0)), Term('s', 1.0, Constant(0)))

        l_set = {key} if abs(key) in decision_keys else set()
        l_set_opposite = {-key} if len(l_set) else set()

        if key == 0:  # True nodes, p_w = n_w because -0 will override 0.
            cur_pos_weight, neg_weight = current_weight
            new_cost = Constant(cur_pos_weight.args[1].compute_value() + cost)
            new_l_set = cur_pos_weight.args[2] | l_set
            new_pos_weight = Term('s', 1.0, new_cost, new_l_set)
            current_weights[key] = pn_weight(new_pos_weight, neg_weight)
        elif key > 0:
            if current_weight is True:
                pos_weight = Term('s', 1.0, cost_cst, l_set)
                neg_weight = Term('s', 1.0, Constant(0), l_set_opposite)
                current_weights[key] = pn_weight(pos_weight, neg_weight)
            elif isinstance(current_weight, Constant):
                pos_weight = Term('s', current_weight.compute_value(), cost_cst, l_set)
                neg_weight = Term('s', 1 - current_weight.compute_value(), Constant(0), l_set_opposite)
                current_weights[key] = pn_weight(pos_weight, neg_weight)
            elif isinstance(current_weight, Term):
                prob = current_weight.args[0].compute_value()
                new_cost = Constant(current_weight.args[1].compute_value() + cost)
                pos_weight = Term('s', prob, new_cost, l_set)
                neg_weight = Term('s', 1 - prob, Constant(0), l_set_opposite)
                current_weights[key] = pn_weight(pos_weight, neg_weight)
            elif isinstance(current_weight, pn_weight):
                pos_weight, neg_weight = current_weight
                pos_new_cost = Constant(pos_weight.args[1].compute_value() + cost)
                new_pos_weight = Term('s', pos_weight.args[0], pos_new_cost, pos_weight.args[2] | l_set)
                new_neg_weight = Term('s', neg_weight.args[0], neg_weight.args[1], neg_weight.args[2] | l_set_opposite)
                current_weights[key] = pn_weight(new_pos_weight, new_neg_weight)
        else:
            if current_weight is True:
                pos_weight = Term('s', 1.0, Constant(0), l_set_opposite)
                neg_weight = Term('s', 1.0, cost_cst, l_set)
                current_weights[abs(key)] = pn_weight(pos_weight, neg_weight)
            elif isinstance(current_weight, Constant):
                prob = current_weight.compute_value()
                neg_weight = Term('s', 1 - prob, cost_cst, l_set)
                pos_weight = Term('s', prob, Constant(0), l_set_opposite)
                current_weights[abs(key)] = pn_weight(pos_weight, neg_weight)
            elif isinstance(current_weight, Term):
                prob = current_weight.args[0].compute_value()
                new_cost = Constant(current_weight.args[1].compute_value() + cost)
                neg_weight = Term('s', 1 - prob, new_cost, l_set)  # TODO not sure if this is correct
                pos_weight = Term('s', prob, Constant(0), l_set_opposite)
                current_weights[abs(key)] = pn_weight(pos_weight, neg_weight)
            elif isinstance(current_weight, pn_weight):
                pos_weight, neg_weight = current_weight
                neg_new_cost = Constant(neg_weight.args[1].compute_value() + cost)
                new_neg_weight = Term('s', neg_weight.args[0], neg_new_cost, neg_weight.args[2] | l_set)
                new_pos_weight = Term('s', pos_weight.args[0], pos_weight.args[1], pos_weight.args[2] | l_set_opposite)
                current_weights[abs(key)] = pn_weight(new_pos_weight, new_neg_weight)

    printer.print("final current_weights %s" % current_weights)

    # Convert current_weights to util_name -> weight
    result = dict()
    for name in set(decision_names).union(utilities):
        key = kc.get_node_by_name(name)
        if key is not None:
            if key >= 0:
                result[name] = current_weights[key]
            else:
                value = current_weights[abs(key)]
                result[name] = pn_weight(value.n_weight, value.p_weight)

    return result


class SemiringMAXEU(Semiring):
    """
    A pseudo semiring to maximise the expected utility. It is only a semiring within an X-constrained setting.
    Each element of this semiring is a triple (prob, eu, decision_set) where the last element is used to keep track
    of the decisions made so far in this node. Evidently, a times will result in union. A plus results in choosing
    between different decision sets and thus a max-like operation.
    """
    # element = (prob, eu, decision_set)

    def __init__(self, decisions):
        """
        :param decisions: A set of all possible positive decision keys
        :type decisions: set[int]
        """
        Semiring.__init__(self)
        all_decisions = {-x for x in decisions}
        all_decisions |= decisions
        self.val_zero = (0.0, 0.0, all_decisions)
        self.zero_decision_length = len(all_decisions)

    def one(self):
        return 1.0, 0.0, set()

    def zero(self):
        return self.val_zero

    def is_one(self, value):
        p, eu, d = value
        return 1.0 - 1e-12 < p < 1.0 + 1e-12 and 1.0 - 1e-12 < eu < 1.0 + 1e-12 and len(d) == 0

    def is_zero(self, value):
        p, eu, d = value
        return -1e-12 < p < 1e-12 and -1e-12 < eu < 1e-12

    def plus(self, a, b):
        p_a, eu_a, d_a = a
        p_b, eu_b, d_b = b
        if len(d_a) or len(d_b):    # 'or' because of ad_complement which has empty decision set.
            if len(d_b) == self.zero_decision_length:  # avoid false
                result = a
            elif len(d_a) == self.zero_decision_length:  # avoid false
                result = b
            elif p_a == 0:
                result = b
            elif p_b == 0:
                result = a
            elif eu_a / p_a >= eu_b / p_b:     # check on eu
                result = a
            else:
                result = b
            #print("MAX a %s b %s = %s" % (a,b,result))
            return result
        else:
            result = p_a + p_b, eu_a + eu_b, set()
            #print("plus a %s b %s = %s" % (a, b, result))
            return result

    def times(self, a, b):
        p_a, eu_a, d_a = a
        p_b, eu_b, d_b = b
        eu_n = p_a * eu_b + p_b * eu_a
        result = p_a * p_b, eu_n, d_a.union(d_b)
        #print("times a %s b %s = %s" % (a, b, result))
        return result

    def normalize(self, a, z):
        p_a, eu_a, d_a = a
        p_z, eu_z, d_z = z
        # each world I has p(I) and eu(I) = p(I) * u(I).
        # Normalizing the probability of the world (p(I)/p(Z) results p(I) / p(Z) * u(I) = eu(I) / p(Z)
        # Since total result = Sum_I [p(I) * u(I)]
        #print("normaling %s with %s" % (a,z))
        return p_a / p_z, eu_a / p_z, d_a

    def negate(self, a):
        return 1 - a[0], 0, a[2]

    def value(self, a):
        if type(a) is Constant:
            return float(a), 0, set()
        elif type(a) is Term and a.functor == '?':
            return 1, 0, set()
        elif type(a) is Term:
            return float(a.args[0]), (float(a.args[0]) * float(a.args[1])), a.args[2]
        else:
            raise ValueError("Could not interpret %s during conversion from external to internal representation." % a)

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
        return 0.0 - 1e-9 <= a[0] <= 1.0 + 1e-9

    def to_evidence(self, pos_weight, neg_weight, sign):
        # Note: When eu = 0 because of p = 0 and now we set p = 1 then the eu can not be reconstructed and stays 0.
        p_p, p_eu, p_d = pos_weight
        n_p, n_eu, n_d = neg_weight

        if sign > 0:
            return pos_weight, (0.0, 0.0, n_d)
        else:
            return (0.0, 0.0, p_d), neg_weight


        # if sign > 0:
        #     if p_p == 0:  # normally does not happen because of inconsistentEvidenceError thrown before.
        #         return (1.0, 0.0, p_d), (0.0, 0.0, n_d)
        #     else:
        #         return (1.0, p_eu / p_p, p_d), (0.0, 0.0, n_d)  # positive weight rescaled to p=1
        # else:
        #     if n_p == 0:  # normally does not happen because of inconsistentEvidenceError thrown before.
        #         return (0.0, 0.0, p_d), (1.0, 0.0, n_d)
        #     else:
        #         return (0.0, 0.0, p_d), (1.0, n_eu / n_p, n_d)  # negative weight rescaled to p=1


    def ad_negate(self, pos_weight, neg_weight):
        p_p, p_eu, p_d = pos_weight
        n_p, n_eu, n_d = neg_weight

        neg_d = {-x for x in p_d}
        if n_p == 0:
            return 1.0, n_eu, neg_d  # TODO can this happen?
        else:
            return 1.0, n_eu / n_p, neg_d

    def ad_complement(self, ws, key=None):
        p, eu, d = ws[0]
        if len(d):
            return (0.0, 0.0, set())
        else: # normal p procedure + decision checks
            s = self.zero()
            for w in ws:
                if len(w[2]):
                    return None # Trigger InvalidValueError. Must not mix decisions and probabilities #TODO Redo compliment check. Have a is_valid_ad method which returns a tuple of True/False and a message. Deprecate in_domain?
                s = self.plus(s, w)
            return self.negate(s)


def kc_to_dot(kc):
    g = Digraph('G', filename='hello.gv')
    for i, n, t in kc:
        if t == 'conj':
            g.node(str(i), label='*')
            for j in n.children:
                if(j >= 0):
                    g.edge(str(i), str(j), dir='back')
                else:
                    g.edge(str(i), str(abs(j)), label=str(j), dir='back')

        elif t == 'disj':
            g.node(str(i), label='+')

            for j in n.children:
                if(j >= 0):
                    g.edge(str(i), str(j), dir='back')
                else:
                    g.edge(str(i), str(abs(j)), label=str(j), dir='back')

        elif t == 'atom':
            g.node(str(i), label=str(n.identifier) + ", " + str(n.name))

        else:
            print("i:" + str(i) + " " + str(n))
    g.view(cleanup=True)


def argparser():
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('inputfile')
    parser.add_argument('-o', '--output', type=str, default=None,
                        help='Write output to given file (default: write to stdout)')
    parser.add_argument('-v', '--verbose', action='count', help='Increase verbosity')
    return parser


if __name__ == '__main__':
    main(sys.argv[1:])