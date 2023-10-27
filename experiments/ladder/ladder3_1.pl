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
r18 :- r16 .
r18 :- r17 .
evidence( r18 , false ).
? :: c24 .
? :: c23 .
? :: c22 .
? :: c21 .
? :: c20 .
? :: c19 .
r26 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, not(r6) .
utility( r26 , 78 ).
r25 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6 .
utility( r25 , 49 ).
r28 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), not(r7) .
utility( r28 , 12 ).
r27 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7 .
utility( r27 , 15 ).
r30 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), not(r11) .
utility( r30 , 6 ).
r29 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11 .
utility( r29 , 1 ).
r32 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), not(r12) .
utility( r32 , 69 ).
r31 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12 .
utility( r31 , 28 ).
r34 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), not(r16) .
utility( r34 , 93 ).
r33 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16 .
utility( r33 , 89 ).
r36 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), not(r17) .
utility( r36 , 23 ).
r35 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17 .
utility( r35 , 14 ).
query( c24 ).
query( c23 ).
query( c22 ).
query( c21 ).
query( c20 ).
query( c19 ).
