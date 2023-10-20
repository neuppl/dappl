body_1(0,multi) :- true.
body_36(33,multi) :- a("young"), s("M").
body_52(49,multi) :- a("young"), s("F").
body_67(64,multi) :- a("adult"), s("M").
body_82(79,multi) :- a("adult"), s("F").
body_97(94,multi) :- a("old"), s("M").
body_112(109,multi) :- a("old"), s("F").
body_125(124,multi) :- e("high").
body_139(138,multi) :- e("uni").
body_152(151,multi) :- e("high").
body_166(165,multi) :- e("uni").
body_181(178,multi) :- o("emp"), r("small").
body_202(199,multi) :- o("emp"), r("big").
body_222(219,multi) :- o("self"), r("small").
body_242(239,multi) :- o("self"), r("big").
query(r("small")).
query(t("other")).
query(a("old")).
query(t("train")).
query(a("young")).
query(r("big")).
query(e("high")).
query(e("uni")).
query(t("car")).
query(o("emp")).
query(o("self")).
query(s("M")).
query(s("F")).
query(a("adult")).
utility(util_node(0),-35).
var0 :- \+(util_node(0)).
utility(var0 , 15).
util_node(0) :- \+r("small"), \+t("other"), a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
util_node(0) :- \+r("small"), \+t("other"), \+a("old"), t("train"), \+a("young"), r("big"), \+e("high"), e("uni"), \+t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), a("adult").
util_node(0) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), r("big"), \+e("high"), e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
util_node(0) :- \+r("small"), \+t("other"), \+a("old"), t("train"), a("young"), r("big"), e("high"), \+e("uni"), \+t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
util_node(0) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
utility(util_node(1),-41).
var1 :- \+(util_node(1)).
utility(var1 , -28).
util_node(1) :- \+r("small"), \+t("other"), a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
util_node(1) :- \+r("small"), t("other"), \+a("old"), \+t("train"), \+a("young"), r("big"), \+e("high"), e("uni"), \+t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), a("adult").
util_node(1) :- r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), \+r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
util_node(1) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), \+a("young"), r("big"), \+e("high"), e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), a("adult").
util_node(1) :- r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), \+r("big"), \+e("high"), e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
utility(util_node(2),44).
var2 :- \+(util_node(2)).
utility(var2 , -22).
util_node(2) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
util_node(2) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), r("big"), e("high"), \+e("uni"), t("car"), \+o("emp"), o("self"), s("M"), \+s("F"), \+a("adult").
util_node(2) :- \+r("small"), t("other"), \+a("old"), \+t("train"), a("young"), r("big"), e("high"), \+e("uni"), \+t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
util_node(2) :- \+r("small"), \+t("other"), a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
util_node(2) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
utility(util_node(3),37).
var3 :- \+(util_node(3)).
utility(var3 , -35).
util_node(3) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), \+a("young"), r("big"), \+e("high"), e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), a("adult").
util_node(3) :- \+r("small"), \+t("other"), a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
util_node(3) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), t("car"), \+o("emp"), o("self"), \+s("M"), s("F"), a("adult").
util_node(3) :- \+r("small"), \+t("other"), a("old"), t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), \+t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
util_node(3) :- \+r("small"), t("other"), a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), \+t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
utility(util_node(4),36).
var4 :- \+(util_node(4)).
utility(var4 , 43).
util_node(4) :- \+r("small"), \+t("other"), \+a("old"), t("train"), \+a("young"), r("big"), \+e("high"), e("uni"), \+t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), a("adult").
util_node(4) :- \+r("small"), \+t("other"), \+a("old"), \+t("train"), a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
util_node(4) :- \+r("small"), \+t("other"), \+a("old"), t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), \+t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), a("adult").
util_node(4) :- \+r("small"), \+t("other"), a("old"), \+t("train"), \+a("young"), r("big"), e("high"), \+e("uni"), t("car"), o("emp"), \+o("self"), \+s("M"), s("F"), \+a("adult").
util_node(4) :- \+r("small"), \+t("other"), \+a("old"), t("train"), a("young"), r("big"), \+e("high"), e("uni"), \+t("car"), o("emp"), \+o("self"), s("M"), \+s("F"), \+a("adult").
body_999(998,multi) :- body_1(0,multi).
body_1017(1016,multi) :- body_36(33,multi).
body_1030(1029,multi) :- body_52(49,multi).
body_1043(1042,multi) :- body_67(64,multi).
body_1056(1055,multi) :- body_82(79,multi).
body_1069(1068,multi) :- body_97(94,multi).
body_1082(1081,multi) :- body_112(109,multi).
body_1095(1094,multi) :- body_125(124,multi).
body_1108(1107,multi) :- body_139(138,multi).
body_1121(1120,multi) :- body_152(151,multi).
body_1134(1133,multi) :- body_166(165,multi).
body_1147(1146,multi) :- body_181(178,multi).
body_1165(1164,multi) :- body_202(199,multi).
body_1183(1182,multi) :- body_222(219,multi).
body_1201(1200,multi) :- body_242(239,multi).
?::dec_0.
body_1221(1220,s("M")) :- dec_0.
body_1230(1228,s("F")) :- \+dec_0.
?::dec_1.
body_1240(1239,e("high")) :- dec_1.
0.3::a("young"); 0.5::a("adult"); 0.2::a("old") :- body_999(998,multi).
0.75::e("high"); 0.25::e("uni") :- body_1017(1016,multi).
0.64::e("high"); 0.36::e("uni") :- body_1030(1029,multi).
0.72::e("high"); 0.28::e("uni") :- body_1043(1042,multi).
0.7::e("high"); 0.3::e("uni") :- body_1056(1055,multi).
0.88::e("high"); 0.12::e("uni") :- body_1069(1068,multi).
0.9::e("high"); 0.1::e("uni") :- body_1082(1081,multi).
0.96::o("emp"); 0.04::o("self") :- body_1095(1094,multi).
0.92::o("emp"); 0.08::o("self") :- body_1108(1107,multi).
0.25::r("small"); 0.75::r("big") :- body_1121(1120,multi).
0.2::r("small"); 0.8::r("big") :- body_1134(1133,multi).
0.48::t("car"); 0.42::t("train"); 0.1::t("other") :- body_1147(1146,multi).
0.58::t("car"); 0.24::t("train"); 0.18::t("other") :- body_1165(1164,multi).
0.56::t("car"); 0.36::t("train"); 0.08::t("other") :- body_1183(1182,multi).
0.7::t("car"); 0.21::t("train"); 0.09::t("other") :- body_1201(1200,multi).
0.6::s("M") :- body_1221(1220,s("M")).
0.4::s("F") :- body_1230(1228,s("F")).
0.7::e("high") :- body_1240(1239,e("high")).
