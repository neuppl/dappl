0.1 :: f45 .
0.1 :: f46 .
r47 :- f45, f46 .
utility( r47 , 0 ).
query( r47 ).
? :: c49 .
? :: c48 .
r50 :- f45, not(f46), c49 .
utility( r50 , 0 ).
query( r50 ).
r51 :- f45, not(f46), c48 .
utility( r51 , 0 ).
query( r51 ).
? :: c52 .
0.1 :: f53 .
r54 :- not(f45), c52, f53 .
utility( r54 , 0 ).
query( r54 ).
? :: c56 .
? :: c55 .
r57 :- not(f45), c52, not(f53), c56 .
utility( r57 , 0 ).
query( r57 ).
r58 :- not(f45), c52, not(f53), c55 .
utility( r58 , 0 ).
query( r58 ).
