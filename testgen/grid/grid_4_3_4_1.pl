0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
0.1 :: f4 .
r5 :- f1, f2, f3, f4 .
utility( r5 , 0 ).
query( r5 ).
? :: c6 .
r7 :- f1, f2, f3, not(f4), c6 .
utility( r7 , 0 ).
query( r7 ).
? :: c10 .
? :: c9 .
? :: c8 .
0.1 :: f11 .
r12 :- f1, f2, not(f3), c10, f11 .
utility( r12 , 0 ).
query( r12 ).
? :: c13 .
r14 :- f1, f2, not(f3), c10, not(f11), c13 .
utility( r14 , 0 ).
query( r14 ).
r15 :- f1, f2, not(f3), c9 .
utility( r15 , 1 ).
query( r15 ).
0.1 :: f16 .
r17 :- f1, f2, not(f3), c8, f16 .
utility( r17 , 0 ).
query( r17 ).
? :: c19 .
? :: c18 .
r20 :- f1, f2, not(f3), c8, not(f16), c19 .
utility( r20 , 0 ).
query( r20 ).
r21 :- f1, f2, not(f3), c8, not(f16), c18 .
utility( r21 , 0 ).
query( r21 ).
? :: c22 .
0.1 :: f23 .
0.1 :: f24 .
r25 :- f1, not(f2), c22, f23, f24 .
utility( r25 , 0 ).
query( r25 ).
? :: c27 .
? :: c26 .
r28 :- f1, not(f2), c22, f23, not(f24), c27 .
utility( r28 , 0 ).
query( r28 ).
r29 :- f1, not(f2), c22, f23, not(f24), c26 .
utility( r29 , 0 ).
query( r29 ).
? :: c32 .
? :: c31 .
? :: c30 .
0.1 :: f33 .
r34 :- f1, not(f2), c22, not(f23), c32, f33 .
utility( r34 , 0 ).
query( r34 ).
? :: c35 .
r36 :- f1, not(f2), c22, not(f23), c32, not(f33), c35 .
utility( r36 , 0 ).
query( r36 ).
r37 :- f1, not(f2), c22, not(f23), c31 .
utility( r37 , 1 ).
query( r37 ).
0.1 :: f38 .
r39 :- f1, not(f2), c22, not(f23), c30, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c41 .
? :: c40 .
r42 :- f1, not(f2), c22, not(f23), c30, not(f38), c41 .
utility( r42 , 0 ).
query( r42 ).
r43 :- f1, not(f2), c22, not(f23), c30, not(f38), c40 .
utility( r43 , 0 ).
query( r43 ).
? :: c46 .
? :: c45 .
? :: c44 .
r47 :- not(f1), c46 .
utility( r47 , 0 ).
query( r47 ).
0.1 :: f48 .
0.1 :: f49 .
r50 :- not(f1), c45, f48, f49 .
utility( r50 , 0 ).
query( r50 ).
? :: c51 .
r52 :- not(f1), c45, f48, not(f49), c51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
0.1 :: f54 .
r55 :- not(f1), c45, not(f48), c53, f54 .
utility( r55 , 0 ).
query( r55 ).
? :: c56 .
r57 :- not(f1), c45, not(f48), c53, not(f54), c56 .
utility( r57 , 0 ).
query( r57 ).
0.1 :: f58 .
0.1 :: f59 .
0.1 :: f60 .
r61 :- not(f1), c44, f58, f59, f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c62 .
r63 :- not(f1), c44, f58, f59, not(f60), c62 .
utility( r63 , 0 ).
query( r63 ).
? :: c66 .
? :: c65 .
? :: c64 .
0.1 :: f67 .
r68 :- not(f1), c44, f58, not(f59), c66, f67 .
utility( r68 , 0 ).
query( r68 ).
? :: c69 .
r70 :- not(f1), c44, f58, not(f59), c66, not(f67), c69 .
utility( r70 , 0 ).
query( r70 ).
r71 :- not(f1), c44, f58, not(f59), c65 .
utility( r71 , 1 ).
query( r71 ).
0.1 :: f72 .
r73 :- not(f1), c44, f58, not(f59), c64, f72 .
utility( r73 , 0 ).
query( r73 ).
? :: c75 .
? :: c74 .
r76 :- not(f1), c44, f58, not(f59), c64, not(f72), c75 .
utility( r76 , 0 ).
query( r76 ).
r77 :- not(f1), c44, f58, not(f59), c64, not(f72), c74 .
utility( r77 , 0 ).
query( r77 ).
? :: c78 .
0.1 :: f79 .
0.1 :: f80 .
r81 :- not(f1), c44, not(f58), c78, f79, f80 .
utility( r81 , 0 ).
query( r81 ).
? :: c82 .
r83 :- not(f1), c44, not(f58), c78, f79, not(f80), c82 .
utility( r83 , 0 ).
query( r83 ).
? :: c86 .
? :: c85 .
? :: c84 .
0.1 :: f87 .
r88 :- not(f1), c44, not(f58), c78, not(f79), c86, f87 .
utility( r88 , 0 ).
query( r88 ).
? :: c89 .
r90 :- not(f1), c44, not(f58), c78, not(f79), c86, not(f87), c89 .
utility( r90 , 0 ).
query( r90 ).
r91 :- not(f1), c44, not(f58), c78, not(f79), c85 .
utility( r91 , 1 ).
query( r91 ).
0.1 :: f92 .
r93 :- not(f1), c44, not(f58), c78, not(f79), c84, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c95 .
? :: c94 .
r96 :- not(f1), c44, not(f58), c78, not(f79), c84, not(f92), c95 .
utility( r96 , 0 ).
query( r96 ).
r97 :- not(f1), c44, not(f58), c78, not(f79), c84, not(f92), c94 .
utility( r97 , 0 ).
query( r97 ).
