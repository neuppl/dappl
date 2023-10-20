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
utility(util_node(0),-7).
var0 :- \+(util_node(0)).
utility(var0 , -30).
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(1),27).
var1 :- \+(util_node(1)).
utility(var1 , 40).
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(2),49).
var2 :- \+(util_node(2)).
utility(var2 , -25).
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(3),-13).
var3 :- \+(util_node(3)).
utility(var3 , -42).
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(4),-22).
var4 :- \+(util_node(4)).
utility(var4 , -2).
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
body_437(436,alarm) :- body_7(4,alarm).
body_445(444,alarm) :- body_19(15,alarm).
body_453(452,alarm) :- body_30(26,alarm).
body_461(460,alarm) :- body_42(37,alarm).
body_469(468,maryCalls) :- body_50(49,maryCalls).
body_477(476,maryCalls) :- body_60(58,maryCalls).
body_485(484,johnCalls) :- body_68(67,johnCalls).
body_493(492,johnCalls) :- body_78(76,johnCalls).
?::earthquake.
?::burglary.
?::dec_2.
body_505(504,johnCalls) :- dec_2.
0.95::alarm :- body_437(436,alarm).
0.94::alarm :- body_445(444,alarm).
0.29::alarm :- body_453(452,alarm).
0.001::alarm :- body_461(460,alarm).
0.7::maryCalls :- body_469(468,maryCalls).
0.01::maryCalls :- body_477(476,maryCalls).
0.9::johnCalls :- body_485(484,johnCalls).
0.05::johnCalls :- body_493(492,johnCalls).
0.05::johnCalls :- body_505(504,johnCalls).
