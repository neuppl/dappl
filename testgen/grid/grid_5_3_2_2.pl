0.1 :: f29 .
0.1 :: f30 .
r31 :- f29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c32 .
r33 :- f29, not(f30), c32 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
0.1 :: f35 .
r36 :- not(f29), c34, f35 .
utility( r36 , 0 ).
query( r36 ).
? :: c37 .
r38 :- not(f29), c34, not(f35), c37 .
utility( r38 , 0 ).
query( r38 ).
