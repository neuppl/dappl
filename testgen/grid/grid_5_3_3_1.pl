0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
r4 :- f1, f2, f3 .
utility( r4 , 0 ).
query( r4 ).
? :: c6 .
? :: c5 .
r7 :- f1, f2, not(f3), c6 .
utility( r7 , 0 ).
query( r7 ).
r8 :- f1, f2, not(f3), c5 .
utility( r8 , 0 ).
query( r8 ).
? :: c10 .
? :: c9 .
0.1 :: f11 .
r12 :- f1, not(f2), c10, f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c14 .
? :: c13 .
r15 :- f1, not(f2), c10, not(f11), c14 .
utility( r15 , 0 ).
query( r15 ).
r16 :- f1, not(f2), c10, not(f11), c13 .
utility( r16 , 0 ).
query( r16 ).
0.1 :: f17 .
r18 :- f1, not(f2), c9, f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c20 .
? :: c19 .
r21 :- f1, not(f2), c9, not(f17), c20 .
utility( r21 , 0 ).
query( r21 ).
r22 :- f1, not(f2), c9, not(f17), c19 .
utility( r22 , 0 ).
query( r22 ).
? :: c25 .
? :: c24 .
? :: c23 .
0.1 :: f26 .
0.1 :: f27 .
r28 :- not(f1), c25, f26, f27 .
utility( r28 , 0 ).
query( r28 ).
? :: c30 .
? :: c29 .
r31 :- not(f1), c25, f26, not(f27), c30 .
utility( r31 , 0 ).
query( r31 ).
r32 :- not(f1), c25, f26, not(f27), c29 .
utility( r32 , 0 ).
query( r32 ).
? :: c34 .
? :: c33 .
0.1 :: f35 .
r36 :- not(f1), c25, not(f26), c34, f35 .
utility( r36 , 0 ).
query( r36 ).
? :: c38 .
? :: c37 .
r39 :- not(f1), c25, not(f26), c34, not(f35), c38 .
utility( r39 , 0 ).
query( r39 ).
r40 :- not(f1), c25, not(f26), c34, not(f35), c37 .
utility( r40 , 0 ).
query( r40 ).
0.1 :: f41 .
r42 :- not(f1), c25, not(f26), c33, f41 .
utility( r42 , 0 ).
query( r42 ).
? :: c44 .
? :: c43 .
r45 :- not(f1), c25, not(f26), c33, not(f41), c44 .
utility( r45 , 0 ).
query( r45 ).
r46 :- not(f1), c25, not(f26), c33, not(f41), c43 .
utility( r46 , 0 ).
query( r46 ).
r47 :- not(f1), c24 .
utility( r47 , 0 ).
query( r47 ).
0.1 :: f48 .
0.1 :: f49 .
r50 :- not(f1), c23, f48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c52 .
? :: c51 .
r53 :- not(f1), c23, f48, not(f49), c52 .
utility( r53 , 0 ).
query( r53 ).
r54 :- not(f1), c23, f48, not(f49), c51 .
utility( r54 , 0 ).
query( r54 ).
? :: c56 .
? :: c55 .
0.1 :: f57 .
r58 :- not(f1), c23, not(f48), c56, f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c60 .
? :: c59 .
r61 :- not(f1), c23, not(f48), c56, not(f57), c60 .
utility( r61 , 0 ).
query( r61 ).
r62 :- not(f1), c23, not(f48), c56, not(f57), c59 .
utility( r62 , 0 ).
query( r62 ).
0.1 :: f63 .
r64 :- not(f1), c23, not(f48), c55, f63 .
utility( r64 , 0 ).
query( r64 ).
? :: c66 .
? :: c65 .
r67 :- not(f1), c23, not(f48), c55, not(f63), c66 .
utility( r67 , 0 ).
query( r67 ).
r68 :- not(f1), c23, not(f48), c55, not(f63), c65 .
utility( r68 , 0 ).
query( r68 ).
