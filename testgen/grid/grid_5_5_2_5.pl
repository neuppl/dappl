0.1 :: f81 .
0.1 :: f82 .
r83 :- f81, f82 .
utility( r83 , 0 ).
query( r83 ).
? :: c85 .
? :: c84 .
r86 :- f81, not(f82), c85 .
utility( r86 , 0 ).
query( r86 ).
r87 :- f81, not(f82), c84 .
utility( r87 , 0 ).
query( r87 ).
? :: c89 .
? :: c88 .
0.1 :: f90 .
r91 :- not(f81), c89, f90 .
utility( r91 , 0 ).
query( r91 ).
? :: c93 .
? :: c92 .
r94 :- not(f81), c89, not(f90), c93 .
utility( r94 , 0 ).
query( r94 ).
r95 :- not(f81), c89, not(f90), c92 .
utility( r95 , 0 ).
query( r95 ).
0.1 :: f96 .
r97 :- not(f81), c88, f96 .
utility( r97 , 0 ).
query( r97 ).
? :: c99 .
? :: c98 .
r100 :- not(f81), c88, not(f96), c99 .
utility( r100 , 0 ).
query( r100 ).
r101 :- not(f81), c88, not(f96), c98 .
utility( r101 , 0 ).
query( r101 ).
