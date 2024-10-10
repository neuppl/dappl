0.1 :: f17 .
r18 :- f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c21 .
? :: c20 .
? :: c19 .
r22 :- not(f17), c21 .
utility( r22 , 0 ).
query( r22 ).
r23 :- not(f17), c20 .
utility( r23 , 0 ).
query( r23 ).
r24 :- not(f17), c19 .
utility( r24 , 0 ).
query( r24 ).
