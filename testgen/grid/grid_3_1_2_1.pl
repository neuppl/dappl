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
? :: c10 .
? :: c9 .
? :: c8 .
0.1 :: f11 .
r12 :- not(f1), c10, f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c13 .
r14 :- not(f1), c10, not(f11), c13 .
utility( r14 , 0 ).
query( r14 ).
r15 :- not(f1), c9 .
utility( r15 , 0 ).
query( r15 ).
0.1 :: f16 .
r17 :- not(f1), c8, f16 .
utility( r17 , 1 ).
query( r17 ).
? :: c19 .
? :: c18 .
r20 :- not(f1), c8, not(f16), c19 .
utility( r20 , 0 ).
query( r20 ).
r21 :- not(f1), c8, not(f16), c18 .
utility( r21 , 1 ).
query( r21 ).
