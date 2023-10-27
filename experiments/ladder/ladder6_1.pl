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
r33 :- r31 .
r33 :- r32 .
evidence( r33 , false ).
? :: c45 .
? :: c44 .
? :: c43 .
? :: c42 .
? :: c41 .
? :: c40 .
? :: c39 .
? :: c38 .
? :: c37 .
? :: c36 .
? :: c35 .
? :: c34 .
r47 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), c45, not(r6) .
utility( r47 , 44 ).
r46 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), c45, r6 .
utility( r46 , 23 ).
r49 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), c44, not(c45), not(r7) .
utility( r49 , 3 ).
r48 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), c44, not(c45), r7 .
utility( r48 , 96 ).
r51 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), c43, not(c44), not(c45), not(r11) .
utility( r51 , 70 ).
r50 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), c43, not(c44), not(c45), r11 .
utility( r50 , 0 ).
r53 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), c42, not(c43), not(c44), not(c45), not(r12) .
utility( r53 , 12 ).
r52 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), c42, not(c43), not(c44), not(c45), r12 .
utility( r52 , 49 ).
r55 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), c41, not(c42), not(c43), not(c44), not(c45), not(r16) .
utility( r55 , 11 ).
r54 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), c41, not(c42), not(c43), not(c44), not(c45), r16 .
utility( r54 , 55 ).
r57 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), c40, not(c41), not(c42), not(c43), not(c44), not(c45), not(r17) .
utility( r57 , 97 ).
r56 :- not(c34), not(c35), not(c36), not(c37), not(c38), not(c39), c40, not(c41), not(c42), not(c43), not(c44), not(c45), r17 .
utility( r56 , 57 ).
r59 :- not(c34), not(c35), not(c36), not(c37), not(c38), c39, not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(r21) .
utility( r59 , 60 ).
r58 :- not(c34), not(c35), not(c36), not(c37), not(c38), c39, not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), r21 .
utility( r58 , 97 ).
r61 :- not(c34), not(c35), not(c36), not(c37), c38, not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(r22) .
utility( r61 , 63 ).
r60 :- not(c34), not(c35), not(c36), not(c37), c38, not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), r22 .
utility( r60 , 83 ).
r63 :- not(c34), not(c35), not(c36), c37, not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(r26) .
utility( r63 , 99 ).
r62 :- not(c34), not(c35), not(c36), c37, not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), r26 .
utility( r62 , 20 ).
r65 :- not(c34), not(c35), c36, not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(r27) .
utility( r65 , 70 ).
r64 :- not(c34), not(c35), c36, not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), r27 .
utility( r64 , 59 ).
r67 :- not(c34), c35, not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(r31) .
utility( r67 , 43 ).
r66 :- not(c34), c35, not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), r31 .
utility( r66 , 84 ).
r69 :- c34, not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), not(r32) .
utility( r69 , 46 ).
r68 :- c34, not(c35), not(c36), not(c37), not(c38), not(c39), not(c40), not(c41), not(c42), not(c43), not(c44), not(c45), r32 .
utility( r68 , 20 ).
query( c45 ).
query( c44 ).
query( c43 ).
query( c42 ).
query( c41 ).
query( c40 ).
query( c39 ).
query( c38 ).
query( c37 ).
query( c36 ).
query( c35 ).
query( c34 ).
