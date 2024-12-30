0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 1 ).
query( r3 ).
? :: c4 .
r5 :- f1, not(f2), c4 .
utility( r5 , 1 ).
query( r5 ).
? :: c6 .
0.1 :: f7 .
r8 :- not(f1), c6, f7 .
utility( r8 , 1 ).
query( r8 ).
? :: c9 .
r10 :- not(f1), c6, not(f7), c9 .
utility( r10 , 1 ).
query( r10 ).
