0.1 :: f26 .
r27 :- f26 .
utility( r27 , 0 ).
query( r27 ).
? :: c29 .
? :: c28 .
r30 :- not(f26), c29 .
utility( r30 , 0 ).
query( r30 ).
0.1 :: f31 .
0.1 :: f32 .
r33 :- not(f26), c28, f31, f32 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
r35 :- not(f26), c28, f31, not(f32), c34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
0.1 :: f38 .
r39 :- not(f26), c28, not(f31), c37, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
r41 :- not(f26), c28, not(f31), c37, not(f38), c40 .
utility( r41 , 0 ).
query( r41 ).
r42 :- not(f26), c28, not(f31), c36 .
utility( r42 , 1 ).
query( r42 ).
