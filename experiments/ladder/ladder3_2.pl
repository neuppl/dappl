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
r18 :- r16 .
r18 :- r17 .
evidence( r18 , false ).
? :: c24 .
? :: c23 .
? :: c22 .
? :: c21 .
? :: c20 .
? :: c19 .
r40 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, not(r6) .
utility( r40 , 36 ).
? :: c39 .
? :: c38 .
? :: c37 .
? :: c36 .
? :: c35 .
r26 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), not(c36), not(c37), not(c38), c39, not(r7) .
utility( r26 , 35 ).
r25 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), not(c36), not(c37), not(c38), c39, r7 .
utility( r25 , 70 ).
r28 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), not(c36), not(c37), c38, not(c39), not(r11) .
utility( r28 , 91 ).
r27 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), not(c36), not(c37), c38, not(c39), r11 .
utility( r27 , 36 ).
r30 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), not(c36), c37, not(c38), not(c39), not(r12) .
utility( r30 , 24 ).
r29 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), not(c36), c37, not(c38), not(c39), r12 .
utility( r29 , 68 ).
r32 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), c36, not(c37), not(c38), not(c39), not(r16) .
utility( r32 , 56 ).
r31 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c35), c36, not(c37), not(c38), not(c39), r16 .
utility( r31 , 22 ).
r34 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c35, not(c36), not(c37), not(c38), not(c39), not(r17) .
utility( r34 , 28 ).
r33 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c35, not(c36), not(c37), not(c38), not(c39), r17 .
utility( r33 , 35 ).
query( c39 ).
query( c38 ).
query( c37 ).
query( c36 ).
query( c35 ).
r56 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), not(r7) .
utility( r56 , 33 ).
? :: c55 .
? :: c54 .
? :: c53 .
? :: c52 .
? :: c51 .
r42 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), not(c52), not(c53), not(c54), c55, not(r6) .
utility( r42 , 53 ).
r41 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), not(c52), not(c53), not(c54), c55, r6 .
utility( r41 , 33 ).
r44 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), not(c52), not(c53), c54, not(c55), not(r11) .
utility( r44 , 69 ).
r43 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), not(c52), not(c53), c54, not(c55), r11 .
utility( r43 , 71 ).
r46 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), not(c52), c53, not(c54), not(c55), not(r12) .
utility( r46 , 57 ).
r45 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), not(c52), c53, not(c54), not(c55), r12 .
utility( r45 , 95 ).
r48 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), c52, not(c53), not(c54), not(c55), not(r16) .
utility( r48 , 24 ).
r47 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c51), c52, not(c53), not(c54), not(c55), r16 .
utility( r47 , 92 ).
r50 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c51, not(c52), not(c53), not(c54), not(c55), not(r17) .
utility( r50 , 78 ).
r49 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c51, not(c52), not(c53), not(c54), not(c55), r17 .
utility( r49 , 46 ).
query( c55 ).
query( c54 ).
query( c53 ).
query( c52 ).
query( c51 ).
r72 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), not(r11) .
utility( r72 , 0 ).
? :: c71 .
? :: c70 .
? :: c69 .
? :: c68 .
? :: c67 .
r58 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), not(c68), not(c69), not(c70), c71, not(r6) .
utility( r58 , 89 ).
r57 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), not(c68), not(c69), not(c70), c71, r6 .
utility( r57 , 88 ).
r60 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), not(c68), not(c69), c70, not(c71), not(r7) .
utility( r60 , 58 ).
r59 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), not(c68), not(c69), c70, not(c71), r7 .
utility( r59 , 95 ).
r62 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), not(c68), c69, not(c70), not(c71), not(r12) .
utility( r62 , 1 ).
r61 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), not(c68), c69, not(c70), not(c71), r12 .
utility( r61 , 93 ).
r64 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), c68, not(c69), not(c70), not(c71), not(r16) .
utility( r64 , 13 ).
r63 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c67), c68, not(c69), not(c70), not(c71), r16 .
utility( r63 , 56 ).
r66 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c67, not(c68), not(c69), not(c70), not(c71), not(r17) .
utility( r66 , 13 ).
r65 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c67, not(c68), not(c69), not(c70), not(c71), r17 .
utility( r65 , 29 ).
query( c71 ).
query( c70 ).
query( c69 ).
query( c68 ).
query( c67 ).
r88 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), not(r12) .
utility( r88 , 49 ).
? :: c87 .
? :: c86 .
? :: c85 .
? :: c84 .
? :: c83 .
r74 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), not(c84), not(c85), not(c86), c87, not(r6) .
utility( r74 , 86 ).
r73 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), not(c84), not(c85), not(c86), c87, r6 .
utility( r73 , 17 ).
r76 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), not(c84), not(c85), c86, not(c87), not(r7) .
utility( r76 , 24 ).
r75 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), not(c84), not(c85), c86, not(c87), r7 .
utility( r75 , 71 ).
r78 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), not(c84), c85, not(c86), not(c87), not(r11) .
utility( r78 , 36 ).
r77 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), not(c84), c85, not(c86), not(c87), r11 .
utility( r77 , 48 ).
r80 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), c84, not(c85), not(c86), not(c87), not(r16) .
utility( r80 , 71 ).
r79 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c83), c84, not(c85), not(c86), not(c87), r16 .
utility( r79 , 11 ).
r82 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c83, not(c84), not(c85), not(c86), not(c87), not(r17) .
utility( r82 , 65 ).
r81 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c83, not(c84), not(c85), not(c86), not(c87), r17 .
utility( r81 , 32 ).
query( c87 ).
query( c86 ).
query( c85 ).
query( c84 ).
query( c83 ).
r104 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), not(r16) .
utility( r104 , 21 ).
? :: c103 .
? :: c102 .
? :: c101 .
? :: c100 .
? :: c99 .
r90 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), not(c100), not(c101), not(c102), c103, not(r6) .
utility( r90 , 50 ).
r89 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), not(c100), not(c101), not(c102), c103, r6 .
utility( r89 , 31 ).
r92 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), not(c100), not(c101), c102, not(c103), not(r7) .
utility( r92 , 58 ).
r91 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), not(c100), not(c101), c102, not(c103), r7 .
utility( r91 , 69 ).
r94 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), not(c100), c101, not(c102), not(c103), not(r11) .
utility( r94 , 83 ).
r93 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), not(c100), c101, not(c102), not(c103), r11 .
utility( r93 , 12 ).
r96 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), c100, not(c101), not(c102), not(c103), not(r12) .
utility( r96 , 96 ).
r95 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c99), c100, not(c101), not(c102), not(c103), r12 .
utility( r95 , 1 ).
r98 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c99, not(c100), not(c101), not(c102), not(c103), not(r17) .
utility( r98 , 61 ).
r97 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c99, not(c100), not(c101), not(c102), not(c103), r17 .
utility( r97 , 9 ).
query( c103 ).
query( c102 ).
query( c101 ).
query( c100 ).
query( c99 ).
r120 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), not(r17) .
utility( r120 , 14 ).
? :: c119 .
? :: c118 .
? :: c117 .
? :: c116 .
? :: c115 .
r106 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), not(c116), not(c117), not(c118), c119, not(r6) .
utility( r106 , 81 ).
r105 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), not(c116), not(c117), not(c118), c119, r6 .
utility( r105 , 29 ).
r108 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), not(c116), not(c117), c118, not(c119), not(r7) .
utility( r108 , 83 ).
r107 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), not(c116), not(c117), c118, not(c119), r7 .
utility( r107 , 97 ).
r110 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), not(c116), c117, not(c118), not(c119), not(r11) .
utility( r110 , 30 ).
r109 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), not(c116), c117, not(c118), not(c119), r11 .
utility( r109 , 76 ).
r112 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), c116, not(c117), not(c118), not(c119), not(r12) .
utility( r112 , 54 ).
r111 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c115), c116, not(c117), not(c118), not(c119), r12 .
utility( r111 , 31 ).
r114 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c115, not(c116), not(c117), not(c118), not(c119), not(r16) .
utility( r114 , 24 ).
r113 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c115, not(c116), not(c117), not(c118), not(c119), r16 .
utility( r113 , 39 ).
query( c119 ).
query( c118 ).
query( c117 ).
query( c116 ).
query( c115 ).
query( c24 ).
query( c23 ).
query( c22 ).
query( c21 ).
query( c20 ).
query( c19 ).
