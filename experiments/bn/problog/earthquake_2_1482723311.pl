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
utility(util_node(0),-26).
var0 :- \+(util_node(0)).
utility(var0 , 20).
util_node(0) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(1),-8).
var1 :- \+(util_node(1)).
utility(var1 , -47).
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(2),3).
var2 :- \+(util_node(2)).
utility(var2 , 49).
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(3),-28).
var3 :- \+(util_node(3)).
utility(var3 , 35).
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(4),49).
var4 :- \+(util_node(4)).
utility(var4 , -40).
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
body_436(435,alarm) :- body_7(4,alarm).
body_444(443,alarm) :- body_19(15,alarm).
body_452(451,alarm) :- body_30(26,alarm).
body_460(459,alarm) :- body_42(37,alarm).
body_468(467,maryCalls) :- body_50(49,maryCalls).
body_476(475,maryCalls) :- body_60(58,maryCalls).
body_484(483,johnCalls) :- body_68(67,johnCalls).
body_492(491,johnCalls) :- body_78(76,johnCalls).
?::earthquake.
?::burglary.
0.95::alarm :- body_436(435,alarm).
0.94::alarm :- body_444(443,alarm).
0.29::alarm :- body_452(451,alarm).
0.001::alarm :- body_460(459,alarm).
0.7::maryCalls :- body_468(467,maryCalls).
0.01::maryCalls :- body_476(475,maryCalls).
0.9::johnCalls :- body_484(483,johnCalls).
0.05::johnCalls :- body_492(491,johnCalls).
