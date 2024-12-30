0.1 :: f31 .
0.1 :: f32 .
r33 :- f31, f32 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
r35 :- f31, not(f32), c34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
0.1 :: f38 .
r39 :- not(f31), c37, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
r41 :- not(f31), c37, not(f38), c40 .
utility( r41 , 0 ).
query( r41 ).
0.1 :: f42 .
r43 :- not(f31), c36, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c44 .
r45 :- not(f31), c36, not(f42), c44 .
utility( r45 , 0 ).
query( r45 ).
