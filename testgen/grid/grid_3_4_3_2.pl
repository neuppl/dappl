0.1 :: f24 .
0.1 :: f25 .
r26 :- f24, f25 .
utility( r26 , 1 ).
query( r26 ).
? :: c27 .
r28 :- f24, not(f25), c27 .
utility( r28 , 1 ).
query( r28 ).
? :: c29 .
0.1 :: f30 .
r31 :- not(f24), c29, f30 .
utility( r31 , 1 ).
query( r31 ).
? :: c32 .
r33 :- not(f24), c29, not(f30), c32 .
utility( r33 , 1 ).
query( r33 ).
