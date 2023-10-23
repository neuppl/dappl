1 :: f1 .
0 :: f2 .
0.5 :: f3 .
0.0001 :: f4 .
0.0001 :: f5 .
r6 :- f1, not(f4), f3 .
r6 :- f2, not(f1), f3 .
r7 :- f1, not(f5), not(f3) .
r7 :- f2, not(f1), not(f3) .
0.5 :: f8 .
0.0001 :: f9 .
0.0001 :: f10 .
r11 :- r6, not(f9), f8 .
r11 :- r7, not(r6), f8 .
r12 :- r6, not(f10), not(f8) .
r12 :- r7, not(r6), not(f8) .
0.5 :: f13 .
0.0001 :: f14 .
0.0001 :: f15 .
r16 :- r11, not(f14), f13 .
r16 :- r12, not(r11), f13 .
r17 :- r11, not(f15), not(f13) .
r17 :- r12, not(r11), not(f13) .
0.5 :: f18 .
0.0001 :: f19 .
0.0001 :: f20 .
r21 :- r16, not(f19), f18 .
r21 :- r17, not(r16), f18 .
r22 :- r16, not(f20), not(f18) .
r22 :- r17, not(r16), not(f18) .
0.5 :: f23 .
0.0001 :: f24 .
0.0001 :: f25 .
r26 :- r21, not(f24), f23 .
r26 :- r22, not(r21), f23 .
r27 :- r21, not(f25), not(f23) .
r27 :- r22, not(r21), not(f23) .
0.5 :: f28 .
0.0001 :: f29 .
0.0001 :: f30 .
r31 :- r26, not(f29), f28 .
r31 :- r27, not(r26), f28 .
r32 :- r26, not(f30), not(f28) .
r32 :- r27, not(r26), not(f28) .
0.5 :: f33 .
0.0001 :: f34 .
0.0001 :: f35 .
r36 :- r31, not(f34), f33 .
r36 :- r32, not(r31), f33 .
r37 :- r31, not(f35), not(f33) .
r37 :- r32, not(r31), not(f33) .
r38 :- r36 .
r38 :- r37 .
evidence( r38 , false ).
? :: c50 .
? :: c49 .
? :: c48 .
? :: c47 .
? :: c46 .
? :: c45 .
? :: c44 .
? :: c43 .
? :: c42 .
? :: c41 .
? :: c40 .
? :: c39 .
r74 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(r6) .
utility( r74 , 46 ).
r73 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, r6 .
utility( r73 , 20 ).
r72 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(r7) .
utility( r72 , 43 ).
r71 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), r7 .
utility( r71 , 84 ).
r70 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(r11) .
utility( r70 , 70 ).
r69 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), r11 .
utility( r69 , 59 ).
r68 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(r12) .
utility( r68 , 99 ).
r67 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), r12 .
utility( r67 , 20 ).
r66 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(r16) .
utility( r66 , 63 ).
r65 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), r16 .
utility( r65 , 83 ).
r64 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(r17) .
utility( r64 , 60 ).
r63 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), r17 .
utility( r63 , 97 ).
r62 :- not(c39), not(c40), not(c41), not(c42), not(c43), c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(r21) .
utility( r62 , 97 ).
r61 :- not(c39), not(c40), not(c41), not(c42), not(c43), c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), r21 .
utility( r61 , 57 ).
r60 :- not(c39), not(c40), not(c41), not(c42), c43, not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(r22) .
utility( r60 , 11 ).
r59 :- not(c39), not(c40), not(c41), not(c42), c43, not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), r22 .
utility( r59 , 55 ).
r58 :- not(c39), not(c40), not(c41), c42, not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(r26) .
utility( r58 , 12 ).
r57 :- not(c39), not(c40), not(c41), c42, not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), r26 .
utility( r57 , 49 ).
r56 :- not(c39), not(c40), c41, not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(r27) .
utility( r56 , 70 ).
r55 :- not(c39), not(c40), c41, not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), r27 .
utility( r55 , 0 ).
r54 :- not(c39), c40, not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(r31) .
utility( r54 , 3 ).
r53 :- not(c39), c40, not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), r31 .
utility( r53 , 96 ).
r52 :- c39, not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(r32) .
utility( r52 , 44 ).
r51 :- c39, not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), r32 .
utility( r51 , 23 ).
query( c50 ).
query( c49 ).
query( c48 ).
query( c47 ).
query( c46 ).
query( c45 ).
query( c44 ).
query( c43 ).
query( c42 ).
query( c41 ).
query( c40 ).
query( c39 ).
