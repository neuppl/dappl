"""
By Vincent Derkinderen (DTAI lab KU Leuven, 2019)

A special Term used in LFI of which the value can dynamically change (e.g. a utility value learned so far).
"""
from problog.logic import Term


class LfiTerm(Term):
    """
    A term that dynamically obtains it value from some source using an index. This can for example be used in learning
    where the value to which this term refers changes over time, also changing the value of this term.
    """

    def __init__(self, value_source, value_index, **kwdargs):
        """
        A Term of which the value is decided by looking up value_source[value_index].
        :param value_source: A list of values of which this term is pointing to index value_index.
        :param value_index: The key or index to retrieve the value from value_source as value_source[value_index]
        :param kwdargs: additional arguments for the superclass Term
        """
        Term.__init__(self, 't', **kwdargs)
        self.value_source = value_source
        self.value_index = value_index

    def compute_value(self, functions=None):
        return self.value_source[self.value_index]

    def __repr__(self):
        self.repr = 't(%s, %s)' % (self.value_index, self.value_source)
        self.reprhash = hash(self.repr)
        return self.repr