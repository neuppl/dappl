body_7(4,alarm) :- burglary, earthquake.
body_19(15,alarm) :- burglary, \+earthquake.
body_30(26,alarm) :- \+burglary, earthquake.
body_42(37,alarm) :- \+burglary, \+earthquake.
body_50(49,maryCalls) :- alarm.
body_60(58,maryCalls) :- \+alarm.
body_68(67,johnCalls) :- alarm.
body_78(76,johnCalls) :- \+alarm.
query(johnCalls).
query(maryCalls).
query(earthquake).
query(alarm).
query(burglary).
utility(util_node(0),-20).
var0 :- \+(util_node(0)).
utility(var0 , 4).
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(1),15).
var1 :- \+(util_node(1)).
utility(var1 , 44).
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(2),47).
var2 :- \+(util_node(2)).
utility(var2 , 26).
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- johnCalls, maryCalls, \+earthquake, alarm, burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(3),-45).
var3 :- \+(util_node(3)).
utility(var3 , 44).
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(4),-13).
var4 :- \+(util_node(4)).
utility(var4 , -47).
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
body_432(431,alarm) :- body_7(4,alarm).
body_440(439,alarm) :- body_19(15,alarm).
body_448(447,alarm) :- body_30(26,alarm).
body_456(455,alarm) :- body_42(37,alarm).
body_464(463,maryCalls) :- body_50(49,maryCalls).
body_472(471,maryCalls) :- body_60(58,maryCalls).
body_480(479,johnCalls) :- body_68(67,johnCalls).
body_488(487,johnCalls) :- body_78(76,johnCalls).
?::earthquake.
?::burglary.
0.95::alarm :- body_432(431,alarm).
0.94::alarm :- body_440(439,alarm).
0.29::alarm :- body_448(447,alarm).
0.001::alarm :- body_456(455,alarm).
0.7::maryCalls :- body_464(463,maryCalls).
0.01::maryCalls :- body_472(471,maryCalls).
0.9::johnCalls :- body_480(479,johnCalls).
0.05::johnCalls :- body_488(487,johnCalls).
