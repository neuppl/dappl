0.1 :: f55 .
0.1 :: f56 .
r57 :- f55, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c58 .
r59 :- f55, not(f56), c58 .
utility( r59 , 0 ).
query( r59 ).
? :: c62 .
? :: c61 .
? :: c60 .
0.1 :: f63 .
r64 :- not(f55), c62, f63 .
utility( r64 , 0 ).
query( r64 ).
? :: c66 .
? :: c65 .
r67 :- not(f55), c62, not(f63), c66 .
utility( r67 , 0 ).
query( r67 ).
r68 :- not(f55), c62, not(f63), c65 .
utility( r68 , 0 ).
query( r68 ).
0.1 :: f69 .
r70 :- not(f55), c61, f69 .
utility( r70 , 0 ).
query( r70 ).
? :: c71 .
r72 :- not(f55), c61, not(f69), c71 .
utility( r72 , 0 ).
query( r72 ).
0.1 :: f73 .
r74 :- not(f55), c60, f73 .
utility( r74 , 0 ).
query( r74 ).
? :: c77 .
? :: c76 .
? :: c75 .
r78 :- not(f55), c60, not(f73), c77 .
utility( r78 , 0 ).
query( r78 ).
r79 :- not(f55), c60, not(f73), c76 .
utility( r79 , 0 ).
query( r79 ).
r80 :- not(f55), c60, not(f73), c75 .
utility( r80 , 0 ).
query( r80 ).
