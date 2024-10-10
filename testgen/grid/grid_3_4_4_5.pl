0.1 :: f53 .
0.1 :: f54 .
0.1 :: f55 .
0.1 :: f56 .
r57 :- f53, f54, f55, f56 .
utility( r57 , 1 ).
query( r57 ).
? :: c58 .
r59 :- f53, f54, f55, not(f56), c58 .
utility( r59 , 1 ).
query( r59 ).
? :: c60 .
0.1 :: f61 .
r62 :- f53, f54, not(f55), c60, f61 .
utility( r62 , 1 ).
query( r62 ).
? :: c63 .
r64 :- f53, f54, not(f55), c60, not(f61), c63 .
utility( r64 , 1 ).
query( r64 ).
? :: c65 .
0.1 :: f66 .
0.1 :: f67 .
r68 :- f53, not(f54), c65, f66, f67 .
utility( r68 , 1 ).
query( r68 ).
? :: c69 .
r70 :- f53, not(f54), c65, f66, not(f67), c69 .
utility( r70 , 1 ).
query( r70 ).
? :: c71 .
0.1 :: f72 .
r73 :- f53, not(f54), c65, not(f66), c71, f72 .
utility( r73 , 1 ).
query( r73 ).
? :: c74 .
r75 :- f53, not(f54), c65, not(f66), c71, not(f72), c74 .
utility( r75 , 1 ).
query( r75 ).
? :: c76 .
0.1 :: f77 .
0.1 :: f78 .
0.1 :: f79 .
r80 :- not(f53), c76, f77, f78, f79 .
utility( r80 , 1 ).
query( r80 ).
? :: c81 .
r82 :- not(f53), c76, f77, f78, not(f79), c81 .
utility( r82 , 1 ).
query( r82 ).
? :: c83 .
0.1 :: f84 .
r85 :- not(f53), c76, f77, not(f78), c83, f84 .
utility( r85 , 1 ).
query( r85 ).
? :: c86 .
r87 :- not(f53), c76, f77, not(f78), c83, not(f84), c86 .
utility( r87 , 1 ).
query( r87 ).
? :: c88 .
0.1 :: f89 .
0.1 :: f90 .
r91 :- not(f53), c76, not(f77), c88, f89, f90 .
utility( r91 , 1 ).
query( r91 ).
? :: c92 .
r93 :- not(f53), c76, not(f77), c88, f89, not(f90), c92 .
utility( r93 , 1 ).
query( r93 ).
? :: c94 .
0.1 :: f95 .
r96 :- not(f53), c76, not(f77), c88, not(f89), c94, f95 .
utility( r96 , 1 ).
query( r96 ).
? :: c97 .
r98 :- not(f53), c76, not(f77), c88, not(f89), c94, not(f95), c97 .
utility( r98 , 1 ).
query( r98 ).
