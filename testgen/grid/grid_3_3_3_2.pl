0.1 :: f23 .
0.1 :: f24 .
r25 :- f23, f24 .
utility( r25 , 1 ).
query( r25 ).
? :: c26 .
r27 :- f23, not(f24), c26 .
utility( r27 , 1 ).
query( r27 ).
? :: c28 .
0.1 :: f29 .
r30 :- not(f23), c28, f29 .
utility( r30 , 1 ).
query( r30 ).
? :: c31 .
r32 :- not(f23), c28, not(f29), c31 .
utility( r32 , 1 ).
query( r32 ).
