0.1 :: f54 .
0.1 :: f55 .
0.1 :: f56 .
r57 :- f54, f55, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c58 .
r59 :- f54, f55, not(f56), c58 .
utility( r59 , 0 ).
query( r59 ).
? :: c61 .
? :: c60 .
0.1 :: f62 .
r63 :- f54, not(f55), c61, f62 .
utility( r63 , 0 ).
query( r63 ).
? :: c64 .
r65 :- f54, not(f55), c61, not(f62), c64 .
utility( r65 , 0 ).
query( r65 ).
r66 :- f54, not(f55), c60 .
utility( r66 , 1 ).
query( r66 ).
? :: c69 .
? :: c68 .
? :: c67 .
0.1 :: f70 .
r71 :- not(f54), c69, f70 .
utility( r71 , 0 ).
query( r71 ).
? :: c72 .
r73 :- not(f54), c69, not(f70), c72 .
utility( r73 , 0 ).
query( r73 ).
0.1 :: f74 .
0.1 :: f75 .
r76 :- not(f54), c68, f74, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- not(f54), c68, f74, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
? :: c79 .
0.1 :: f80 .
r81 :- not(f54), c68, not(f74), c79, f80 .
utility( r81 , 0 ).
query( r81 ).
? :: c82 .
r83 :- not(f54), c68, not(f74), c79, not(f80), c82 .
utility( r83 , 0 ).
query( r83 ).
0.1 :: f84 .
r85 :- not(f54), c67, f84 .
utility( r85 , 1 ).
query( r85 ).
? :: c87 .
? :: c86 .
0.1 :: f88 .
r89 :- not(f54), c67, not(f84), c87, f88 .
utility( r89 , 0 ).
query( r89 ).
? :: c90 .
r91 :- not(f54), c67, not(f84), c87, not(f88), c90 .
utility( r91 , 0 ).
query( r91 ).
r92 :- not(f54), c67, not(f84), c86 .
utility( r92 , 1 ).
query( r92 ).
