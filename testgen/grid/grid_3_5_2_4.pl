0.1 :: f31 .
0.1 :: f32 .
r33 :- f31, f32 .
utility( r33 , 1 ).
query( r33 ).
? :: c34 .
r35 :- f31, not(f32), c34 .
utility( r35 , 1 ).
query( r35 ).
? :: c36 .
0.1 :: f37 .
r38 :- not(f31), c36, f37 .
utility( r38 , 1 ).
query( r38 ).
? :: c39 .
r40 :- not(f31), c36, not(f37), c39 .
utility( r40 , 1 ).
query( r40 ).
