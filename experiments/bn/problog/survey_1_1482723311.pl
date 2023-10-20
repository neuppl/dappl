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
query(s("F")).
query(e("high")).
query(o("emp")).
query(a("old")).
query(r("small")).
query(r("big")).
query(o("self")).
query(t("train")).
query(t("other")).
query(e("uni")).
query(t("car")).
query(s("M")).
query(a("young")).
query(a("adult")).
body_86(85,multi) :- body_1(0,multi).
body_104(103,multi) :- body_36(33,multi).
body_117(116,multi) :- body_52(49,multi).
body_130(129,multi) :- body_67(64,multi).
body_143(142,multi) :- body_82(79,multi).
body_156(155,multi) :- body_97(94,multi).
body_169(168,multi) :- body_112(109,multi).
body_182(181,multi) :- body_125(124,multi).
body_195(194,multi) :- body_139(138,multi).
body_208(207,multi) :- body_152(151,multi).
body_221(220,multi) :- body_166(165,multi).
body_234(233,multi) :- body_181(178,multi).
body_253(252,multi) :- body_202(199,multi).
body_271(270,multi) :- body_222(219,multi).
body_289(288,multi) :- body_242(239,multi).
?::dec_0.
body_309(308,s("M")) :- dec_0.
body_318(316,s("F")) :- \+dec_0.
?::dec_1.
body_328(327,r("small")) :- dec_1.
?::dec_2.
body_338(337,t("other")) :- dec_2.
utility(s("F"),36).
utility(e("high"),-6).
var0 :- \+(o("emp")).
utility(var0 , -27).
utility(a("old"),7).
var1 :- \+(a("old")).
utility(var1 , 44).
var2 :- \+(r("small")).
utility(var2 , -27).
var3 :- \+(r("big")).
utility(var3 , 32).
utility(o("self"),2).
utility(t("train"),39).
var4 :- \+(t("other")).
utility(var4 , -10).
utility(e("uni"),18).
utility(t("car"),33).
var5 :- \+(t("car")).
utility(var5 , 6).
utility(s("M"),-20).
utility(a("young"),12).
var6 :- \+(a("young")).
utility(var6 , 2).
utility(a("adult"),-28).
0.3::a("young"); 0.5::a("adult"); 0.2::a("old") :- body_86(85,multi).
0.75::e("high"); 0.25::e("uni") :- body_104(103,multi).
0.64::e("high"); 0.36::e("uni") :- body_117(116,multi).
0.72::e("high"); 0.28::e("uni") :- body_130(129,multi).
0.7::e("high"); 0.3::e("uni") :- body_143(142,multi).
0.88::e("high"); 0.12::e("uni") :- body_156(155,multi).
0.9::e("high"); 0.1::e("uni") :- body_169(168,multi).
0.96::o("emp"); 0.04::o("self") :- body_182(181,multi).
0.92::o("emp"); 0.08::o("self") :- body_195(194,multi).
0.25::r("small"); 0.75::r("big") :- body_208(207,multi).
0.2::r("small"); 0.8::r("big") :- body_221(220,multi).
0.48::t("car"); 0.42::t("train"); 0.1::t("other") :- body_234(233,multi).
0.58::t("car"); 0.24::t("train"); 0.18::t("other") :- body_253(252,multi).
0.56::t("car"); 0.36::t("train"); 0.08::t("other") :- body_271(270,multi).
0.7::t("car"); 0.21::t("train"); 0.09::t("other") :- body_289(288,multi).
0.6::s("M") :- body_309(308,s("M")).
0.4::s("F") :- body_318(316,s("F")).
0.25::r("small") :- body_328(327,r("small")).
0.18::t("other") :- body_338(337,t("other")).
