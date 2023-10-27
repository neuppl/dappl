1.0 :: f1 .
0.0 :: f2 .
0.5 :: f3 .
0.0001 :: f4 .
0.0001 :: f5 .
r6 :- f1, not(f4), f3 .
r6 :- f2, not(f1), f3 .
r7 :- f1, not(f5), not(f3) .
r7 :- f2, not(f1), not(f3) .
0.5 :: f8 .
0.0001 :: f9 .
0.0001 :: f10 .
r11 :- r6, not(f9), f8 .
r11 :- r7, not(r6), f8 .
r12 :- r6, not(f10), not(f8) .
r12 :- r7, not(r6), not(f8) .
0.5 :: f13 .
0.0001 :: f14 .
0.0001 :: f15 .
r16 :- r11, not(f14), f13 .
r16 :- r12, not(r11), f13 .
r17 :- r11, not(f15), not(f13) .
r17 :- r12, not(r11), not(f13) .
0.5 :: f18 .
0.0001 :: f19 .
0.0001 :: f20 .
r21 :- r16, not(f19), f18 .
r21 :- r17, not(r16), f18 .
r22 :- r16, not(f20), not(f18) .
r22 :- r17, not(r16), not(f18) .
r23 :- r21 .
r23 :- r22 .
evidence( r23 , false ).
? :: c31 .
? :: c30 .
? :: c29 .
? :: c28 .
? :: c27 .
? :: c26 .
? :: c25 .
? :: c24 .
r53 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, not(r6) .
utility( r53 , 68 ).
? :: c52 .
? :: c51 .
? :: c50 .
? :: c49 .
? :: c48 .
? :: c47 .
? :: c46 .
r33 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, not(r7) .
utility( r33 , 29 ).
r32 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, r7 .
utility( r32 , 21 ).
r35 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), not(r11) .
utility( r35 , 97 ).
r34 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), r11 .
utility( r34 , 81 ).
r37 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), not(r12) .
utility( r37 , 76 ).
r36 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), r12 .
utility( r36 , 83 ).
r39 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), not(r16) .
utility( r39 , 31 ).
r38 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), r16 .
utility( r38 , 30 ).
r41 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), not(r17) .
utility( r41 , 39 ).
r40 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), r17 .
utility( r40 , 54 ).
r43 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), not(r21) .
utility( r43 , 14 ).
r42 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), r21 .
utility( r42 , 24 ).
r45 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(r22) .
utility( r45 , 67 ).
r44 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), r22 .
utility( r44 , 89 ).
query( c52 ).
query( c51 ).
query( c50 ).
query( c49 ).
query( c48 ).
query( c47 ).
query( c46 ).
r75 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), not(r7) .
utility( r75 , 23 ).
? :: c74 .
? :: c73 .
? :: c72 .
? :: c71 .
? :: c70 .
? :: c69 .
? :: c68 .
r55 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), c74, not(r6) .
utility( r55 , 99 ).
r54 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), c74, r6 .
utility( r54 , 87 ).
r57 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(c74), not(r11) .
utility( r57 , 21 ).
r56 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(c74), r11 .
utility( r56 , 26 ).
r59 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(c74), not(r12) .
utility( r59 , 93 ).
r58 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(c74), r12 .
utility( r58 , 76 ).
r61 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(c74), not(r16) .
utility( r61 , 68 ).
r60 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(c74), r16 .
utility( r60 , 95 ).
r63 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(c74), not(r17) .
utility( r63 , 62 ).
r62 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(c74), r17 .
utility( r62 , 63 ).
r65 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(c74), not(r21) .
utility( r65 , 36 ).
r64 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(c74), r21 .
utility( r64 , 73 ).
r67 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(r22) .
utility( r67 , 98 ).
r66 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), r22 .
utility( r66 , 77 ).
query( c74 ).
query( c73 ).
query( c72 ).
query( c71 ).
query( c70 ).
query( c69 ).
query( c68 ).
r97 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), not(r11) .
utility( r97 , 4 ).
? :: c96 .
? :: c95 .
? :: c94 .
? :: c93 .
? :: c92 .
? :: c91 .
? :: c90 .
r77 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), not(c93), not(c94), not(c95), c96, not(r6) .
utility( r77 , 11 ).
r76 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), not(c93), not(c94), not(c95), c96, r6 .
utility( r76 , 40 ).
r79 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), not(c93), not(c94), c95, not(c96), not(r7) .
utility( r79 , 76 ).
r78 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), not(c93), not(c94), c95, not(c96), r7 .
utility( r78 , 38 ).
r81 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), not(c93), c94, not(c95), not(c96), not(r12) .
utility( r81 , 70 ).
r80 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), not(c93), c94, not(c95), not(c96), r12 .
utility( r80 , 20 ).
r83 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), c93, not(c94), not(c95), not(c96), not(r16) .
utility( r83 , 37 ).
r82 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), not(c92), c93, not(c94), not(c95), not(c96), r16 .
utility( r82 , 55 ).
r85 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), c92, not(c93), not(c94), not(c95), not(c96), not(r17) .
utility( r85 , 90 ).
r84 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), not(c91), c92, not(c93), not(c94), not(c95), not(c96), r17 .
utility( r84 , 88 ).
r87 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), c91, not(c92), not(c93), not(c94), not(c95), not(c96), not(r21) .
utility( r87 , 7 ).
r86 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c90), c91, not(c92), not(c93), not(c94), not(c95), not(c96), r21 .
utility( r86 , 10 ).
r89 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c90, not(c91), not(c92), not(c93), not(c94), not(c95), not(c96), not(r22) .
utility( r89 , 43 ).
r88 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c90, not(c91), not(c92), not(c93), not(c94), not(c95), not(c96), r22 .
utility( r88 , 51 ).
query( c96 ).
query( c95 ).
query( c94 ).
query( c93 ).
query( c92 ).
query( c91 ).
query( c90 ).
r119 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), not(r12) .
utility( r119 , 45 ).
? :: c118 .
? :: c117 .
? :: c116 .
? :: c115 .
? :: c114 .
? :: c113 .
? :: c112 .
r99 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), not(c115), not(c116), not(c117), c118, not(r6) .
utility( r99 , 93 ).
r98 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), not(c115), not(c116), not(c117), c118, r6 .
utility( r98 , 95 ).
r101 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), not(c115), not(c116), c117, not(c118), not(r7) .
utility( r101 , 57 ).
r100 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), not(c115), not(c116), c117, not(c118), r7 .
utility( r100 , 61 ).
r103 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), not(c115), c116, not(c117), not(c118), not(r11) .
utility( r103 , 53 ).
r102 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), not(c115), c116, not(c117), not(c118), r11 .
utility( r102 , 32 ).
r105 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), c115, not(c116), not(c117), not(c118), not(r16) .
utility( r105 , 82 ).
r104 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), not(c114), c115, not(c116), not(c117), not(c118), r16 .
utility( r104 , 92 ).
r107 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), c114, not(c115), not(c116), not(c117), not(c118), not(r17) .
utility( r107 , 83 ).
r106 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), not(c113), c114, not(c115), not(c116), not(c117), not(c118), r17 .
utility( r106 , 31 ).
r109 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), c113, not(c114), not(c115), not(c116), not(c117), not(c118), not(r21) .
utility( r109 , 7 ).
r108 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c112), c113, not(c114), not(c115), not(c116), not(c117), not(c118), r21 .
utility( r108 , 53 ).
r111 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c112, not(c113), not(c114), not(c115), not(c116), not(c117), not(c118), not(r22) .
utility( r111 , 60 ).
r110 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c112, not(c113), not(c114), not(c115), not(c116), not(c117), not(c118), r22 .
utility( r110 , 65 ).
query( c118 ).
query( c117 ).
query( c116 ).
query( c115 ).
query( c114 ).
query( c113 ).
query( c112 ).
r141 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), not(r16) .
utility( r141 , 29 ).
? :: c140 .
? :: c139 .
? :: c138 .
? :: c137 .
? :: c136 .
? :: c135 .
? :: c134 .
r121 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), not(c137), not(c138), not(c139), c140, not(r6) .
utility( r121 , 17 ).
r120 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), not(c137), not(c138), not(c139), c140, r6 .
utility( r120 , 66 ).
r123 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), not(c137), not(c138), c139, not(c140), not(r7) .
utility( r123 , 54 ).
r122 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), not(c137), not(c138), c139, not(c140), r7 .
utility( r122 , 51 ).
r125 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), not(c137), c138, not(c139), not(c140), not(r11) .
utility( r125 , 45 ).
r124 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), not(c137), c138, not(c139), not(c140), r11 .
utility( r124 , 0 ).
r127 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), c137, not(c138), not(c139), not(c140), not(r12) .
utility( r127 , 13 ).
r126 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), not(c136), c137, not(c138), not(c139), not(c140), r12 .
utility( r126 , 66 ).
r129 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), c136, not(c137), not(c138), not(c139), not(c140), not(r17) .
utility( r129 , 60 ).
r128 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), not(c135), c136, not(c137), not(c138), not(c139), not(c140), r17 .
utility( r128 , 67 ).
r131 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), c135, not(c136), not(c137), not(c138), not(c139), not(c140), not(r21) .
utility( r131 , 18 ).
r130 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c134), c135, not(c136), not(c137), not(c138), not(c139), not(c140), r21 .
utility( r130 , 31 ).
r133 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c134, not(c135), not(c136), not(c137), not(c138), not(c139), not(c140), not(r22) .
utility( r133 , 42 ).
r132 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c134, not(c135), not(c136), not(c137), not(c138), not(c139), not(c140), r22 .
utility( r132 , 83 ).
query( c140 ).
query( c139 ).
query( c138 ).
query( c137 ).
query( c136 ).
query( c135 ).
query( c134 ).
r163 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), not(r17) .
utility( r163 , 41 ).
? :: c162 .
? :: c161 .
? :: c160 .
? :: c159 .
? :: c158 .
? :: c157 .
? :: c156 .
r143 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), not(c159), not(c160), not(c161), c162, not(r6) .
utility( r143 , 87 ).
r142 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), not(c159), not(c160), not(c161), c162, r6 .
utility( r142 , 11 ).
r145 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), not(c159), not(c160), c161, not(c162), not(r7) .
utility( r145 , 47 ).
r144 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), not(c159), not(c160), c161, not(c162), r7 .
utility( r144 , 68 ).
r147 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), not(c159), c160, not(c161), not(c162), not(r11) .
utility( r147 , 7 ).
r146 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), not(c159), c160, not(c161), not(c162), r11 .
utility( r146 , 6 ).
r149 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), c159, not(c160), not(c161), not(c162), not(r12) .
utility( r149 , 69 ).
r148 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), not(c158), c159, not(c160), not(c161), not(c162), r12 .
utility( r148 , 70 ).
r151 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), c158, not(c159), not(c160), not(c161), not(c162), not(r16) .
utility( r151 , 29 ).
r150 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), not(c157), c158, not(c159), not(c160), not(c161), not(c162), r16 .
utility( r150 , 46 ).
r153 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), c157, not(c158), not(c159), not(c160), not(c161), not(c162), not(r21) .
utility( r153 , 51 ).
r152 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c156), c157, not(c158), not(c159), not(c160), not(c161), not(c162), r21 .
utility( r152 , 22 ).
r155 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c156, not(c157), not(c158), not(c159), not(c160), not(c161), not(c162), not(r22) .
utility( r155 , 56 ).
r154 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c156, not(c157), not(c158), not(c159), not(c160), not(c161), not(c162), r22 .
utility( r154 , 36 ).
query( c162 ).
query( c161 ).
query( c160 ).
query( c159 ).
query( c158 ).
query( c157 ).
query( c156 ).
r185 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), not(r21) .
utility( r185 , 91 ).
? :: c184 .
? :: c183 .
? :: c182 .
? :: c181 .
? :: c180 .
? :: c179 .
? :: c178 .
r165 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), not(c181), not(c182), not(c183), c184, not(r6) .
utility( r165 , 90 ).
r164 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), not(c181), not(c182), not(c183), c184, r6 .
utility( r164 , 25 ).
r167 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), not(c181), not(c182), c183, not(c184), not(r7) .
utility( r167 , 7 ).
r166 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), not(c181), not(c182), c183, not(c184), r7 .
utility( r166 , 52 ).
r169 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), not(c181), c182, not(c183), not(c184), not(r11) .
utility( r169 , 10 ).
r168 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), not(c181), c182, not(c183), not(c184), r11 .
utility( r168 , 54 ).
r171 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), c181, not(c182), not(c183), not(c184), not(r12) .
utility( r171 , 2 ).
r170 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), not(c180), c181, not(c182), not(c183), not(c184), r12 .
utility( r170 , 38 ).
r173 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), c180, not(c181), not(c182), not(c183), not(c184), not(r16) .
utility( r173 , 80 ).
r172 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), not(c179), c180, not(c181), not(c182), not(c183), not(c184), r16 .
utility( r172 , 38 ).
r175 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), c179, not(c180), not(c181), not(c182), not(c183), not(c184), not(r17) .
utility( r175 , 18 ).
r174 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c178), c179, not(c180), not(c181), not(c182), not(c183), not(c184), r17 .
utility( r174 , 14 ).
r177 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c178, not(c179), not(c180), not(c181), not(c182), not(c183), not(c184), not(r22) .
utility( r177 , 40 ).
r176 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c178, not(c179), not(c180), not(c181), not(c182), not(c183), not(c184), r22 .
utility( r176 , 80 ).
query( c184 ).
query( c183 ).
query( c182 ).
query( c181 ).
query( c180 ).
query( c179 ).
query( c178 ).
r207 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), not(r22) .
utility( r207 , 63 ).
? :: c206 .
? :: c205 .
? :: c204 .
? :: c203 .
? :: c202 .
? :: c201 .
? :: c200 .
r187 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), not(c203), not(c204), not(c205), c206, not(r6) .
utility( r187 , 91 ).
r186 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), not(c203), not(c204), not(c205), c206, r6 .
utility( r186 , 66 ).
r189 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), not(c203), not(c204), c205, not(c206), not(r7) .
utility( r189 , 97 ).
r188 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), not(c203), not(c204), c205, not(c206), r7 .
utility( r188 , 20 ).
r191 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), not(c203), c204, not(c205), not(c206), not(r11) .
utility( r191 , 53 ).
r190 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), not(c203), c204, not(c205), not(c206), r11 .
utility( r190 , 96 ).
r193 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), c203, not(c204), not(c205), not(c206), not(r12) .
utility( r193 , 42 ).
r192 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), not(c202), c203, not(c204), not(c205), not(c206), r12 .
utility( r192 , 5 ).
r195 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), c202, not(c203), not(c204), not(c205), not(c206), not(r16) .
utility( r195 , 88 ).
r194 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), not(c201), c202, not(c203), not(c204), not(c205), not(c206), r16 .
utility( r194 , 24 ).
r197 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), c201, not(c202), not(c203), not(c204), not(c205), not(c206), not(r17) .
utility( r197 , 36 ).
r196 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c200), c201, not(c202), not(c203), not(c204), not(c205), not(c206), r17 .
utility( r196 , 87 ).
r199 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c200, not(c201), not(c202), not(c203), not(c204), not(c205), not(c206), not(r21) .
utility( r199 , 88 ).
r198 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c200, not(c201), not(c202), not(c203), not(c204), not(c205), not(c206), r21 .
utility( r198 , 73 ).
query( c206 ).
query( c205 ).
query( c204 ).
query( c203 ).
query( c202 ).
query( c201 ).
query( c200 ).
query( c31 ).
query( c30 ).
query( c29 ).
query( c28 ).
query( c27 ).
query( c26 ).
query( c25 ).
query( c24 ).
