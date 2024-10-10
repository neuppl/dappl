0.1 :: f12 .
0.1 :: f13 .
r14 :- f12, f13 .
utility( r14 , 1 ).
query( r14 ).
? :: c15 .
r16 :- f12, not(f13), c15 .
utility( r16 , 1 ).
query( r16 ).
? :: c17 .
0.1 :: f18 .
r19 :- not(f12), c17, f18 .
utility( r19 , 1 ).
query( r19 ).
? :: c20 .
r21 :- not(f12), c17, not(f18), c20 .
utility( r21 , 1 ).
query( r21 ).
