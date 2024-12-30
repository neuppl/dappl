0.1 :: f42 .
0.1 :: f43 .
r44 :- f42, f43 .
utility( r44 , 0 ).
query( r44 ).
? :: c45 .
r46 :- f42, not(f43), c45 .
utility( r46 , 0 ).
query( r46 ).
? :: c48 .
? :: c47 .
0.1 :: f49 .
r50 :- not(f42), c48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c51 .
r52 :- not(f42), c48, not(f49), c51 .
utility( r52 , 0 ).
query( r52 ).
0.1 :: f53 .
r54 :- not(f42), c47, f53 .
utility( r54 , 1 ).
query( r54 ).
? :: c55 .
r56 :- not(f42), c47, not(f53), c55 .
utility( r56 , 1 ).
query( r56 ).
