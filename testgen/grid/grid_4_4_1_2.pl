0.1 :: f5 .
r6 :- f5 .
utility( r6 , 0 ).
query( r6 ).
? :: c8 .
? :: c7 .
r9 :- not(f5), c8 .
utility( r9 , 0 ).
query( r9 ).
r10 :- not(f5), c7 .
utility( r10 , 0 ).
query( r10 ).
