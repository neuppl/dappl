0.1 :: f34 .
0.1 :: f35 .
r36 :- f34, f35 .
utility( r36 , 0 ).
query( r36 ).
? :: c38 .
? :: c37 .
r39 :- f34, not(f35), c38 .
utility( r39 , 0 ).
query( r39 ).
r40 :- f34, not(f35), c37 .
utility( r40 , 0 ).
query( r40 ).
? :: c43 .
? :: c42 .
? :: c41 .
r44 :- not(f34), c43 .
utility( r44 , 0 ).
query( r44 ).
0.1 :: f45 .
r46 :- not(f34), c42, f45 .
utility( r46 , 0 ).
query( r46 ).
? :: c48 .
? :: c47 .
r49 :- not(f34), c42, not(f45), c48 .
utility( r49 , 0 ).
query( r49 ).
r50 :- not(f34), c42, not(f45), c47 .
utility( r50 , 0 ).
query( r50 ).
0.1 :: f51 .
r52 :- not(f34), c41, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f34), c41, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
