from experiments.bn import bn
from experiments.dr import dr
from experiments.ladder import ladder_long, ladder
from experiments.gridworld import gridworld

# # Bayesian network experiments
# bn(5)
# # Diminishing returns experiments
# dr(10)
# # One-shot ladder experiments
# ladder_long(4)
# # k-Shot ladder experiments
# ladder(3)
# Gridworld experiments
gridworld(5, 5, 4, 5)
