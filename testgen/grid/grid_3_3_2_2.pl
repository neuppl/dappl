0.1 :: f13 .
r14 :- f13 .
utility( r14 , 0 ).
query( r14 ).
? :: c16 .
? :: c15 .
r17 :- not(f13), c16 .
utility( r17 , 0 ).
query( r17 ).
0.1 :: f18 .
r19 :- not(f13), c15, f18 .
utility( r19 , 0 ).
query( r19 ).
? :: c20 .
r21 :- not(f13), c15, not(f18), c20 .
utility( r21 , 0 ).
query( r21 ).
