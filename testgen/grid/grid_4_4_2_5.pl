0.1 :: f48 .
0.1 :: f49 .
r50 :- f48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c51 .
r52 :- f48, not(f49), c51 .
utility( r52 , 0 ).
query( r52 ).
? :: c54 .
? :: c53 .
0.1 :: f55 .
r56 :- not(f48), c54, f55 .
utility( r56 , 0 ).
query( r56 ).
? :: c57 .
r58 :- not(f48), c54, not(f55), c57 .
utility( r58 , 0 ).
query( r58 ).
0.1 :: f59 .
r60 :- not(f48), c53, f59 .
utility( r60 , 0 ).
query( r60 ).
? :: c61 .
r62 :- not(f48), c53, not(f59), c61 .
utility( r62 , 0 ).
query( r62 ).
