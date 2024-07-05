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
utility(util_node(0),-42).
var0 :- \+(util_node(0)).
utility(var0 , 25).
util_node(0) :- \+johnCalls, \+maryCalls, earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(1),45).
var1 :- \+(util_node(1)).
utility(var1 , -28).
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(2),-33).
var2 :- \+(util_node(2)).
utility(var2 , -1).
util_node(2) :- johnCalls, maryCalls, \+earthquake, alarm, burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(3),-48).
var3 :- \+(util_node(3)).
utility(var3 , -16).
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(4),38).
var4 :- \+(util_node(4)).
utility(var4 , 42).
util_node(4) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
body_430(429,alarm) :- body_7(4,alarm).
body_438(437,alarm) :- body_19(15,alarm).
body_446(445,alarm) :- body_30(26,alarm).
body_454(453,alarm) :- body_42(37,alarm).
body_462(461,maryCalls) :- body_50(49,maryCalls).
body_470(469,maryCalls) :- body_60(58,maryCalls).
body_478(477,johnCalls) :- body_68(67,johnCalls).
body_486(485,johnCalls) :- body_78(76,johnCalls).
?::earthquake.
?::burglary.
?::dec_2.
body_498(497,maryCalls) :- dec_2.
0.95::alarm :- body_430(429,alarm).
0.94::alarm :- body_438(437,alarm).
0.29::alarm :- body_446(445,alarm).
0.001::alarm :- body_454(453,alarm).
0.7::maryCalls :- body_462(461,maryCalls).
0.01::maryCalls :- body_470(469,maryCalls).
0.9::johnCalls :- body_478(477,johnCalls).
0.05::johnCalls :- body_486(485,johnCalls).
0.01::maryCalls :- body_498(497,maryCalls).
