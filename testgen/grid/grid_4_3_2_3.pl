0.1 :: f43 .
0.1 :: f44 .
r45 :- f43, f44 .
utility( r45 , 0 ).
query( r45 ).
? :: c46 .
r47 :- f43, not(f44), c46 .
utility( r47 , 0 ).
query( r47 ).
? :: c50 .
? :: c49 .
? :: c48 .
0.1 :: f51 .
r52 :- not(f43), c50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f43), c50, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
0.1 :: f55 .
r56 :- not(f43), c49, f55 .
utility( r56 , 0 ).
query( r56 ).
? :: c57 .
r58 :- not(f43), c49, not(f55), c57 .
utility( r58 , 0 ).
query( r58 ).
0.1 :: f59 .
r60 :- not(f43), c48, f59 .
utility( r60 , 0 ).
query( r60 ).
? :: c63 .
? :: c62 .
? :: c61 .
r64 :- not(f43), c48, not(f59), c63 .
utility( r64 , 0 ).
query( r64 ).
r65 :- not(f43), c48, not(f59), c62 .
utility( r65 , 0 ).
query( r65 ).
r66 :- not(f43), c48, not(f59), c61 .
utility( r66 , 0 ).
query( r66 ).
