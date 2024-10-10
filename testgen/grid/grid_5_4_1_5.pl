0.1 :: f23 .
r24 :- f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c26 .
? :: c25 .
r27 :- not(f23), c26 .
utility( r27 , 0 ).
query( r27 ).
r28 :- not(f23), c25 .
utility( r28 , 0 ).
query( r28 ).
