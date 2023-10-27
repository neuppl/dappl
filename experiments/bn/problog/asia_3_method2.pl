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
utility(util_node(0),20).
var0 :- \+(util_node(0)).
utility(var0 , -43).
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(0) :- either, \+asia, \+tub, dysp, \+bronc, lung, xray, smoke.
utility(util_node(1),9).
var1 :- \+(util_node(1)).
utility(var1 , 23).
util_node(1) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(2),25).
var2 :- \+(util_node(2)).
utility(var2 , 14).
util_node(2) :- either, \+asia, \+tub, dysp, \+bronc, lung, xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(3),22).
var3 :- \+(util_node(3)).
utility(var3 , -11).
util_node(3) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
utility(util_node(4),-9).
var4 :- \+(util_node(4)).
utility(var4 , 24).
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, xray, smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
body_660(659,lung) :- body_5(4,lung).
body_668(667,lung) :- body_15(13,lung).
body_676(675,tub) :- body_23(22,tub).
body_684(683,tub) :- body_33(31,tub).
body_692(691,bronc) :- body_41(40,bronc).
body_700(699,bronc) :- body_51(49,bronc).
body_708(707,either) :- body_78(73,either).
body_716(715,xray) :- body_86(85,xray).
body_724(723,xray) :- body_96(94,xray).
body_732(731,dysp) :- body_106(103,dysp).
body_740(739,dysp) :- body_118(114,dysp).
body_748(747,dysp) :- body_129(125,dysp).
body_756(755,dysp) :- body_141(136,dysp).
?::asia.
?::smoke.
?::dec_2.
body_768(767,xray) :- dec_2.
?::dec_3.
body_778(777,dysp) :- dec_3.
0.1::lung :- body_660(659,lung).
0.01::lung :- body_668(667,lung).
0.05::tub :- body_676(675,tub).
0.01::tub :- body_684(683,tub).
0.6::bronc :- body_692(691,bronc).
0.3::bronc :- body_700(699,bronc).
0.0::either :- body_708(707,either).
0.98::xray :- body_716(715,xray).
0.05::xray :- body_724(723,xray).
0.9::dysp :- body_732(731,dysp).
0.8::dysp :- body_740(739,dysp).
0.7::dysp :- body_748(747,dysp).
0.1::dysp :- body_756(755,dysp).
0.98::xray :- body_768(767,xray).
0.7::dysp :- body_778(777,dysp).
