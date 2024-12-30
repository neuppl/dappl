0.1 :: f56 .
0.1 :: f57 .
r58 :- f56, f57 .
utility( r58 , 1 ).
query( r58 ).
? :: c59 .
r60 :- f56, not(f57), c59 .
utility( r60 , 1 ).
query( r60 ).
? :: c61 .
0.1 :: f62 .
r63 :- not(f56), c61, f62 .
utility( r63 , 1 ).
query( r63 ).
? :: c64 .
r65 :- not(f56), c61, not(f62), c64 .
utility( r65 , 1 ).
query( r65 ).
