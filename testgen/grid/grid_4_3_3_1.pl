0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
r4 :- f1, f2, f3 .
utility( r4 , 1 ).
query( r4 ).
? :: c5 .
r6 :- f1, f2, not(f3), c5 .
utility( r6 , 1 ).
query( r6 ).
? :: c8 .
? :: c7 .
0.1 :: f9 .
r10 :- f1, not(f2), c8, f9 .
utility( r10 , 0 ).
query( r10 ).
? :: c11 .
r12 :- f1, not(f2), c8, not(f9), c11 .
utility( r12 , 0 ).
query( r12 ).
0.1 :: f13 .
r14 :- f1, not(f2), c7, f13 .
utility( r14 , 1 ).
query( r14 ).
? :: c15 .
r16 :- f1, not(f2), c7, not(f13), c15 .
utility( r16 , 1 ).
query( r16 ).
? :: c18 .
? :: c17 .
0.1 :: f19 .
0.1 :: f20 .
r21 :- not(f1), c18, f19, f20 .
utility( r21 , 1 ).
query( r21 ).
? :: c22 .
r23 :- not(f1), c18, f19, not(f20), c22 .
utility( r23 , 1 ).
query( r23 ).
? :: c25 .
? :: c24 .
r26 :- not(f1), c18, not(f19), c25 .
utility( r26 , 0 ).
query( r26 ).
0.1 :: f27 .
r28 :- not(f1), c18, not(f19), c24, f27 .
utility( r28 , 1 ).
query( r28 ).
? :: c29 .
r30 :- not(f1), c18, not(f19), c24, not(f27), c29 .
utility( r30 , 1 ).
query( r30 ).
0.1 :: f31 .
0.1 :: f32 .
r33 :- not(f1), c17, f31, f32 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
r35 :- not(f1), c17, f31, not(f32), c34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
0.1 :: f38 .
r39 :- not(f1), c17, not(f31), c37, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
r41 :- not(f1), c17, not(f31), c37, not(f38), c40 .
utility( r41 , 0 ).
query( r41 ).
0.1 :: f42 .
r43 :- not(f1), c17, not(f31), c36, f42 .
utility( r43 , 1 ).
query( r43 ).
? :: c44 .
r45 :- not(f1), c17, not(f31), c36, not(f42), c44 .
utility( r45 , 1 ).
query( r45 ).
