0.1 :: f42 .
0.1 :: f43 .
r44 :- f42, f43 .
utility( r44 , 0 ).
query( r44 ).
? :: c46 .
? :: c45 .
r47 :- f42, not(f43), c46 .
utility( r47 , 0 ).
query( r47 ).
r48 :- f42, not(f43), c45 .
utility( r48 , 1 ).
query( r48 ).
? :: c49 .
0.1 :: f50 .
r51 :- not(f42), c49, f50 .
utility( r51 , 1 ).
query( r51 ).
? :: c53 .
? :: c52 .
r54 :- not(f42), c49, not(f50), c53 .
utility( r54 , 0 ).
query( r54 ).
r55 :- not(f42), c49, not(f50), c52 .
utility( r55 , 1 ).
query( r55 ).
