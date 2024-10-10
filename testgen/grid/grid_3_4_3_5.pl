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
? :: c60 .
0.1 :: f61 .
r62 :- f54, not(f55), c60, f61 .
utility( r62 , 0 ).
query( r62 ).
? :: c63 .
r64 :- f54, not(f55), c60, not(f61), c63 .
utility( r64 , 0 ).
query( r64 ).
? :: c65 .
0.1 :: f66 .
0.1 :: f67 .
r68 :- not(f54), c65, f66, f67 .
utility( r68 , 0 ).
query( r68 ).
? :: c69 .
r70 :- not(f54), c65, f66, not(f67), c69 .
utility( r70 , 0 ).
query( r70 ).
? :: c71 .
0.1 :: f72 .
r73 :- not(f54), c65, not(f66), c71, f72 .
utility( r73 , 0 ).
query( r73 ).
? :: c74 .
r75 :- not(f54), c65, not(f66), c71, not(f72), c74 .
utility( r75 , 0 ).
query( r75 ).
