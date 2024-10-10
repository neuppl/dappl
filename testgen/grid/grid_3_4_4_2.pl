0.1 :: f11 .
0.1 :: f12 .
0.1 :: f13 .
r14 :- f11, f12, f13 .
utility( r14 , 1 ).
query( r14 ).
? :: c15 .
r16 :- f11, f12, not(f13), c15 .
utility( r16 , 1 ).
query( r16 ).
? :: c17 .
0.1 :: f18 .
r19 :- f11, not(f12), c17, f18 .
utility( r19 , 1 ).
query( r19 ).
? :: c20 .
r21 :- f11, not(f12), c17, not(f18), c20 .
utility( r21 , 1 ).
query( r21 ).
? :: c22 .
0.1 :: f23 .
0.1 :: f24 .
r25 :- not(f11), c22, f23, f24 .
utility( r25 , 1 ).
query( r25 ).
? :: c26 .
r27 :- not(f11), c22, f23, not(f24), c26 .
utility( r27 , 1 ).
query( r27 ).
? :: c28 .
0.1 :: f29 .
r30 :- not(f11), c22, not(f23), c28, f29 .
utility( r30 , 1 ).
query( r30 ).
? :: c31 .
r32 :- not(f11), c22, not(f23), c28, not(f29), c31 .
utility( r32 , 1 ).
query( r32 ).
