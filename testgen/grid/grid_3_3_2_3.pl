0.1 :: f22 .
0.1 :: f23 .
r24 :- f22, f23 .
utility( r24 , 1 ).
query( r24 ).
? :: c25 .
r26 :- f22, not(f23), c25 .
utility( r26 , 1 ).
query( r26 ).
? :: c27 .
0.1 :: f28 .
r29 :- not(f22), c27, f28 .
utility( r29 , 1 ).
query( r29 ).
? :: c30 .
r31 :- not(f22), c27, not(f28), c30 .
utility( r31 , 1 ).
query( r31 ).
