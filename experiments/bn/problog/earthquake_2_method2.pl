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
utility(util_node(0),18).
var0 :- \+(util_node(0)).
utility(var0 , 7).
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(0) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(1),29).
var1 :- \+(util_node(1)).
utility(var1 , 0).
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(1) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(2),-32).
var2 :- \+(util_node(2)).
utility(var2 , 31).
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(2) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(3),22).
var3 :- \+(util_node(3)).
utility(var3 , 49).
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(3) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
utility(util_node(4),-39).
var4 :- \+(util_node(4)).
utility(var4 , -26).
util_node(4) :- \+johnCalls, maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, earthquake, \+alarm, \+burglary.
util_node(4) :- \+johnCalls, \+maryCalls, \+earthquake, \+alarm, \+burglary.
body_434(433,alarm) :- body_7(4,alarm).
body_442(441,alarm) :- body_19(15,alarm).
body_450(449,alarm) :- body_30(26,alarm).
body_458(457,alarm) :- body_42(37,alarm).
body_466(465,maryCalls) :- body_50(49,maryCalls).
body_474(473,maryCalls) :- body_60(58,maryCalls).
body_482(481,johnCalls) :- body_68(67,johnCalls).
body_490(489,johnCalls) :- body_78(76,johnCalls).
?::earthquake.
?::burglary.
?::dec_2.
body_502(501,johnCalls) :- dec_2.
0.95::alarm :- body_434(433,alarm).
0.94::alarm :- body_442(441,alarm).
0.29::alarm :- body_450(449,alarm).
0.001::alarm :- body_458(457,alarm).
0.7::maryCalls :- body_466(465,maryCalls).
0.01::maryCalls :- body_474(473,maryCalls).
0.9::johnCalls :- body_482(481,johnCalls).
0.05::johnCalls :- body_490(489,johnCalls).
0.9::johnCalls :- body_502(501,johnCalls).
