0.1 :: f23 .
r24 :- f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c27 .
? :: c26 .
? :: c25 .
r28 :- not(f23), c27 .
utility( r28 , 0 ).
query( r28 ).
r29 :- not(f23), c26 .
utility( r29 , 0 ).
query( r29 ).
r30 :- not(f23), c25 .
utility( r30 , 0 ).
query( r30 ).
