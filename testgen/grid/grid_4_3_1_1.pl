0.1 :: f1 .
r2 :- f1 .
utility( r2 , 0 ).
query( r2 ).
? :: c4 .
? :: c3 .
r5 :- not(f1), c4 .
utility( r5 , 0 ).
query( r5 ).
r6 :- not(f1), c3 .
utility( r6 , 0 ).
query( r6 ).
