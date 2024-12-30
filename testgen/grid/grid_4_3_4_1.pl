0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
0.1 :: f4 .
r5 :- f1, f2, f3, f4 .
utility( r5 , 0 ).
query( r5 ).
? :: c7 .
? :: c6 .
r8 :- f1, f2, f3, not(f4), c7 .
utility( r8 , 1 ).
query( r8 ).
r9 :- f1, f2, f3, not(f4), c6 .
utility( r9 , 0 ).
query( r9 ).
? :: c10 .
0.1 :: f11 .
r12 :- f1, f2, not(f3), c10, f11 .
utility( r12 , 1 ).
query( r12 ).
? :: c14 .
? :: c13 .
r15 :- f1, f2, not(f3), c10, not(f11), c14 .
utility( r15 , 1 ).
query( r15 ).
r16 :- f1, f2, not(f3), c10, not(f11), c13 .
utility( r16 , 0 ).
query( r16 ).
? :: c17 .
0.1 :: f18 .
0.1 :: f19 .
r20 :- f1, not(f2), c17, f18, f19 .
utility( r20 , 0 ).
query( r20 ).
? :: c22 .
? :: c21 .
r23 :- f1, not(f2), c17, f18, not(f19), c22 .
utility( r23 , 1 ).
query( r23 ).
r24 :- f1, not(f2), c17, f18, not(f19), c21 .
utility( r24 , 0 ).
query( r24 ).
? :: c25 .
0.1 :: f26 .
r27 :- f1, not(f2), c17, not(f18), c25, f26 .
utility( r27 , 1 ).
query( r27 ).
? :: c29 .
? :: c28 .
r30 :- f1, not(f2), c17, not(f18), c25, not(f26), c29 .
utility( r30 , 1 ).
query( r30 ).
r31 :- f1, not(f2), c17, not(f18), c25, not(f26), c28 .
utility( r31 , 0 ).
query( r31 ).
? :: c34 .
? :: c33 .
? :: c32 .
0.1 :: f35 .
0.1 :: f36 .
r37 :- not(f1), c34, f35, f36 .
utility( r37 , 0 ).
query( r37 ).
? :: c38 .
r39 :- not(f1), c34, f35, not(f36), c38 .
utility( r39 , 0 ).
query( r39 ).
? :: c41 .
? :: c40 .
0.1 :: f42 .
r43 :- not(f1), c34, not(f35), c41, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c44 .
r45 :- not(f1), c34, not(f35), c41, not(f42), c44 .
utility( r45 , 0 ).
query( r45 ).
0.1 :: f46 .
r47 :- not(f1), c34, not(f35), c40, f46 .
utility( r47 , 0 ).
query( r47 ).
? :: c49 .
? :: c48 .
r50 :- not(f1), c34, not(f35), c40, not(f46), c49 .
utility( r50 , 0 ).
query( r50 ).
0.1 :: f51 .
r52 :- not(f1), c34, not(f35), c40, not(f46), c48, f51 .
utility( r52 , 1 ).
query( r52 ).
? :: c53 .
r54 :- not(f1), c34, not(f35), c40, not(f46), c48, not(f51), c53 .
utility( r54 , 1 ).
query( r54 ).
0.1 :: f55 .
0.1 :: f56 .
0.1 :: f57 .
r58 :- not(f1), c33, f55, f56, f57 .
utility( r58 , 1 ).
query( r58 ).
? :: c60 .
? :: c59 .
r61 :- not(f1), c33, f55, f56, not(f57), c60 .
utility( r61 , 1 ).
query( r61 ).
r62 :- not(f1), c33, f55, f56, not(f57), c59 .
utility( r62 , 0 ).
query( r62 ).
? :: c63 .
0.1 :: f64 .
r65 :- not(f1), c33, f55, not(f56), c63, f64 .
utility( r65 , 0 ).
query( r65 ).
? :: c67 .
? :: c66 .
r68 :- not(f1), c33, f55, not(f56), c63, not(f64), c67 .
utility( r68 , 1 ).
query( r68 ).
r69 :- not(f1), c33, f55, not(f56), c63, not(f64), c66 .
utility( r69 , 0 ).
query( r69 ).
? :: c70 .
0.1 :: f71 .
0.1 :: f72 .
r73 :- not(f1), c33, not(f55), c70, f71, f72 .
utility( r73 , 0 ).
query( r73 ).
? :: c75 .
? :: c74 .
r76 :- not(f1), c33, not(f55), c70, f71, not(f72), c75 .
utility( r76 , 1 ).
query( r76 ).
r77 :- not(f1), c33, not(f55), c70, f71, not(f72), c74 .
utility( r77 , 0 ).
query( r77 ).
? :: c78 .
0.1 :: f79 .
r80 :- not(f1), c33, not(f55), c70, not(f71), c78, f79 .
utility( r80 , 1 ).
query( r80 ).
? :: c82 .
? :: c81 .
r83 :- not(f1), c33, not(f55), c70, not(f71), c78, not(f79), c82 .
utility( r83 , 1 ).
query( r83 ).
r84 :- not(f1), c33, not(f55), c70, not(f71), c78, not(f79), c81 .
utility( r84 , 0 ).
query( r84 ).
0.1 :: f85 .
r86 :- not(f1), c32, f85 .
utility( r86 , 1 ).
query( r86 ).
? :: c89 .
? :: c88 .
? :: c87 .
0.1 :: f90 .
0.1 :: f91 .
r92 :- not(f1), c32, not(f85), c89, f90, f91 .
utility( r92 , 0 ).
query( r92 ).
? :: c93 .
r94 :- not(f1), c32, not(f85), c89, f90, not(f91), c93 .
utility( r94 , 0 ).
query( r94 ).
? :: c96 .
? :: c95 .
0.1 :: f97 .
r98 :- not(f1), c32, not(f85), c89, not(f90), c96, f97 .
utility( r98 , 0 ).
query( r98 ).
? :: c99 .
r100 :- not(f1), c32, not(f85), c89, not(f90), c96, not(f97), c99 .
utility( r100 , 0 ).
query( r100 ).
r101 :- not(f1), c32, not(f85), c89, not(f90), c95 .
utility( r101 , 0 ).
query( r101 ).
0.1 :: f102 .
0.1 :: f103 .
r104 :- not(f1), c32, not(f85), c88, f102, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c105 .
r106 :- not(f1), c32, not(f85), c88, f102, not(f103), c105 .
utility( r106 , 0 ).
query( r106 ).
? :: c107 .
0.1 :: f108 .
r109 :- not(f1), c32, not(f85), c88, not(f102), c107, f108 .
utility( r109 , 0 ).
query( r109 ).
? :: c110 .
r111 :- not(f1), c32, not(f85), c88, not(f102), c107, not(f108), c110 .
utility( r111 , 0 ).
query( r111 ).
r112 :- not(f1), c32, not(f85), c87 .
utility( r112 , 1 ).
query( r112 ).
