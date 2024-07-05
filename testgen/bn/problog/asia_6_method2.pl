body_5(4,lung) :- smoke.
body_15(13,lung) :- \+smoke.
body_23(22,tub) :- asia.
body_33(31,tub) :- \+asia.
body_41(40,bronc) :- smoke.
body_51(49,bronc) :- \+smoke.
either :- lung, tub.
either :- lung, \+tub.
either :- \+lung, tub.
body_78(73,either) :- \+lung, \+tub.
body_86(85,xray) :- either.
body_96(94,xray) :- \+either.
body_106(103,dysp) :- bronc, either.
body_118(114,dysp) :- bronc, \+either.
body_129(125,dysp) :- \+bronc, either.
body_141(136,dysp) :- \+bronc, \+either.
query(either).
query(asia).
query(tub).
query(dysp).
query(bronc).
query(lung).
query(xray).
query(smoke).
utility(util_node(0),-20).
var0 :- \+(util_node(0)).
utility(var0 , 4).
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(1),-43).
var1 :- \+(util_node(1)).
utility(var1 , -9).
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, xray, \+smoke.
utility(util_node(2),10).
var2 :- \+(util_node(2)).
utility(var2 , -35).
util_node(2) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(3),-30).
var3 :- \+(util_node(3)).
utility(var3 , 42).
util_node(3) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
utility(util_node(4),-15).
var4 :- \+(util_node(4)).
utility(var4 , -39).
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- either, \+asia, tub, dysp, bronc, \+lung, xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
body_670(669,lung) :- body_5(4,lung).
body_678(677,lung) :- body_15(13,lung).
body_686(685,tub) :- body_23(22,tub).
body_694(693,tub) :- body_33(31,tub).
body_702(701,bronc) :- body_41(40,bronc).
body_710(709,bronc) :- body_51(49,bronc).
body_718(717,either) :- body_78(73,either).
body_726(725,xray) :- body_86(85,xray).
body_734(733,xray) :- body_96(94,xray).
body_742(741,dysp) :- body_106(103,dysp).
body_750(749,dysp) :- body_118(114,dysp).
body_758(757,dysp) :- body_129(125,dysp).
body_766(765,dysp) :- body_141(136,dysp).
?::asia.
?::smoke.
?::dec_2.
body_778(777,bronc) :- dec_2.
0.1::lung :- body_670(669,lung).
0.01::lung :- body_678(677,lung).
0.05::tub :- body_686(685,tub).
0.01::tub :- body_694(693,tub).
0.6::bronc :- body_702(701,bronc).
0.3::bronc :- body_710(709,bronc).
0.0::either :- body_718(717,either).
0.98::xray :- body_726(725,xray).
0.05::xray :- body_734(733,xray).
0.9::dysp :- body_742(741,dysp).
0.8::dysp :- body_750(749,dysp).
0.7::dysp :- body_758(757,dysp).
0.1::dysp :- body_766(765,dysp).
0.3::bronc :- body_778(777,bronc).
