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
? :: c92 .
r93 :- not(f81), c89, not(f90), c92 .
utility( r93 , 0 ).
query( r93 ).
0.1 :: f94 .
r95 :- not(f81), c88, f94 .
utility( r95 , 0 ).
query( r95 ).
? :: c97 .
? :: c96 .
r98 :- not(f81), c88, not(f94), c97 .
utility( r98 , 0 ).
query( r98 ).
r99 :- not(f81), c88, not(f94), c96 .
utility( r99 , 0 ).
query( r99 ).
