0.1 :: f1 .
r2 :- f1 .
utility( r2 , 0 ).
query( r2 ).
? :: c3 .
r4 :- not(f1), c3 .
utility( r4 , 0 ).
query( r4 ).
