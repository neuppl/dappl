0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 0 ).
query( r3 ).
? :: c4 .
r5 :- f1, not(f2), c4 .
utility( r5 , 0 ).
query( r5 ).
? :: c7 .
? :: c6 .
0.1 :: f8 .
r9 :- not(f1), c7, f8 .
utility( r9 , 0 ).
query( r9 ).
? :: c10 .
r11 :- not(f1), c7, not(f8), c10 .
utility( r11 , 0 ).
query( r11 ).
r12 :- not(f1), c6 .
utility( r12 , 0 ).
query( r12 ).
