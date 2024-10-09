0.1 :: f22 .
0.1 :: f23 .
r24 :- f22, f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c26 .
? :: c25 .
r27 :- f22, not(f23), c26 .
utility( r27 , 0 ).
query( r27 ).
r28 :- f22, not(f23), c25 .
utility( r28 , 0 ).
query( r28 ).
? :: c30 .
? :: c29 .
0.1 :: f31 .
r32 :- not(f22), c30, f31 .
utility( r32 , 0 ).
query( r32 ).
? :: c34 .
? :: c33 .
r35 :- not(f22), c30, not(f31), c34 .
utility( r35 , 0 ).
query( r35 ).
r36 :- not(f22), c30, not(f31), c33 .
utility( r36 , 0 ).
query( r36 ).
0.1 :: f37 .
r38 :- not(f22), c29, f37 .
utility( r38 , 0 ).
query( r38 ).
? :: c40 .
? :: c39 .
r41 :- not(f22), c29, not(f37), c40 .
utility( r41 , 0 ).
query( r41 ).
r42 :- not(f22), c29, not(f37), c39 .
utility( r42 , 1 ).
query( r42 ).
