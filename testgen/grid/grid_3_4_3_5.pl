0.1 :: f57 .
r58 :- f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c60 .
? :: c59 .
r61 :- not(f57), c60 .
utility( r61 , 0 ).
query( r61 ).
0.1 :: f62 .
r63 :- not(f57), c59, f62 .
utility( r63 , 1 ).
query( r63 ).
? :: c64 .
r65 :- not(f57), c59, not(f62), c64 .
utility( r65 , 1 ).
query( r65 ).
