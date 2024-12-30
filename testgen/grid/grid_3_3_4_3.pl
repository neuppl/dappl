0.1 :: f42 .
0.1 :: f43 .
0.1 :: f44 .
r45 :- f42, f43, f44 .
utility( r45 , 1 ).
query( r45 ).
? :: c46 .
r47 :- f42, f43, not(f44), c46 .
utility( r47 , 1 ).
query( r47 ).
? :: c49 .
? :: c48 .
0.1 :: f50 .
r51 :- f42, not(f43), c49, f50 .
utility( r51 , 1 ).
query( r51 ).
? :: c52 .
r53 :- f42, not(f43), c49, not(f50), c52 .
utility( r53 , 1 ).
query( r53 ).
0.1 :: f54 .
r55 :- f42, not(f43), c48, f54 .
utility( r55 , 1 ).
query( r55 ).
? :: c56 .
r57 :- f42, not(f43), c48, not(f54), c56 .
utility( r57 , 1 ).
query( r57 ).
? :: c58 .
0.1 :: f59 .
0.1 :: f60 .
r61 :- not(f42), c58, f59, f60 .
utility( r61 , 1 ).
query( r61 ).
? :: c62 .
r63 :- not(f42), c58, f59, not(f60), c62 .
utility( r63 , 1 ).
query( r63 ).
? :: c65 .
? :: c64 .
0.1 :: f66 .
r67 :- not(f42), c58, not(f59), c65, f66 .
utility( r67 , 1 ).
query( r67 ).
? :: c68 .
r69 :- not(f42), c58, not(f59), c65, not(f66), c68 .
utility( r69 , 1 ).
query( r69 ).
0.1 :: f70 .
r71 :- not(f42), c58, not(f59), c64, f70 .
utility( r71 , 1 ).
query( r71 ).
? :: c72 .
r73 :- not(f42), c58, not(f59), c64, not(f70), c72 .
utility( r73 , 1 ).
query( r73 ).
