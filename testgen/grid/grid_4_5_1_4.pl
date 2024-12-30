0.1 :: f19 .
r20 :- f19 .
utility( r20 , 0 ).
query( r20 ).
? :: c22 .
? :: c21 .
r23 :- not(f19), c22 .
utility( r23 , 0 ).
query( r23 ).
r24 :- not(f19), c21 .
utility( r24 , 0 ).
query( r24 ).
