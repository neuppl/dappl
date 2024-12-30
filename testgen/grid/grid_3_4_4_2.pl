0.1 :: f23 .
r24 :- f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c26 .
? :: c25 .
r27 :- not(f23), c26 .
utility( r27 , 0 ).
query( r27 ).
0.1 :: f28 .
r29 :- not(f23), c25, f28 .
utility( r29 , 1 ).
query( r29 ).
? :: c30 .
r31 :- not(f23), c25, not(f28), c30 .
utility( r31 , 1 ).
query( r31 ).
