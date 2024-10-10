0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
r4 :- f1, f2, f3 .
utility( r4 , 0 ).
query( r4 ).
? :: c5 .
r6 :- f1, f2, not(f3), c5 .
utility( r6 , 0 ).
query( r6 ).
? :: c8 .
? :: c7 .
0.1 :: f9 .
r10 :- f1, not(f2), c8, f9 .
utility( r10 , 0 ).
query( r10 ).
? :: c11 .
r12 :- f1, not(f2), c8, not(f9), c11 .
utility( r12 , 0 ).
query( r12 ).
r13 :- f1, not(f2), c7 .
utility( r13 , 1 ).
query( r13 ).
? :: c14 .
0.1 :: f15 .
r16 :- not(f1), c14, f15 .
utility( r16 , 1 ).
query( r16 ).
? :: c18 .
? :: c17 .
0.1 :: f19 .
r20 :- not(f1), c14, not(f15), c18, f19 .
utility( r20 , 0 ).
query( r20 ).
? :: c21 .
r22 :- not(f1), c14, not(f15), c18, not(f19), c21 .
utility( r22 , 0 ).
query( r22 ).
r23 :- not(f1), c14, not(f15), c17 .
utility( r23 , 1 ).
query( r23 ).
