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
0.1 :: f7 .
r8 :- not(f1), c3, f6, f7 .
utility( r8 , 1 ).
query( r8 ).
? :: c9 .
r10 :- not(f1), c3, f6, not(f7), c9 .
utility( r10 , 1 ).
query( r10 ).
? :: c11 .
0.1 :: f12 .
r13 :- not(f1), c3, not(f6), c11, f12 .
utility( r13 , 1 ).
query( r13 ).
? :: c14 .
r15 :- not(f1), c3, not(f6), c11, not(f12), c14 .
utility( r15 , 1 ).
query( r15 ).
