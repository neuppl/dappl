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
r23 :- r21 .
r23 :- r22 .
evidence( r23 , false ).
? :: c31 .
? :: c30 .
? :: c29 .
? :: c28 .
? :: c27 .
? :: c26 .
? :: c25 .
? :: c24 .
r33 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, not(r6) .
utility( r33 , 85 ).
r32 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6 .
utility( r32 , 44 ).
r35 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), not(r7) .
utility( r35 , 41 ).
r34 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7 .
utility( r34 , 82 ).
r37 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), not(r11) .
utility( r37 , 0 ).
r36 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11 .
utility( r36 , 39 ).
r39 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), not(r12) .
utility( r39 , 20 ).
r38 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12 .
utility( r38 , 4 ).
r41 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), not(r16) .
utility( r41 , 70 ).
r40 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16 .
utility( r40 , 21 ).
r43 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), not(r17) .
utility( r43 , 85 ).
r42 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17 .
utility( r42 , 17 ).
r45 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), not(r21) .
utility( r45 , 78 ).
r44 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21 .
utility( r44 , 49 ).
r47 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), not(r22) .
utility( r47 , 12 ).
r46 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22 .
utility( r46 , 15 ).
query( c31 ).
query( c30 ).
query( c29 ).
query( c28 ).
query( c27 ).
query( c26 ).
query( c25 ).
query( c24 ).
