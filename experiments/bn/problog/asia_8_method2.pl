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
utility(util_node(0),-7).
var0 :- \+(util_node(0)).
utility(var0 , -30).
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(1),46).
var1 :- \+(util_node(1)).
utility(var1 , 9).
util_node(1) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
utility(util_node(2),12).
var2 :- \+(util_node(2)).
utility(var2 , 34).
util_node(2) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
utility(util_node(3),-14).
var3 :- \+(util_node(3)).
utility(var3 , 7).
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
utility(util_node(4),49).
var4 :- \+(util_node(4)).
utility(var4 , 6).
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, xray, smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- either, asia, tub, dysp, \+bronc, \+lung, xray, \+smoke.
body_665(664,lung) :- body_5(4,lung).
body_673(672,lung) :- body_15(13,lung).
body_681(680,tub) :- body_23(22,tub).
body_689(688,tub) :- body_33(31,tub).
body_697(696,bronc) :- body_41(40,bronc).
body_705(704,bronc) :- body_51(49,bronc).
body_713(712,either) :- body_78(73,either).
body_721(720,xray) :- body_86(85,xray).
body_729(728,xray) :- body_96(94,xray).
body_737(736,dysp) :- body_106(103,dysp).
body_745(744,dysp) :- body_118(114,dysp).
body_753(752,dysp) :- body_129(125,dysp).
body_761(760,dysp) :- body_141(136,dysp).
?::asia.
?::smoke.
?::dec_2.
body_773(772,tub) :- dec_2.
?::dec_3.
body_783(782,bronc) :- dec_3.
0.1::lung :- body_665(664,lung).
0.01::lung :- body_673(672,lung).
0.05::tub :- body_681(680,tub).
0.01::tub :- body_689(688,tub).
0.6::bronc :- body_697(696,bronc).
0.3::bronc :- body_705(704,bronc).
0.0::either :- body_713(712,either).
0.98::xray :- body_721(720,xray).
0.05::xray :- body_729(728,xray).
0.9::dysp :- body_737(736,dysp).
0.8::dysp :- body_745(744,dysp).
0.7::dysp :- body_753(752,dysp).
0.1::dysp :- body_761(760,dysp).
0.01::tub :- body_773(772,tub).
0.6::bronc :- body_783(782,bronc).
