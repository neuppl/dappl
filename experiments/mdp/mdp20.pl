0.038580478894819234 :: f141 .
? :: c144 .
? :: c143 .
? :: c142 .
r147 :- f141, not(c142), not(c143), c144 .
utility( r147 , 31 ).
r146 :- f141, not(c142), c143, not(c144) .
utility( r146 , 30 ).
r145 :- f141, c142, not(c143), not(c144) .
utility( r145 , 76 ).
query( c144 ).
query( c143 ).
query( c142 ).
0.87419947455968494 :: f136 .
? :: c138 .
? :: c137 .
r140 :- not(f141), f136, not(c137), c138 .
utility( r140 , 83 ).
r139 :- not(f141), f136, c137, not(c138) .
utility( r139 , 97 ).
query( c138 ).
query( c137 ).
0.31048868354494596 :: f127 .
? :: c131 .
? :: c130 .
? :: c129 .
? :: c128 .
r135 :- not(f141), not(f136), f127, not(c128), not(c129), not(c130), c131 .
utility( r135 , 81 ).
r134 :- not(f141), not(f136), f127, not(c128), not(c129), c130, not(c131) .
utility( r134 , 29 ).
r133 :- not(f141), not(f136), f127, not(c128), c129, not(c130), not(c131) .
utility( r133 , 21 ).
r132 :- not(f141), not(f136), f127, c128, not(c129), not(c130), not(c131) .
utility( r132 , 61 ).
query( c131 ).
query( c130 ).
query( c129 ).
query( c128 ).
0.39897460707506049 :: f122 .
? :: c124 .
? :: c123 .
r126 :- not(f141), not(f136), not(f127), f122, not(c123), c124 .
utility( r126 , 9 ).
r125 :- not(f141), not(f136), not(f127), f122, c123, not(c124) .
utility( r125 , 96 ).
query( c124 ).
query( c123 ).
0.612944900249 :: f113 .
? :: c117 .
? :: c116 .
? :: c115 .
? :: c114 .
r121 :- not(f141), not(f136), not(f127), not(f122), f113, not(c114), not(c115), not(c116), c117 .
utility( r121 , 1 ).
r120 :- not(f141), not(f136), not(f127), not(f122), f113, not(c114), not(c115), c116, not(c117) .
utility( r120 , 83 ).
r119 :- not(f141), not(f136), not(f127), not(f122), f113, not(c114), c115, not(c116), not(c117) .
utility( r119 , 12 ).
r118 :- not(f141), not(f136), not(f127), not(f122), f113, c114, not(c115), not(c116), not(c117) .
utility( r118 , 58 ).
query( c117 ).
query( c116 ).
query( c115 ).
query( c114 ).
0.33340717986451246 :: f104 .
? :: c108 .
? :: c107 .
? :: c106 .
? :: c105 .
r112 :- not(f141), not(f136), not(f127), not(f122), not(f113), f104, not(c105), not(c106), not(c107), c108 .
utility( r112 , 69 ).
r111 :- not(f141), not(f136), not(f127), not(f122), not(f113), f104, not(c105), not(c106), c107, not(c108) .
utility( r111 , 50 ).
r110 :- not(f141), not(f136), not(f127), not(f122), not(f113), f104, not(c105), c106, not(c107), not(c108) .
utility( r110 , 31 ).
r109 :- not(f141), not(f136), not(f127), not(f122), not(f113), f104, c105, not(c106), not(c107), not(c108) .
utility( r109 , 49 ).
query( c108 ).
query( c107 ).
query( c106 ).
query( c105 ).
0.25058990071920612 :: f99 .
? :: c101 .
? :: c100 .
r103 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), f99, not(c100), c101 .
utility( r103 , 65 ).
r102 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), f99, c100, not(c101) .
utility( r102 , 32 ).
query( c101 ).
query( c100 ).
0.3157515479565719 :: f94 .
? :: c96 .
? :: c95 .
r98 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), f94, not(c95), c96 .
utility( r98 , 71 ).
r97 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), f94, c95, not(c96) .
utility( r97 , 11 ).
query( c96 ).
query( c95 ).
0.45582419777416872 :: f87 .
? :: c90 .
? :: c89 .
? :: c88 .
r93 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), f87, not(c88), not(c89), c90 .
utility( r93 , 36 ).
r92 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), f87, not(c88), c89, not(c90) .
utility( r92 , 48 ).
r91 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), f87, c88, not(c89), not(c90) .
utility( r91 , 24 ).
query( c90 ).
query( c89 ).
query( c88 ).
0.500623928276048 :: f80 .
? :: c83 .
? :: c82 .
? :: c81 .
r86 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), f80, not(c81), not(c82), c83 .
utility( r86 , 71 ).
r85 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), f80, not(c81), c82, not(c83) .
utility( r85 , 86 ).
r84 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), f80, c81, not(c82), not(c83) .
utility( r84 , 17 ).
query( c83 ).
query( c82 ).
query( c81 ).
0.035884070055686917 :: f75 .
? :: c77 .
? :: c76 .
r79 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), f75, not(c76), c77 .
utility( r79 , 0 ).
r78 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), f75, c76, not(c77) .
utility( r78 , 13 ).
query( c77 ).
query( c76 ).
0.87093078758423481 :: f66 .
? :: c70 .
? :: c69 .
? :: c68 .
? :: c67 .
r74 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), f66, not(c67), not(c68), not(c69), c70 .
utility( r74 , 29 ).
r73 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), f66, not(c67), not(c68), c69, not(c70) .
utility( r73 , 13 ).
r72 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), f66, not(c67), c68, not(c69), not(c70) .
utility( r72 , 56 ).
r71 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), f66, c67, not(c68), not(c69), not(c70) .
utility( r71 , 1 ).
query( c70 ).
query( c69 ).
query( c68 ).
query( c67 ).
0.76317234441615656 :: f55 .
? :: c60 .
? :: c59 .
? :: c58 .
? :: c57 .
? :: c56 .
r65 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), f55, not(c56), not(c57), not(c58), not(c59), c60 .
utility( r65 , 93 ).
r64 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), f55, not(c56), not(c57), not(c58), c59, not(c60) .
utility( r64 , 58 ).
r63 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), f55, not(c56), not(c57), c58, not(c59), not(c60) .
utility( r63 , 95 ).
r62 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), f55, not(c56), c57, not(c58), not(c59), not(c60) .
utility( r62 , 89 ).
r61 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), f55, c56, not(c57), not(c58), not(c59), not(c60) .
utility( r61 , 88 ).
query( c60 ).
query( c59 ).
query( c58 ).
query( c57 ).
query( c56 ).
0.62925143901961378 :: f46 .
? :: c50 .
? :: c49 .
? :: c48 .
? :: c47 .
r54 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), f46, not(c47), not(c48), not(c49), c50 .
utility( r54 , 33 ).
r53 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), f46, not(c47), not(c48), c49, not(c50) .
utility( r53 , 78 ).
r52 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), f46, not(c47), c48, not(c49), not(c50) .
utility( r52 , 46 ).
r51 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), f46, c47, not(c48), not(c49), not(c50) .
utility( r51 , 24 ).
query( c50 ).
query( c49 ).
query( c48 ).
query( c47 ).
0.35179904572186588 :: f35 .
? :: c40 .
? :: c39 .
? :: c38 .
? :: c37 .
? :: c36 .
r45 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), f35, not(c36), not(c37), not(c38), not(c39), c40 .
utility( r45 , 92 ).
r44 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), f35, not(c36), not(c37), not(c38), c39, not(c40) .
utility( r44 , 57 ).
r43 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), f35, not(c36), not(c37), c38, not(c39), not(c40) .
utility( r43 , 95 ).
r42 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), f35, not(c36), c37, not(c38), not(c39), not(c40) .
utility( r42 , 69 ).
r41 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), f35, c36, not(c37), not(c38), not(c39), not(c40) .
utility( r41 , 71 ).
query( c40 ).
query( c39 ).
query( c38 ).
query( c37 ).
query( c36 ).
0.91051862764638747 :: f30 .
? :: c32 .
? :: c31 .
r34 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), f30, not(c31), c32 .
utility( r34 , 53 ).
r33 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), f30, c31, not(c32) .
utility( r33 , 33 ).
query( c32 ).
query( c31 ).
0.67399547680489058 :: f19 .
? :: c24 .
? :: c23 .
? :: c22 .
? :: c21 .
? :: c20 .
r29 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), f19, not(c20), not(c21), not(c22), not(c23), c24 .
utility( r29 , 36 ).
r28 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), f19, not(c20), not(c21), not(c22), c23, not(c24) .
utility( r28 , 28 ).
r27 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), f19, not(c20), not(c21), c22, not(c23), not(c24) .
utility( r27 , 35 ).
r26 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), f19, not(c20), c21, not(c22), not(c23), not(c24) .
utility( r26 , 56 ).
r25 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), f19, c20, not(c21), not(c22), not(c23), not(c24) .
utility( r25 , 22 ).
query( c24 ).
query( c23 ).
query( c22 ).
query( c21 ).
query( c20 ).
0.78435865007230765 :: f14 .
? :: c16 .
? :: c15 .
r18 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), f14, not(c15), c16 .
utility( r18 , 24 ).
r17 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), f14, c15, not(c16) .
utility( r17 , 68 ).
query( c16 ).
query( c15 ).
0.66507712584402734 :: f9 .
? :: c11 .
? :: c10 .
r13 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), f9, not(c10), c11 .
utility( r13 , 91 ).
r12 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), f9, c10, not(c11) .
utility( r12 , 36 ).
query( c11 ).
query( c10 ).
0.32172344106784706 :: f2 .
? :: c5 .
? :: c4 .
? :: c3 .
r8 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), f2, not(c3), not(c4), c5 .
utility( r8 , 35 ).
r7 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), f2, not(c3), c4, not(c5) .
utility( r7 , 70 ).
r6 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), f2, c3, not(c4), not(c5) .
utility( r6 , 40 ).
query( c5 ).
query( c4 ).
query( c3 ).
r1 :- not(f141), not(f136), not(f127), not(f122), not(f113), not(f104), not(f99), not(f94), not(f87), not(f80), not(f75), not(f66), not(f55), not(f46), not(f35), not(f30), not(f19), not(f14), not(f9), not(f2) .
utility( r1 , 82 ).
