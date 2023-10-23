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
r13 :- r11 .
r13 :- r12 .
evidence( r13 , false ).
? :: c15 .
? :: c14 .
r19 :- not(c14), c15, not(r6) .
utility( r19 , 20 ).
r18 :- not(c14), c15, r6 .
utility( r18 , 4 ).
r17 :- c14, not(c15), not(r7) .
utility( r17 , 0 ).
r16 :- c14, not(c15), r7 .
utility( r16 , 39 ).
query( c15 ).
query( c14 ).
