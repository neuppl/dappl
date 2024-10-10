0.1 :: f21 .
0.1 :: f22 .
r23 :- f21, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c25 .
? :: c24 .
r26 :- f21, not(f22), c25 .
utility( r26 , 0 ).
query( r26 ).
r27 :- f21, not(f22), c24 .
utility( r27 , 1 ).
query( r27 ).
? :: c28 .
0.1 :: f29 .
r30 :- not(f21), c28, f29 .
utility( r30 , 1 ).
query( r30 ).
? :: c32 .
? :: c31 .
r33 :- not(f21), c28, not(f29), c32 .
utility( r33 , 0 ).
query( r33 ).
r34 :- not(f21), c28, not(f29), c31 .
utility( r34 , 1 ).
query( r34 ).
