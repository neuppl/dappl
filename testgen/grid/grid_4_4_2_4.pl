0.1 :: f38 .
0.1 :: f39 .
r40 :- f38, f39 .
utility( r40 , 0 ).
query( r40 ).
? :: c41 .
r42 :- f38, not(f39), c41 .
utility( r42 , 0 ).
query( r42 ).
? :: c43 .
0.1 :: f44 .
r45 :- not(f38), c43, f44 .
utility( r45 , 0 ).
query( r45 ).
? :: c46 .
r47 :- not(f38), c43, not(f44), c46 .
utility( r47 , 0 ).
query( r47 ).
