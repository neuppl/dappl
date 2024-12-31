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
utility(util_node(0),-42).
var0 :- \+(util_node(0)).
utility(var0 , 25).
util_node(0) :- either, \+asia, \+tub, \+dysp, \+bronc, lung, xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, \+smoke.
utility(util_node(1),-3).
var1 :- \+(util_node(1)).
utility(var1 , 28).
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, xray, smoke.
utility(util_node(2),-11).
var2 :- \+(util_node(2)).
utility(var2 , -14).
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(3),39).
var3 :- \+(util_node(3)).
utility(var3 , -47).
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(4),-27).
var4 :- \+(util_node(4)).
utility(var4 , -47).
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
body_674(673,lung) :- body_5(4,lung).
body_682(681,lung) :- body_15(13,lung).
body_690(689,tub) :- body_23(22,tub).
body_698(697,tub) :- body_33(31,tub).
body_706(705,bronc) :- body_41(40,bronc).
body_714(713,bronc) :- body_51(49,bronc).
body_722(721,either) :- body_78(73,either).
body_730(729,xray) :- body_86(85,xray).
body_738(737,xray) :- body_96(94,xray).
body_746(745,dysp) :- body_106(103,dysp).
body_754(753,dysp) :- body_118(114,dysp).
body_762(761,dysp) :- body_129(125,dysp).
body_770(769,dysp) :- body_141(136,dysp).
?::asia.
?::smoke.
0.1::lung :- body_674(673,lung).
0.01::lung :- body_682(681,lung).
0.05::tub :- body_690(689,tub).
0.01::tub :- body_698(697,tub).
0.6::bronc :- body_706(705,bronc).
0.3::bronc :- body_714(713,bronc).
0.0::either :- body_722(721,either).
0.98::xray :- body_730(729,xray).
0.05::xray :- body_738(737,xray).
0.9::dysp :- body_746(745,dysp).
0.8::dysp :- body_754(753,dysp).
0.7::dysp :- body_762(761,dysp).
0.1::dysp :- body_770(769,dysp).
