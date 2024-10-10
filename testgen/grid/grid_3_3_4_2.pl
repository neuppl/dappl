0.1 :: f17 .
r18 :- f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c20 .
? :: c19 .
r21 :- not(f17), c20 .
utility( r21 , 0 ).
query( r21 ).
0.1 :: f22 .
r23 :- not(f17), c19, f22 .
utility( r23 , 1 ).
query( r23 ).
? :: c24 .
r25 :- not(f17), c19, not(f22), c24 .
utility( r25 , 1 ).
query( r25 ).
