0.1 :: f59 .
0.1 :: f60 .
r61 :- f59, f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c62 .
r63 :- f59, not(f60), c62 .
utility( r63 , 0 ).
query( r63 ).
? :: c66 .
? :: c65 .
? :: c64 .
0.1 :: f67 .
r68 :- not(f59), c66, f67 .
utility( r68 , 0 ).
query( r68 ).
? :: c69 .
r70 :- not(f59), c66, not(f67), c69 .
utility( r70 , 0 ).
query( r70 ).
0.1 :: f71 .
r72 :- not(f59), c65, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c73 .
r74 :- not(f59), c65, not(f71), c73 .
utility( r74 , 0 ).
query( r74 ).
0.1 :: f75 .
r76 :- not(f59), c64, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c78 .
? :: c77 .
r79 :- not(f59), c64, not(f75), c78 .
utility( r79 , 0 ).
query( r79 ).
r80 :- not(f59), c64, not(f75), c77 .
utility( r80 , 0 ).
query( r80 ).
