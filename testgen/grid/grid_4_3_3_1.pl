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
? :: c7 .
0.1 :: f8 .
r9 :- f1, not(f2), c7, f8 .
utility( r9 , 0 ).
query( r9 ).
? :: c10 .
r11 :- f1, not(f2), c7, not(f8), c10 .
utility( r11 , 0 ).
query( r11 ).
? :: c13 .
? :: c12 .
0.1 :: f14 .
0.1 :: f15 .
r16 :- not(f1), c13, f14, f15 .
utility( r16 , 0 ).
query( r16 ).
? :: c17 .
r18 :- not(f1), c13, f14, not(f15), c17 .
utility( r18 , 0 ).
query( r18 ).
? :: c19 .
0.1 :: f20 .
r21 :- not(f1), c13, not(f14), c19, f20 .
utility( r21 , 0 ).
query( r21 ).
? :: c22 .
r23 :- not(f1), c13, not(f14), c19, not(f20), c22 .
utility( r23 , 0 ).
query( r23 ).
0.1 :: f24 .
0.1 :: f25 .
r26 :- not(f1), c12, f24, f25 .
utility( r26 , 1 ).
query( r26 ).
? :: c27 .
r28 :- not(f1), c12, f24, not(f25), c27 .
utility( r28 , 1 ).
query( r28 ).
? :: c31 .
? :: c30 .
? :: c29 .
0.1 :: f32 .
r33 :- not(f1), c12, not(f24), c31, f32 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
r35 :- not(f1), c12, not(f24), c31, not(f32), c34 .
utility( r35 , 0 ).
query( r35 ).
0.1 :: f36 .
r37 :- not(f1), c12, not(f24), c30, f36 .
utility( r37 , 1 ).
query( r37 ).
? :: c38 .
r39 :- not(f1), c12, not(f24), c30, not(f36), c38 .
utility( r39 , 1 ).
query( r39 ).
0.1 :: f40 .
r41 :- not(f1), c12, not(f24), c29, f40 .
utility( r41 , 1 ).
query( r41 ).
? :: c43 .
? :: c42 .
r44 :- not(f1), c12, not(f24), c29, not(f40), c43 .
utility( r44 , 0 ).
query( r44 ).
r45 :- not(f1), c12, not(f24), c29, not(f40), c42 .
utility( r45 , 1 ).
query( r45 ).
