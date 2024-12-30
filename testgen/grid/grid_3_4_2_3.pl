0.1 :: f20 .
r21 :- f20 .
utility( r21 , 0 ).
query( r21 ).
? :: c23 .
? :: c22 .
r24 :- not(f20), c23 .
utility( r24 , 0 ).
query( r24 ).
0.1 :: f25 .
r26 :- not(f20), c22, f25 .
utility( r26 , 1 ).
query( r26 ).
? :: c27 .
r28 :- not(f20), c22, not(f25), c27 .
utility( r28 , 1 ).
query( r28 ).
