0.1 :: f50 .
0.1 :: f51 .
r52 :- f50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c54 .
? :: c53 .
r55 :- f50, not(f51), c54 .
utility( r55 , 0 ).
query( r55 ).
r56 :- f50, not(f51), c53 .
utility( r56 , 0 ).
query( r56 ).
? :: c57 .
0.1 :: f58 .
r59 :- not(f50), c57, f58 .
utility( r59 , 0 ).
query( r59 ).
? :: c61 .
? :: c60 .
r62 :- not(f50), c57, not(f58), c61 .
utility( r62 , 0 ).
query( r62 ).
r63 :- not(f50), c57, not(f58), c60 .
utility( r63 , 0 ).
query( r63 ).
