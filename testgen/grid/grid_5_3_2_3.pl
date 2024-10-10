0.1 :: f33 .
0.1 :: f34 .
r35 :- f33, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
r38 :- f33, not(f34), c37 .
utility( r38 , 0 ).
query( r38 ).
r39 :- f33, not(f34), c36 .
utility( r39 , 0 ).
query( r39 ).
? :: c42 .
? :: c41 .
? :: c40 .
0.1 :: f43 .
r44 :- not(f33), c42, f43 .
utility( r44 , 0 ).
query( r44 ).
? :: c45 .
r46 :- not(f33), c42, not(f43), c45 .
utility( r46 , 0 ).
query( r46 ).
0.1 :: f47 .
r48 :- not(f33), c41, f47 .
utility( r48 , 0 ).
query( r48 ).
? :: c50 .
? :: c49 .
r51 :- not(f33), c41, not(f47), c50 .
utility( r51 , 0 ).
query( r51 ).
r52 :- not(f33), c41, not(f47), c49 .
utility( r52 , 0 ).
query( r52 ).
0.1 :: f53 .
r54 :- not(f33), c40, f53 .
utility( r54 , 0 ).
query( r54 ).
? :: c57 .
? :: c56 .
? :: c55 .
r58 :- not(f33), c40, not(f53), c57 .
utility( r58 , 0 ).
query( r58 ).
r59 :- not(f33), c40, not(f53), c56 .
utility( r59 , 0 ).
query( r59 ).
r60 :- not(f33), c40, not(f53), c55 .
utility( r60 , 0 ).
query( r60 ).
