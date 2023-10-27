1.0 :: f1 .
0.0 :: f2 .
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
? :: c52 .
? :: c51 .
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
r54 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, not(r6) .
utility( r54 , 70 ).
r53 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, r6 .
utility( r53 , 0 ).
r56 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), not(r7) .
utility( r56 , 12 ).
r55 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), r7 .
utility( r55 , 49 ).
r58 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), not(r11) .
utility( r58 , 11 ).
r57 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), r11 .
utility( r57 , 55 ).
r60 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), not(r12) .
utility( r60 , 97 ).
r59 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), r12 .
utility( r59 , 57 ).
r62 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), not(r16) .
utility( r62 , 60 ).
r61 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), r16 .
utility( r61 , 97 ).
r64 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), not(r17) .
utility( r64 , 63 ).
r63 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), r17 .
utility( r63 , 83 ).
r66 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r21) .
utility( r66 , 99 ).
r65 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r21 .
utility( r65 , 20 ).
r68 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r22) .
utility( r68 , 70 ).
r67 :- not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r22 .
utility( r67 , 59 ).
r70 :- not(c39), not(c40), not(c41), not(c42), not(c43), c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r26) .
utility( r70 , 43 ).
r69 :- not(c39), not(c40), not(c41), not(c42), not(c43), c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r26 .
utility( r69 , 84 ).
r72 :- not(c39), not(c40), not(c41), not(c42), c43, not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r27) .
utility( r72 , 46 ).
r71 :- not(c39), not(c40), not(c41), not(c42), c43, not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r27 .
utility( r71 , 20 ).
r74 :- not(c39), not(c40), not(c41), c42, not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r31) .
utility( r74 , 18 ).
r73 :- not(c39), not(c40), not(c41), c42, not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r31 .
utility( r73 , 54 ).
r76 :- not(c39), not(c40), c41, not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r32) .
utility( r76 , 58 ).
r75 :- not(c39), not(c40), c41, not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r32 .
utility( r75 , 88 ).
r78 :- not(c39), c40, not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r36) .
utility( r78 , 51 ).
r77 :- not(c39), c40, not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r36 .
utility( r77 , 24 ).
r80 :- c39, not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r37) .
utility( r80 , 69 ).
r79 :- c39, not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r37 .
utility( r79 , 9 ).
query( c52 ).
query( c51 ).
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
