0.1 :: f13 .
r14 :- f13 .
utility( r14 , 0 ).
query( r14 ).
? :: c17 .
? :: c16 .
? :: c15 .
r18 :- not(f13), c17 .
utility( r18 , 0 ).
query( r18 ).
r19 :- not(f13), c16 .
utility( r19 , 0 ).
query( r19 ).
r20 :- not(f13), c15 .
utility( r20 , 0 ).
query( r20 ).
