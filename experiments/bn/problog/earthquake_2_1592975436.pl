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
utility(util_node(0),-35).
var0 :- \+(util_node(0)).
utility(var0 , 15).
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(1),41).
var1 :- \+(util_node(1)).
utility(var1 , -41).
util_node(1) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- johnCalls, \+maryCalls, \+earthquake, alarm, burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(2),40).
var2 :- \+(util_node(2)).
utility(var2 , -2).
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(3),0).
var3 :- \+(util_node(3)).
utility(var3 , 8).
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(4),42).
var4 :- \+(util_node(4)).
utility(var4 , 18).
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
body_431(430,alarm) :- body_7(4,alarm).
body_439(438,alarm) :- body_19(15,alarm).
body_447(446,alarm) :- body_30(26,alarm).
body_455(454,alarm) :- body_42(37,alarm).
body_463(462,maryCalls) :- body_50(49,maryCalls).
body_471(470,maryCalls) :- body_60(58,maryCalls).
body_479(478,johnCalls) :- body_68(67,johnCalls).
body_487(486,johnCalls) :- body_78(76,johnCalls).
?::earthquake.
?::burglary.
?::dec_2.
body_499(498,maryCalls) :- dec_2.
0.95::alarm :- body_431(430,alarm).
0.94::alarm :- body_439(438,alarm).
0.29::alarm :- body_447(446,alarm).
0.001::alarm :- body_455(454,alarm).
0.7::maryCalls :- body_463(462,maryCalls).
0.01::maryCalls :- body_471(470,maryCalls).
0.9::johnCalls :- body_479(478,johnCalls).
0.05::johnCalls :- body_487(486,johnCalls).
0.01::maryCalls :- body_499(498,maryCalls).
