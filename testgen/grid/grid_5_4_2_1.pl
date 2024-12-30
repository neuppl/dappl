0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 0 ).
query( r3 ).
? :: c6 .
? :: c5 .
? :: c4 .
r7 :- f1, not(f2), c6 .
utility( r7 , 0 ).
query( r7 ).
r8 :- f1, not(f2), c5 .
utility( r8 , 0 ).
query( r8 ).
r9 :- f1, not(f2), c4 .
utility( r9 , 0 ).
query( r9 ).
? :: c11 .
? :: c10 .
0.1 :: f12 .
r13 :- not(f1), c11, f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c14 .
r15 :- not(f1), c11, not(f12), c14 .
utility( r15 , 0 ).
query( r15 ).
0.1 :: f16 .
r17 :- not(f1), c10, f16 .
utility( r17 , 0 ).
query( r17 ).
? :: c20 .
? :: c19 .
? :: c18 .
r21 :- not(f1), c10, not(f16), c20 .
utility( r21 , 0 ).
query( r21 ).
r22 :- not(f1), c10, not(f16), c19 .
utility( r22 , 0 ).
query( r22 ).
r23 :- not(f1), c10, not(f16), c18 .
utility( r23 , 0 ).
query( r23 ).
