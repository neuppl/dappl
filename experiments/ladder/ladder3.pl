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
? :: c22 .
? :: c21 .
? :: c20 .
? :: c19 .
r30 :- not(c19), not(c20), not(c21), c22, not(r6) .
utility( r30 , 23 ).
r29 :- not(c19), not(c20), not(c21), c22, r6 .
utility( r29 , 14 ).
r28 :- not(c19), not(c20), c21, not(c22), not(r7) .
utility( r28 , 93 ).
r27 :- not(c19), not(c20), c21, not(c22), r7 .
utility( r27 , 89 ).
r26 :- not(c19), c20, not(c21), not(c22), not(r11) .
utility( r26 , 69 ).
r25 :- not(c19), c20, not(c21), not(c22), r11 .
utility( r25 , 28 ).
r24 :- c19, not(c20), not(c21), not(c22), not(r12) .
utility( r24 , 6 ).
r23 :- c19, not(c20), not(c21), not(c22), r12 .
utility( r23 , 1 ).
query( c22 ).
query( c21 ).
query( c20 ).
query( c19 ).
