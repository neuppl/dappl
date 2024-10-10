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
? :: c7 .
0.1 :: f8 .
r9 :- f1, not(f2), c7, f8 .
utility( r9 , 1 ).
query( r9 ).
? :: c10 .
r11 :- f1, not(f2), c7, not(f8), c10 .
utility( r11 , 1 ).
query( r11 ).
? :: c14 .
? :: c13 .
? :: c12 .
0.1 :: f15 .
0.1 :: f16 .
r17 :- not(f1), c14, f15, f16 .
utility( r17 , 1 ).
query( r17 ).
? :: c18 .
r19 :- not(f1), c14, f15, not(f16), c18 .
utility( r19 , 1 ).
query( r19 ).
? :: c20 .
0.1 :: f21 .
r22 :- not(f1), c14, not(f15), c20, f21 .
utility( r22 , 1 ).
query( r22 ).
? :: c23 .
r24 :- not(f1), c14, not(f15), c20, not(f21), c23 .
utility( r24 , 1 ).
query( r24 ).
0.1 :: f25 .
0.1 :: f26 .
0.1 :: f27 .
r28 :- not(f1), c13, f25, f26, f27 .
utility( r28 , 0 ).
query( r28 ).
? :: c30 .
? :: c29 .
r31 :- not(f1), c13, f25, f26, not(f27), c30 .
utility( r31 , 0 ).
query( r31 ).
r32 :- not(f1), c13, f25, f26, not(f27), c29 .
utility( r32 , 0 ).
query( r32 ).
? :: c33 .
0.1 :: f34 .
r35 :- not(f1), c13, f25, not(f26), c33, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
r38 :- not(f1), c13, f25, not(f26), c33, not(f34), c37 .
utility( r38 , 0 ).
query( r38 ).
r39 :- not(f1), c13, f25, not(f26), c33, not(f34), c36 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
0.1 :: f41 .
0.1 :: f42 .
r43 :- not(f1), c13, not(f25), c40, f41, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c45 .
? :: c44 .
r46 :- not(f1), c13, not(f25), c40, f41, not(f42), c45 .
utility( r46 , 0 ).
query( r46 ).
r47 :- not(f1), c13, not(f25), c40, f41, not(f42), c44 .
utility( r47 , 0 ).
query( r47 ).
? :: c48 .
0.1 :: f49 .
r50 :- not(f1), c13, not(f25), c40, not(f41), c48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c52 .
? :: c51 .
r53 :- not(f1), c13, not(f25), c40, not(f41), c48, not(f49), c52 .
utility( r53 , 0 ).
query( r53 ).
r54 :- not(f1), c13, not(f25), c40, not(f41), c48, not(f49), c51 .
utility( r54 , 0 ).
query( r54 ).
0.1 :: f55 .
0.1 :: f56 .
r57 :- not(f1), c12, f55, f56 .
utility( r57 , 1 ).
query( r57 ).
? :: c58 .
r59 :- not(f1), c12, f55, not(f56), c58 .
utility( r59 , 1 ).
query( r59 ).
? :: c62 .
? :: c61 .
? :: c60 .
0.1 :: f63 .
r64 :- not(f1), c12, not(f55), c62, f63 .
utility( r64 , 1 ).
query( r64 ).
? :: c65 .
r66 :- not(f1), c12, not(f55), c62, not(f63), c65 .
utility( r66 , 1 ).
query( r66 ).
0.1 :: f67 .
0.1 :: f68 .
r69 :- not(f1), c12, not(f55), c61, f67, f68 .
utility( r69 , 0 ).
query( r69 ).
? :: c70 .
r71 :- not(f1), c12, not(f55), c61, f67, not(f68), c70 .
utility( r71 , 0 ).
query( r71 ).
? :: c72 .
0.1 :: f73 .
r74 :- not(f1), c12, not(f55), c61, not(f67), c72, f73 .
utility( r74 , 0 ).
query( r74 ).
? :: c75 .
r76 :- not(f1), c12, not(f55), c61, not(f67), c72, not(f73), c75 .
utility( r76 , 0 ).
query( r76 ).
0.1 :: f77 .
0.1 :: f78 .
r79 :- not(f1), c12, not(f55), c60, f77, f78 .
utility( r79 , 0 ).
query( r79 ).
? :: c80 .
r81 :- not(f1), c12, not(f55), c60, f77, not(f78), c80 .
utility( r81 , 0 ).
query( r81 ).
? :: c84 .
? :: c83 .
? :: c82 .
r85 :- not(f1), c12, not(f55), c60, not(f77), c84 .
utility( r85 , 1 ).
query( r85 ).
0.1 :: f86 .
r87 :- not(f1), c12, not(f55), c60, not(f77), c83, f86 .
utility( r87 , 0 ).
query( r87 ).
? :: c88 .
r89 :- not(f1), c12, not(f55), c60, not(f77), c83, not(f86), c88 .
utility( r89 , 0 ).
query( r89 ).
0.1 :: f90 .
r91 :- not(f1), c12, not(f55), c60, not(f77), c82, f90 .
utility( r91 , 0 ).
query( r91 ).
? :: c92 .
r93 :- not(f1), c12, not(f55), c60, not(f77), c82, not(f90), c92 .
utility( r93 , 0 ).
query( r93 ).
