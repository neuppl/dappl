0.1 :: f16 .
0.1 :: f17 .
r18 :- f16, f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c19 .
r20 :- f16, not(f17), c19 .
utility( r20 , 0 ).
query( r20 ).
? :: c21 .
0.1 :: f22 .
r23 :- not(f16), c21, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c24 .
r25 :- not(f16), c21, not(f22), c24 .
utility( r25 , 0 ).
query( r25 ).
