0.1 :: f46 .
r47 :- f46 .
utility( r47 , 0 ).
query( r47 ).
? :: c50 .
? :: c49 .
? :: c48 .
0.1 :: f51 .
r52 :- not(f46), c50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c54 .
? :: c53 .
r55 :- not(f46), c50, not(f51), c54 .
utility( r55 , 0 ).
query( r55 ).
r56 :- not(f46), c50, not(f51), c53 .
utility( r56 , 0 ).
query( r56 ).
r57 :- not(f46), c49 .
utility( r57 , 0 ).
query( r57 ).
0.1 :: f58 .
r59 :- not(f46), c48, f58 .
utility( r59 , 0 ).
query( r59 ).
? :: c60 .
r61 :- not(f46), c48, not(f58), c60 .
utility( r61 , 0 ).
query( r61 ).
