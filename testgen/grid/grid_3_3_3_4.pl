0.1 :: f33 .
0.1 :: f34 .
r35 :- f33, f34 .
utility( r35 , 1 ).
query( r35 ).
? :: c37 .
? :: c36 .
0.1 :: f38 .
r39 :- f33, not(f34), c37, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
r41 :- f33, not(f34), c37, not(f38), c40 .
utility( r41 , 0 ).
query( r41 ).
r42 :- f33, not(f34), c36 .
utility( r42 , 1 ).
query( r42 ).
? :: c43 .
0.1 :: f44 .
0.1 :: f45 .
r46 :- not(f33), c43, f44, f45 .
utility( r46 , 0 ).
query( r46 ).
? :: c47 .
r48 :- not(f33), c43, f44, not(f45), c47 .
utility( r48 , 0 ).
query( r48 ).
? :: c50 .
? :: c49 .
0.1 :: f51 .
r52 :- not(f33), c43, not(f44), c50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f33), c43, not(f44), c50, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
r55 :- not(f33), c43, not(f44), c49 .
utility( r55 , 1 ).
query( r55 ).
