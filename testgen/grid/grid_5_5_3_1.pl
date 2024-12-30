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
0.1 :: f9 .
r10 :- not(f1), c7, f8, f9 .
utility( r10 , 0 ).
query( r10 ).
? :: c12 .
? :: c11 .
r13 :- not(f1), c7, f8, not(f9), c12 .
utility( r13 , 0 ).
query( r13 ).
r14 :- not(f1), c7, f8, not(f9), c11 .
utility( r14 , 0 ).
query( r14 ).
? :: c15 .
0.1 :: f16 .
r17 :- not(f1), c7, not(f8), c15, f16 .
utility( r17 , 0 ).
query( r17 ).
? :: c19 .
? :: c18 .
r20 :- not(f1), c7, not(f8), c15, not(f16), c19 .
utility( r20 , 0 ).
query( r20 ).
r21 :- not(f1), c7, not(f8), c15, not(f16), c18 .
utility( r21 , 0 ).
query( r21 ).
0.1 :: f22 .
r23 :- not(f1), c6, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c24 .
r25 :- not(f1), c6, not(f22), c24 .
utility( r25 , 0 ).
query( r25 ).
