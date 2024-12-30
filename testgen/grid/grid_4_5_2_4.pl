0.1 :: f49 .
0.1 :: f50 .
r51 :- f49, f50 .
utility( r51 , 0 ).
query( r51 ).
? :: c53 .
? :: c52 .
r54 :- f49, not(f50), c53 .
utility( r54 , 0 ).
query( r54 ).
r55 :- f49, not(f50), c52 .
utility( r55 , 0 ).
query( r55 ).
? :: c56 .
0.1 :: f57 .
r58 :- not(f49), c56, f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c60 .
? :: c59 .
r61 :- not(f49), c56, not(f57), c60 .
utility( r61 , 0 ).
query( r61 ).
r62 :- not(f49), c56, not(f57), c59 .
utility( r62 , 0 ).
query( r62 ).
