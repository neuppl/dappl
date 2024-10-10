0.1 :: f56 .
0.1 :: f57 .
r58 :- f56, f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c61 .
? :: c60 .
? :: c59 .
r62 :- f56, not(f57), c61 .
utility( r62 , 0 ).
query( r62 ).
0.1 :: f63 .
r64 :- f56, not(f57), c60, f63 .
utility( r64 , 0 ).
query( r64 ).
? :: c65 .
r66 :- f56, not(f57), c60, not(f63), c65 .
utility( r66 , 0 ).
query( r66 ).
r67 :- f56, not(f57), c59 .
utility( r67 , 1 ).
query( r67 ).
? :: c68 .
0.1 :: f69 .
r70 :- not(f56), c68, f69 .
utility( r70 , 1 ).
query( r70 ).
? :: c73 .
? :: c72 .
? :: c71 .
r74 :- not(f56), c68, not(f69), c73 .
utility( r74 , 0 ).
query( r74 ).
0.1 :: f75 .
r76 :- not(f56), c68, not(f69), c72, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- not(f56), c68, not(f69), c72, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
r79 :- not(f56), c68, not(f69), c71 .
utility( r79 , 1 ).
query( r79 ).
