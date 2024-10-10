0.1 :: f1 .
r2 :- f1 .
utility( r2 , 0 ).
query( r2 ).
? :: c4 .
? :: c3 .
r5 :- not(f1), c4 .
utility( r5 , 0 ).
query( r5 ).
0.1 :: f6 .
r7 :- not(f1), c3, f6 .
utility( r7 , 0 ).
query( r7 ).
? :: c9 .
? :: c8 .
r10 :- not(f1), c3, not(f6), c9 .
utility( r10 , 0 ).
query( r10 ).
r11 :- not(f1), c3, not(f6), c8 .
utility( r11 , 0 ).
query( r11 ).
