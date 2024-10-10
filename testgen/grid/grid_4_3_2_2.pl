0.1 :: f20 .
0.1 :: f21 .
r22 :- f20, f21 .
utility( r22 , 0 ).
query( r22 ).
? :: c24 .
? :: c23 .
r25 :- f20, not(f21), c24 .
utility( r25 , 0 ).
query( r25 ).
r26 :- f20, not(f21), c23 .
utility( r26 , 0 ).
query( r26 ).
? :: c29 .
? :: c28 .
? :: c27 .
0.1 :: f30 .
r31 :- not(f20), c29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c33 .
? :: c32 .
r34 :- not(f20), c29, not(f30), c33 .
utility( r34 , 0 ).
query( r34 ).
r35 :- not(f20), c29, not(f30), c32 .
utility( r35 , 0 ).
query( r35 ).
r36 :- not(f20), c28 .
utility( r36 , 0 ).
query( r36 ).
0.1 :: f37 .
r38 :- not(f20), c27, f37 .
utility( r38 , 0 ).
query( r38 ).
? :: c40 .
? :: c39 .
r41 :- not(f20), c27, not(f37), c40 .
utility( r41 , 0 ).
query( r41 ).
r42 :- not(f20), c27, not(f37), c39 .
utility( r42 , 0 ).
query( r42 ).
