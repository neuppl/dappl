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
? :: c9 .
? :: c8 .
0.1 :: f10 .
r11 :- f1, f2, not(f3), c9, f10 .
utility( r11 , 0 ).
query( r11 ).
? :: c12 .
r13 :- f1, f2, not(f3), c9, not(f10), c12 .
utility( r13 , 0 ).
query( r13 ).
0.1 :: f14 .
r15 :- f1, f2, not(f3), c8, f14 .
utility( r15 , 0 ).
query( r15 ).
? :: c17 .
? :: c16 .
r18 :- f1, f2, not(f3), c8, not(f14), c17 .
utility( r18 , 0 ).
query( r18 ).
r19 :- f1, f2, not(f3), c8, not(f14), c16 .
utility( r19 , 0 ).
query( r19 ).
? :: c21 .
? :: c20 .
0.1 :: f22 .
0.1 :: f23 .
r24 :- f1, not(f2), c21, f22, f23 .
utility( r24 , 0 ).
query( r24 ).
? :: c25 .
r26 :- f1, not(f2), c21, f22, not(f23), c25 .
utility( r26 , 0 ).
query( r26 ).
? :: c28 .
? :: c27 .
0.1 :: f29 .
r30 :- f1, not(f2), c21, not(f22), c28, f29 .
utility( r30 , 0 ).
query( r30 ).
? :: c31 .
r32 :- f1, not(f2), c21, not(f22), c28, not(f29), c31 .
utility( r32 , 0 ).
query( r32 ).
0.1 :: f33 .
r34 :- f1, not(f2), c21, not(f22), c27, f33 .
utility( r34 , 0 ).
query( r34 ).
? :: c36 .
? :: c35 .
r37 :- f1, not(f2), c21, not(f22), c27, not(f33), c36 .
utility( r37 , 0 ).
query( r37 ).
r38 :- f1, not(f2), c21, not(f22), c27, not(f33), c35 .
utility( r38 , 0 ).
query( r38 ).
0.1 :: f39 .
0.1 :: f40 .
r41 :- f1, not(f2), c20, f39, f40 .
utility( r41 , 0 ).
query( r41 ).
? :: c43 .
? :: c42 .
r44 :- f1, not(f2), c20, f39, not(f40), c43 .
utility( r44 , 0 ).
query( r44 ).
r45 :- f1, not(f2), c20, f39, not(f40), c42 .
utility( r45 , 0 ).
query( r45 ).
? :: c47 .
? :: c46 .
0.1 :: f48 .
r49 :- f1, not(f2), c20, not(f39), c47, f48 .
utility( r49 , 0 ).
query( r49 ).
? :: c51 .
? :: c50 .
r52 :- f1, not(f2), c20, not(f39), c47, not(f48), c51 .
utility( r52 , 0 ).
query( r52 ).
r53 :- f1, not(f2), c20, not(f39), c47, not(f48), c50 .
utility( r53 , 0 ).
query( r53 ).
0.1 :: f54 .
r55 :- f1, not(f2), c20, not(f39), c46, f54 .
utility( r55 , 0 ).
query( r55 ).
? :: c58 .
? :: c57 .
? :: c56 .
r59 :- f1, not(f2), c20, not(f39), c46, not(f54), c58 .
utility( r59 , 0 ).
query( r59 ).
r60 :- f1, not(f2), c20, not(f39), c46, not(f54), c57 .
utility( r60 , 0 ).
query( r60 ).
r61 :- f1, not(f2), c20, not(f39), c46, not(f54), c56 .
utility( r61 , 0 ).
query( r61 ).
? :: c63 .
? :: c62 .
0.1 :: f64 .
0.1 :: f65 .
0.1 :: f66 .
r67 :- not(f1), c63, f64, f65, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c69 .
? :: c68 .
r70 :- not(f1), c63, f64, f65, not(f66), c69 .
utility( r70 , 0 ).
query( r70 ).
r71 :- not(f1), c63, f64, f65, not(f66), c68 .
utility( r71 , 0 ).
query( r71 ).
? :: c73 .
? :: c72 .
0.1 :: f74 .
r75 :- not(f1), c63, f64, not(f65), c73, f74 .
utility( r75 , 0 ).
query( r75 ).
? :: c77 .
? :: c76 .
r78 :- not(f1), c63, f64, not(f65), c73, not(f74), c77 .
utility( r78 , 0 ).
query( r78 ).
r79 :- not(f1), c63, f64, not(f65), c73, not(f74), c76 .
utility( r79 , 0 ).
query( r79 ).
0.1 :: f80 .
r81 :- not(f1), c63, f64, not(f65), c72, f80 .
utility( r81 , 0 ).
query( r81 ).
? :: c84 .
? :: c83 .
? :: c82 .
r85 :- not(f1), c63, f64, not(f65), c72, not(f80), c84 .
utility( r85 , 0 ).
query( r85 ).
r86 :- not(f1), c63, f64, not(f65), c72, not(f80), c83 .
utility( r86 , 0 ).
query( r86 ).
r87 :- not(f1), c63, f64, not(f65), c72, not(f80), c82 .
utility( r87 , 0 ).
query( r87 ).
? :: c89 .
? :: c88 .
0.1 :: f90 .
0.1 :: f91 .
r92 :- not(f1), c63, not(f64), c89, f90, f91 .
utility( r92 , 0 ).
query( r92 ).
? :: c94 .
? :: c93 .
r95 :- not(f1), c63, not(f64), c89, f90, not(f91), c94 .
utility( r95 , 0 ).
query( r95 ).
r96 :- not(f1), c63, not(f64), c89, f90, not(f91), c93 .
utility( r96 , 0 ).
query( r96 ).
? :: c98 .
? :: c97 .
0.1 :: f99 .
r100 :- not(f1), c63, not(f64), c89, not(f90), c98, f99 .
utility( r100 , 0 ).
query( r100 ).
? :: c101 .
r102 :- not(f1), c63, not(f64), c89, not(f90), c98, not(f99), c101 .
utility( r102 , 0 ).
query( r102 ).
0.1 :: f103 .
r104 :- not(f1), c63, not(f64), c89, not(f90), c97, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c106 .
? :: c105 .
r107 :- not(f1), c63, not(f64), c89, not(f90), c97, not(f103), c106 .
utility( r107 , 0 ).
query( r107 ).
r108 :- not(f1), c63, not(f64), c89, not(f90), c97, not(f103), c105 .
utility( r108 , 0 ).
query( r108 ).
0.1 :: f109 .
0.1 :: f110 .
r111 :- not(f1), c63, not(f64), c88, f109, f110 .
utility( r111 , 0 ).
query( r111 ).
? :: c113 .
? :: c112 .
r114 :- not(f1), c63, not(f64), c88, f109, not(f110), c113 .
utility( r114 , 0 ).
query( r114 ).
r115 :- not(f1), c63, not(f64), c88, f109, not(f110), c112 .
utility( r115 , 0 ).
query( r115 ).
? :: c117 .
? :: c116 .
0.1 :: f118 .
r119 :- not(f1), c63, not(f64), c88, not(f109), c117, f118 .
utility( r119 , 0 ).
query( r119 ).
? :: c121 .
? :: c120 .
r122 :- not(f1), c63, not(f64), c88, not(f109), c117, not(f118), c121 .
utility( r122 , 0 ).
query( r122 ).
r123 :- not(f1), c63, not(f64), c88, not(f109), c117, not(f118), c120 .
utility( r123 , 0 ).
query( r123 ).
0.1 :: f124 .
r125 :- not(f1), c63, not(f64), c88, not(f109), c116, f124 .
utility( r125 , 0 ).
query( r125 ).
? :: c128 .
? :: c127 .
? :: c126 .
r129 :- not(f1), c63, not(f64), c88, not(f109), c116, not(f124), c128 .
utility( r129 , 0 ).
query( r129 ).
r130 :- not(f1), c63, not(f64), c88, not(f109), c116, not(f124), c127 .
utility( r130 , 0 ).
query( r130 ).
r131 :- not(f1), c63, not(f64), c88, not(f109), c116, not(f124), c126 .
utility( r131 , 0 ).
query( r131 ).
r132 :- not(f1), c62 .
utility( r132 , 0 ).
query( r132 ).
