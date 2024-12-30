0.1 :: f17 .
r18 :- f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c20 .
? :: c19 .
r21 :- not(f17), c20 .
utility( r21 , 0 ).
query( r21 ).
r22 :- not(f17), c19 .
utility( r22 , 0 ).
query( r22 ).
