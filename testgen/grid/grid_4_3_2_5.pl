0.1 :: f84 .
0.1 :: f85 .
r86 :- f84, f85 .
utility( r86 , 0 ).
query( r86 ).
? :: c88 .
? :: c87 .
r89 :- f84, not(f85), c88 .
utility( r89 , 0 ).
query( r89 ).
r90 :- f84, not(f85), c87 .
utility( r90 , 0 ).
query( r90 ).
? :: c91 .
0.1 :: f92 .
r93 :- not(f84), c91, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c95 .
? :: c94 .
r96 :- not(f84), c91, not(f92), c95 .
utility( r96 , 0 ).
query( r96 ).
r97 :- not(f84), c91, not(f92), c94 .
utility( r97 , 0 ).
query( r97 ).
