0.1 :: f44 .
0.1 :: f45 .
r46 :- f44, f45 .
utility( r46 , 1 ).
query( r46 ).
? :: c47 .
r48 :- f44, not(f45), c47 .
utility( r48 , 1 ).
query( r48 ).
? :: c49 .
0.1 :: f50 .
r51 :- not(f44), c49, f50 .
utility( r51 , 1 ).
query( r51 ).
? :: c52 .
r53 :- not(f44), c49, not(f50), c52 .
utility( r53 , 1 ).
query( r53 ).
