0.1 :: f39 .
0.1 :: f40 .
r41 :- f39, f40 .
utility( r41 , 0 ).
query( r41 ).
? :: c42 .
r43 :- f39, not(f40), c42 .
utility( r43 , 0 ).
query( r43 ).
? :: c46 .
? :: c45 .
? :: c44 .
0.1 :: f47 .
r48 :- not(f39), c46, f47 .
utility( r48 , 0 ).
query( r48 ).
? :: c50 .
? :: c49 .
r51 :- not(f39), c46, not(f47), c50 .
utility( r51 , 0 ).
query( r51 ).
r52 :- not(f39), c46, not(f47), c49 .
utility( r52 , 0 ).
query( r52 ).
0.1 :: f53 .
r54 :- not(f39), c45, f53 .
utility( r54 , 0 ).
query( r54 ).
? :: c55 .
r56 :- not(f39), c45, not(f53), c55 .
utility( r56 , 0 ).
query( r56 ).
0.1 :: f57 .
r58 :- not(f39), c44, f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c61 .
? :: c60 .
? :: c59 .
r62 :- not(f39), c44, not(f57), c61 .
utility( r62 , 0 ).
query( r62 ).
r63 :- not(f39), c44, not(f57), c60 .
utility( r63 , 0 ).
query( r63 ).
r64 :- not(f39), c44, not(f57), c59 .
utility( r64 , 0 ).
query( r64 ).
