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
r28 :- r26 .
r28 :- r27 .
evidence( r28 , false ).
? :: c36 .
? :: c35 .
? :: c34 .
? :: c33 .
? :: c32 .
? :: c31 .
? :: c30 .
? :: c29 .
r52 :- not(c29), not(c30), not(c31), not(c32), not(c33), not(c34), not(c35), c36, not(r6) .
utility( r52 , 12 ).
r51 :- not(c29), not(c30), not(c31), not(c32), not(c33), not(c34), not(c35), c36, r6 .
utility( r51 , 49 ).
r50 :- not(c29), not(c30), not(c31), not(c32), not(c33), not(c34), c35, not(c36), not(r7) .
utility( r50 , 70 ).
r49 :- not(c29), not(c30), not(c31), not(c32), not(c33), not(c34), c35, not(c36), r7 .
utility( r49 , 0 ).
r48 :- not(c29), not(c30), not(c31), not(c32), not(c33), c34, not(c35), not(c36), not(r11) .
utility( r48 , 3 ).
r47 :- not(c29), not(c30), not(c31), not(c32), not(c33), c34, not(c35), not(c36), r11 .
utility( r47 , 96 ).
r46 :- not(c29), not(c30), not(c31), not(c32), c33, not(c34), not(c35), not(c36), not(r12) .
utility( r46 , 44 ).
r45 :- not(c29), not(c30), not(c31), not(c32), c33, not(c34), not(c35), not(c36), r12 .
utility( r45 , 23 ).
r44 :- not(c29), not(c30), not(c31), c32, not(c33), not(c34), not(c35), not(c36), not(r16) .
utility( r44 , 23 ).
r43 :- not(c29), not(c30), not(c31), c32, not(c33), not(c34), not(c35), not(c36), r16 .
utility( r43 , 14 ).
r42 :- not(c29), not(c30), c31, not(c32), not(c33), not(c34), not(c35), not(c36), not(r17) .
utility( r42 , 93 ).
r41 :- not(c29), not(c30), c31, not(c32), not(c33), not(c34), not(c35), not(c36), r17 .
utility( r41 , 89 ).
r40 :- not(c29), c30, not(c31), not(c32), not(c33), not(c34), not(c35), not(c36), not(r21) .
utility( r40 , 69 ).
r39 :- not(c29), c30, not(c31), not(c32), not(c33), not(c34), not(c35), not(c36), r21 .
utility( r39 , 28 ).
r38 :- c29, not(c30), not(c31), not(c32), not(c33), not(c34), not(c35), not(c36), not(r22) .
utility( r38 , 6 ).
r37 :- c29, not(c30), not(c31), not(c32), not(c33), not(c34), not(c35), not(c36), r22 .
utility( r37 , 1 ).
query( c36 ).
query( c35 ).
query( c34 ).
query( c33 ).
query( c32 ).
query( c31 ).
query( c30 ).
query( c29 ).
