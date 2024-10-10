0.1 :: f21 .
r22 :- f21 .
utility( r22 , 0 ).
query( r22 ).
? :: c25 .
? :: c24 .
? :: c23 .
r26 :- not(f21), c25 .
utility( r26 , 0 ).
query( r26 ).
r27 :- not(f21), c24 .
utility( r27 , 0 ).
query( r27 ).
r28 :- not(f21), c23 .
utility( r28 , 0 ).
query( r28 ).
