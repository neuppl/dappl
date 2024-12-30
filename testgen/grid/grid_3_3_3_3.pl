0.1 :: f21 .
0.1 :: f22 .
r23 :- f21, f22 .
utility( r23 , 1 ).
query( r23 ).
? :: c24 .
r25 :- f21, not(f22), c24 .
utility( r25 , 1 ).
query( r25 ).
? :: c27 .
? :: c26 .
r28 :- not(f21), c27 .
utility( r28 , 0 ).
query( r28 ).
0.1 :: f29 .
r30 :- not(f21), c26, f29 .
utility( r30 , 1 ).
query( r30 ).
? :: c31 .
r32 :- not(f21), c26, not(f29), c31 .
utility( r32 , 1 ).
query( r32 ).
