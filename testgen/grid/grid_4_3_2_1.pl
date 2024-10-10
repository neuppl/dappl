0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 0 ).
query( r3 ).
? :: c5 .
? :: c4 .
r6 :- f1, not(f2), c5 .
utility( r6 , 0 ).
query( r6 ).
r7 :- f1, not(f2), c4 .
utility( r7 , 0 ).
query( r7 ).
? :: c9 .
? :: c8 .
0.1 :: f10 .
r11 :- not(f1), c9, f10 .
utility( r11 , 0 ).
query( r11 ).
? :: c13 .
? :: c12 .
r14 :- not(f1), c9, not(f10), c13 .
utility( r14 , 0 ).
query( r14 ).
r15 :- not(f1), c9, not(f10), c12 .
utility( r15 , 0 ).
query( r15 ).
0.1 :: f16 .
r17 :- not(f1), c8, f16 .
utility( r17 , 0 ).
query( r17 ).
? :: c18 .
r19 :- not(f1), c8, not(f16), c18 .
utility( r19 , 0 ).
query( r19 ).
