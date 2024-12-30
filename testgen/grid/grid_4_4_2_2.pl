0.1 :: f17 .
0.1 :: f18 .
r19 :- f17, f18 .
utility( r19 , 0 ).
query( r19 ).
? :: c20 .
r21 :- f17, not(f18), c20 .
utility( r21 , 0 ).
query( r21 ).
? :: c23 .
? :: c22 .
0.1 :: f24 .
r25 :- not(f17), c23, f24 .
utility( r25 , 0 ).
query( r25 ).
? :: c26 .
r27 :- not(f17), c23, not(f24), c26 .
utility( r27 , 0 ).
query( r27 ).
0.1 :: f28 .
r29 :- not(f17), c22, f28 .
utility( r29 , 0 ).
query( r29 ).
? :: c31 .
? :: c30 .
r32 :- not(f17), c22, not(f28), c31 .
utility( r32 , 0 ).
query( r32 ).
r33 :- not(f17), c22, not(f28), c30 .
utility( r33 , 0 ).
query( r33 ).
