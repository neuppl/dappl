0.1 :: f11 .
0.1 :: f12 .
r13 :- f11, f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c14 .
r15 :- f11, not(f12), c14 .
utility( r15 , 0 ).
query( r15 ).
? :: c18 .
? :: c17 .
? :: c16 .
0.1 :: f19 .
r20 :- not(f11), c18, f19 .
utility( r20 , 0 ).
query( r20 ).
? :: c21 .
r22 :- not(f11), c18, not(f19), c21 .
utility( r22 , 0 ).
query( r22 ).
0.1 :: f23 .
r24 :- not(f11), c17, f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c25 .
r26 :- not(f11), c17, not(f23), c25 .
utility( r26 , 0 ).
query( r26 ).
0.1 :: f27 .
r28 :- not(f11), c16, f27 .
utility( r28 , 0 ).
query( r28 ).
? :: c29 .
r30 :- not(f11), c16, not(f27), c29 .
utility( r30 , 0 ).
query( r30 ).
