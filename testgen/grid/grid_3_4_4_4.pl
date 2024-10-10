0.1 :: f43 .
0.1 :: f44 .
r45 :- f43, f44 .
utility( r45 , 1 ).
query( r45 ).
? :: c46 .
r47 :- f43, not(f44), c46 .
utility( r47 , 1 ).
query( r47 ).
? :: c48 .
0.1 :: f49 .
r50 :- not(f43), c48, f49 .
utility( r50 , 1 ).
query( r50 ).
? :: c51 .
r52 :- not(f43), c48, not(f49), c51 .
utility( r52 , 1 ).
query( r52 ).
