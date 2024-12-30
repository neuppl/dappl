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
utility( r7 , 1 ).
query( r7 ).
? :: c8 .
r9 :- not(f1), c3, not(f6), c8 .
utility( r9 , 1 ).
query( r9 ).
