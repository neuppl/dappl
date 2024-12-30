0.1 :: f39 .
0.1 :: f40 .
r41 :- f39, f40 .
utility( r41 , 1 ).
query( r41 ).
? :: c42 .
r43 :- f39, not(f40), c42 .
utility( r43 , 1 ).
query( r43 ).
? :: c44 .
0.1 :: f45 .
r46 :- not(f39), c44, f45 .
utility( r46 , 1 ).
query( r46 ).
? :: c47 .
r48 :- not(f39), c44, not(f45), c47 .
utility( r48 , 1 ).
query( r48 ).
