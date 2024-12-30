0.1 :: f32 .
0.1 :: f33 .
r34 :- f32, f33 .
utility( r34 , 0 ).
query( r34 ).
? :: c36 .
? :: c35 .
r37 :- f32, not(f33), c36 .
utility( r37 , 0 ).
query( r37 ).
r38 :- f32, not(f33), c35 .
utility( r38 , 0 ).
query( r38 ).
? :: c41 .
? :: c40 .
? :: c39 .
0.1 :: f42 .
r43 :- not(f32), c41, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c45 .
? :: c44 .
r46 :- not(f32), c41, not(f42), c45 .
utility( r46 , 0 ).
query( r46 ).
r47 :- not(f32), c41, not(f42), c44 .
utility( r47 , 0 ).
query( r47 ).
0.1 :: f48 .
r49 :- not(f32), c40, f48 .
utility( r49 , 0 ).
query( r49 ).
? :: c51 .
? :: c50 .
r52 :- not(f32), c40, not(f48), c51 .
utility( r52 , 0 ).
query( r52 ).
r53 :- not(f32), c40, not(f48), c50 .
utility( r53 , 0 ).
query( r53 ).
r54 :- not(f32), c39 .
utility( r54 , 0 ).
query( r54 ).
