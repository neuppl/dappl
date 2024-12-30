0.1 :: f10 .
0.1 :: f11 .
r12 :- f10, f11 .
utility( r12 , 1 ).
query( r12 ).
? :: c14 .
? :: c13 .
0.1 :: f15 .
0.1 :: f16 .
r17 :- f10, not(f11), c14, f15, f16 .
utility( r17 , 0 ).
query( r17 ).
? :: c18 .
r19 :- f10, not(f11), c14, f15, not(f16), c18 .
utility( r19 , 0 ).
query( r19 ).
? :: c20 .
0.1 :: f21 .
r22 :- f10, not(f11), c14, not(f15), c20, f21 .
utility( r22 , 0 ).
query( r22 ).
? :: c23 .
r24 :- f10, not(f11), c14, not(f15), c20, not(f21), c23 .
utility( r24 , 0 ).
query( r24 ).
r25 :- f10, not(f11), c13 .
utility( r25 , 1 ).
query( r25 ).
? :: c26 .
0.1 :: f27 .
r28 :- not(f10), c26, f27 .
utility( r28 , 1 ).
query( r28 ).
? :: c30 .
? :: c29 .
0.1 :: f31 .
0.1 :: f32 .
r33 :- not(f10), c26, not(f27), c30, f31, f32 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
r35 :- not(f10), c26, not(f27), c30, f31, not(f32), c34 .
utility( r35 , 0 ).
query( r35 ).
? :: c36 .
0.1 :: f37 .
r38 :- not(f10), c26, not(f27), c30, not(f31), c36, f37 .
utility( r38 , 0 ).
query( r38 ).
? :: c39 .
r40 :- not(f10), c26, not(f27), c30, not(f31), c36, not(f37), c39 .
utility( r40 , 0 ).
query( r40 ).
r41 :- not(f10), c26, not(f27), c29 .
utility( r41 , 1 ).
query( r41 ).
