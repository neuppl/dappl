from experiments.bn import bn
from experiments.dr import dr
from experiments.ladder import ladder_long, ladder

# Bayesian network experiments
# bn(5)
# Diminishing returns experiments
# dr(10)
# One-shot ladder experiments
ladder_long(4)
# k-Shot ladder experiments
ladder(3)
