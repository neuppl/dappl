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
utility( r7 , 1 ).
query( r7 ).
? :: c8 .
0.1 :: f9 .
r10 :- not(f1), c8, f9 .
utility( r10 , 1 ).
query( r10 ).
? :: c12 .
? :: c11 .
r13 :- not(f1), c8, not(f9), c12 .
utility( r13 , 0 ).
query( r13 ).
r14 :- not(f1), c8, not(f9), c11 .
utility( r14 , 1 ).
query( r14 ).
