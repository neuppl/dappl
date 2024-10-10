0.1 :: f27 .
r28 :- f27 .
utility( r28 , 0 ).
query( r28 ).
? :: c30 .
? :: c29 .
r31 :- not(f27), c30 .
utility( r31 , 0 ).
query( r31 ).
r32 :- not(f27), c29 .
utility( r32 , 0 ).
query( r32 ).
