0.1 :: f45 .
0.1 :: f46 .
r47 :- f45, f46 .
utility( r47 , 0 ).
query( r47 ).
? :: c48 .
r49 :- f45, not(f46), c48 .
utility( r49 , 0 ).
query( r49 ).
? :: c50 .
0.1 :: f51 .
r52 :- not(f45), c50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f45), c50, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
