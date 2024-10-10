0.1 :: f22 .
0.1 :: f23 .
r24 :- f22, f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c26 .
? :: c25 .
r27 :- f22, not(f23), c26 .
utility( r27 , 0 ).
query( r27 ).
r28 :- f22, not(f23), c25 .
utility( r28 , 0 ).
query( r28 ).
? :: c29 .
0.1 :: f30 .
r31 :- not(f22), c29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c33 .
? :: c32 .
r34 :- not(f22), c29, not(f30), c33 .
utility( r34 , 0 ).
query( r34 ).
r35 :- not(f22), c29, not(f30), c32 .
utility( r35 , 0 ).
query( r35 ).
