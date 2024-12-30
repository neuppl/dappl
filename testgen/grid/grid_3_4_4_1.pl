0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
r4 :- f1, f2, f3 .
utility( r4 , 1 ).
query( r4 ).
? :: c5 .
r6 :- f1, f2, not(f3), c5 .
utility( r6 , 1 ).
query( r6 ).
? :: c7 .
0.1 :: f8 .
r9 :- f1, not(f2), c7, f8 .
utility( r9 , 1 ).
query( r9 ).
? :: c10 .
r11 :- f1, not(f2), c7, not(f8), c10 .
utility( r11 , 1 ).
query( r11 ).
? :: c12 .
0.1 :: f13 .
0.1 :: f14 .
r15 :- not(f1), c12, f13, f14 .
utility( r15 , 1 ).
query( r15 ).
? :: c16 .
r17 :- not(f1), c12, f13, not(f14), c16 .
utility( r17 , 1 ).
query( r17 ).
? :: c18 .
0.1 :: f19 .
r20 :- not(f1), c12, not(f13), c18, f19 .
utility( r20 , 1 ).
query( r20 ).
? :: c21 .
r22 :- not(f1), c12, not(f13), c18, not(f19), c21 .
utility( r22 , 1 ).
query( r22 ).
