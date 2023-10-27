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
query(tub).
query(lung).
query(dysp).
query(xray).
query(bronc).
query(asia).
query(smoke).
query(either).
body_89(88,lung) :- body_5(4,lung).
body_97(96,lung) :- body_15(13,lung).
body_105(104,tub) :- body_23(22,tub).
body_113(112,tub) :- body_33(31,tub).
body_121(120,bronc) :- body_41(40,bronc).
body_129(128,bronc) :- body_51(49,bronc).
body_136(135,either) :- body_78(73,either).
body_144(143,xray) :- body_86(85,xray).
body_153(152,xray) :- body_96(94,xray).
body_161(160,dysp) :- body_106(103,dysp).
body_170(169,dysp) :- body_118(114,dysp).
body_178(177,dysp) :- body_129(125,dysp).
body_186(185,dysp) :- body_141(136,dysp).
?::asia.
?::smoke.
?::dec_2.
body_198(197,lung) :- dec_2.
?::dec_3.
body_208(207,tub) :- dec_3.
?::dec_4.
body_218(217,bronc) :- dec_4.
?::dec_5.
body_228(227,dysp) :- dec_5.
utility(lung,0).
var0 :- \+(lung).
utility(var0 , 42).
var1 :- \+(dysp).
utility(var1 , -43).
utility(xray,18).
var2 :- \+(bronc).
utility(var2 , -9).
utility(asia,20).
utility(smoke,45).
0.1::lung :- body_89(88,lung).
0.01::lung :- body_97(96,lung).
0.05::tub :- body_105(104,tub).
0.01::tub :- body_113(112,tub).
0.6::bronc :- body_121(120,bronc).
0.3::bronc :- body_129(128,bronc).
0.0::either :- body_136(135,either).
0.98::xray :- body_144(143,xray).
0.05::xray :- body_153(152,xray).
0.9::dysp :- body_161(160,dysp).
0.8::dysp :- body_170(169,dysp).
0.7::dysp :- body_178(177,dysp).
0.1::dysp :- body_186(185,dysp).
0.01::lung :- body_198(197,lung).
0.05::tub :- body_208(207,tub).
0.6::bronc :- body_218(217,bronc).
0.8::dysp :- body_228(227,dysp).
