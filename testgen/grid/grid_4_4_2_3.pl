0.1 :: f21 .
0.1 :: f22 .
r23 :- f21, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c24 .
r25 :- f21, not(f22), c24 .
utility( r25 , 0 ).
query( r25 ).
? :: c27 .
? :: c26 .
0.1 :: f28 .
r29 :- not(f21), c27, f28 .
utility( r29 , 0 ).
query( r29 ).
? :: c31 .
? :: c30 .
r32 :- not(f21), c27, not(f28), c31 .
utility( r32 , 0 ).
query( r32 ).
r33 :- not(f21), c27, not(f28), c30 .
utility( r33 , 0 ).
query( r33 ).
0.1 :: f34 .
r35 :- not(f21), c26, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c36 .
r37 :- not(f21), c26, not(f34), c36 .
utility( r37 , 0 ).
query( r37 ).
