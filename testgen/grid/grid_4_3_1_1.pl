0.1 :: f1 .
r2 :- f1 .
utility( r2 , 0 ).
query( r2 ).
? :: c5 .
? :: c4 .
? :: c3 .
r6 :- not(f1), c5 .
utility( r6 , 0 ).
query( r6 ).
r7 :- not(f1), c4 .
utility( r7 , 0 ).
query( r7 ).
r8 :- not(f1), c3 .
utility( r8 , 0 ).
query( r8 ).
