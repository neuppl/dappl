0.1 :: f32 .
0.1 :: f33 .
r34 :- f32, f33 .
utility( r34 , 0 ).
query( r34 ).
? :: c35 .
r36 :- f32, not(f33), c35 .
utility( r36 , 0 ).
query( r36 ).
? :: c38 .
? :: c37 .
0.1 :: f39 .
r40 :- not(f32), c38, f39 .
utility( r40 , 0 ).
query( r40 ).
? :: c41 .
r42 :- not(f32), c38, not(f39), c41 .
utility( r42 , 0 ).
query( r42 ).
0.1 :: f43 .
r44 :- not(f32), c37, f43 .
utility( r44 , 0 ).
query( r44 ).
? :: c46 .
? :: c45 .
r47 :- not(f32), c37, not(f43), c46 .
utility( r47 , 0 ).
query( r47 ).
r48 :- not(f32), c37, not(f43), c45 .
utility( r48 , 0 ).
query( r48 ).
