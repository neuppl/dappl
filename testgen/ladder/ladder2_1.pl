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
r13 :- r11 .
r13 :- r12 .
evidence( r13 , false ).
? :: c17 .
? :: c16 .
? :: c15 .
? :: c14 .
r19 :- not(c14), not(c15), not(c16), c17, not(r6) .
utility( r19 , 85 ).
r18 :- not(c14), not(c15), not(c16), c17, r6 .
utility( r18 , 44 ).
r21 :- not(c14), not(c15), c16, not(c17), not(r7) .
utility( r21 , 41 ).
r20 :- not(c14), not(c15), c16, not(c17), r7 .
utility( r20 , 82 ).
r23 :- not(c14), c15, not(c16), not(c17), not(r11) .
utility( r23 , 0 ).
r22 :- not(c14), c15, not(c16), not(c17), r11 .
utility( r22 , 39 ).
r25 :- c14, not(c15), not(c16), not(c17), not(r12) .
utility( r25 , 20 ).
r24 :- c14, not(c15), not(c16), not(c17), r12 .
utility( r24 , 4 ).
query( c17 ).
query( c16 ).
query( c15 ).
query( c14 ).
