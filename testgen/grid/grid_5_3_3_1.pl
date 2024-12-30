0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
r4 :- f1, f2, f3 .
utility( r4 , 0 ).
query( r4 ).
? :: c5 .
r6 :- f1, f2, not(f3), c5 .
utility( r6 , 0 ).
query( r6 ).
? :: c9 .
? :: c8 .
? :: c7 .
0.1 :: f10 .
r11 :- f1, not(f2), c9, f10 .
utility( r11 , 0 ).
query( r11 ).
? :: c12 .
r13 :- f1, not(f2), c9, not(f10), c12 .
utility( r13 , 0 ).
query( r13 ).
0.1 :: f14 .
r15 :- f1, not(f2), c8, f14 .
utility( r15 , 0 ).
query( r15 ).
? :: c16 .
r17 :- f1, not(f2), c8, not(f14), c16 .
utility( r17 , 0 ).
query( r17 ).
0.1 :: f18 .
r19 :- f1, not(f2), c7, f18 .
utility( r19 , 0 ).
query( r19 ).
? :: c22 .
? :: c21 .
? :: c20 .
r23 :- f1, not(f2), c7, not(f18), c22 .
utility( r23 , 0 ).
query( r23 ).
r24 :- f1, not(f2), c7, not(f18), c21 .
utility( r24 , 0 ).
query( r24 ).
r25 :- f1, not(f2), c7, not(f18), c20 .
utility( r25 , 0 ).
query( r25 ).
? :: c26 .
0.1 :: f27 .
0.1 :: f28 .
r29 :- not(f1), c26, f27, f28 .
utility( r29 , 0 ).
query( r29 ).
? :: c30 .
r31 :- not(f1), c26, f27, not(f28), c30 .
utility( r31 , 0 ).
query( r31 ).
? :: c34 .
? :: c33 .
? :: c32 .
0.1 :: f35 .
r36 :- not(f1), c26, not(f27), c34, f35 .
utility( r36 , 0 ).
query( r36 ).
? :: c37 .
r38 :- not(f1), c26, not(f27), c34, not(f35), c37 .
utility( r38 , 0 ).
query( r38 ).
0.1 :: f39 .
r40 :- not(f1), c26, not(f27), c33, f39 .
utility( r40 , 0 ).
query( r40 ).
? :: c41 .
r42 :- not(f1), c26, not(f27), c33, not(f39), c41 .
utility( r42 , 0 ).
query( r42 ).
0.1 :: f43 .
r44 :- not(f1), c26, not(f27), c32, f43 .
utility( r44 , 0 ).
query( r44 ).
? :: c47 .
? :: c46 .
? :: c45 .
r48 :- not(f1), c26, not(f27), c32, not(f43), c47 .
utility( r48 , 0 ).
query( r48 ).
r49 :- not(f1), c26, not(f27), c32, not(f43), c46 .
utility( r49 , 0 ).
query( r49 ).
r50 :- not(f1), c26, not(f27), c32, not(f43), c45 .
utility( r50 , 0 ).
query( r50 ).
