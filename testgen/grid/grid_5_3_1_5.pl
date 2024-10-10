0.1 :: f25 .
r26 :- f25 .
utility( r26 , 0 ).
query( r26 ).
? :: c29 .
? :: c28 .
? :: c27 .
r30 :- not(f25), c29 .
utility( r30 , 0 ).
query( r30 ).
r31 :- not(f25), c28 .
utility( r31 , 0 ).
query( r31 ).
r32 :- not(f25), c27 .
utility( r32 , 0 ).
query( r32 ).
