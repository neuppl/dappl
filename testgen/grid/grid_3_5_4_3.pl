0.1 :: f21 .
0.1 :: f22 .
r23 :- f21, f22 .
utility( r23 , 1 ).
query( r23 ).
? :: c24 .
r25 :- f21, not(f22), c24 .
utility( r25 , 1 ).
query( r25 ).
? :: c26 .
0.1 :: f27 .
r28 :- not(f21), c26, f27 .
utility( r28 , 1 ).
query( r28 ).
? :: c29 .
r30 :- not(f21), c26, not(f27), c29 .
utility( r30 , 1 ).
query( r30 ).
