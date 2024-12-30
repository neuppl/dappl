0.1 :: f21 .
r22 :- f21 .
utility( r22 , 0 ).
query( r22 ).
? :: c24 .
? :: c23 .
r25 :- not(f21), c24 .
utility( r25 , 0 ).
query( r25 ).
r26 :- not(f21), c23 .
utility( r26 , 0 ).
query( r26 ).
