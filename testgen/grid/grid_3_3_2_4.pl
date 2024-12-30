0.1 :: f32 .
0.1 :: f33 .
r34 :- f32, f33 .
utility( r34 , 0 ).
query( r34 ).
? :: c35 .
r36 :- f32, not(f33), c35 .
utility( r36 , 0 ).
query( r36 ).
? :: c37 .
0.1 :: f38 .
r39 :- not(f32), c37, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
r41 :- not(f32), c37, not(f38), c40 .
utility( r41 , 0 ).
query( r41 ).
