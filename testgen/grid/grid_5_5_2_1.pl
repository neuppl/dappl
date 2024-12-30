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
? :: c10 .
? :: c9 .
? :: c8 .
0.1 :: f11 .
r12 :- not(f1), c10, f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c14 .
? :: c13 .
r15 :- not(f1), c10, not(f11), c14 .
utility( r15 , 0 ).
query( r15 ).
r16 :- not(f1), c10, not(f11), c13 .
utility( r16 , 0 ).
query( r16 ).
r17 :- not(f1), c9 .
utility( r17 , 0 ).
query( r17 ).
0.1 :: f18 .
r19 :- not(f1), c8, f18 .
utility( r19 , 0 ).
query( r19 ).
? :: c20 .
r21 :- not(f1), c8, not(f18), c20 .
utility( r21 , 0 ).
query( r21 ).
