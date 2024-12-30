0.1 :: f55 .
0.1 :: f56 .
r57 :- f55, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c59 .
? :: c58 .
r60 :- f55, not(f56), c59 .
utility( r60 , 0 ).
query( r60 ).
r61 :- f55, not(f56), c58 .
utility( r61 , 0 ).
query( r61 ).
? :: c63 .
? :: c62 .
0.1 :: f64 .
r65 :- not(f55), c63, f64 .
utility( r65 , 0 ).
query( r65 ).
? :: c67 .
? :: c66 .
r68 :- not(f55), c63, not(f64), c67 .
utility( r68 , 0 ).
query( r68 ).
r69 :- not(f55), c63, not(f64), c66 .
utility( r69 , 0 ).
query( r69 ).
0.1 :: f70 .
r71 :- not(f55), c62, f70 .
utility( r71 , 0 ).
query( r71 ).
? :: c72 .
r73 :- not(f55), c62, not(f70), c72 .
utility( r73 , 0 ).
query( r73 ).
