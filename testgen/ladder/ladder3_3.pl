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
r95 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, not(r6) .
utility( r95 , 43 ).
? :: c94 .
? :: c93 .
? :: c92 .
? :: c91 .
? :: c90 .
r37 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, not(r7) .
utility( r37 , 21 ).
? :: c36 .
? :: c35 .
? :: c34 .
? :: c33 .
r26 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, not(c33), not(c34), not(c35), c36, not(r11) .
utility( r26 , 85 ).
r25 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, not(c33), not(c34), not(c35), c36, r11 .
utility( r25 , 44 ).
r28 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, not(c33), not(c34), c35, not(c36), not(r12) .
utility( r28 , 41 ).
r27 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, not(c33), not(c34), c35, not(c36), r12 .
utility( r27 , 82 ).
r30 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, not(c33), c34, not(c35), not(c36), not(r16) .
utility( r30 , 0 ).
r29 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, not(c33), c34, not(c35), not(c36), r16 .
utility( r29 , 39 ).
r32 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, c33, not(c34), not(c35), not(c36), not(r17) .
utility( r32 , 20 ).
r31 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), not(c93), c94, r7, c33, not(c34), not(c35), not(c36), r17 .
utility( r31 , 4 ).
query( c36 ).
query( c35 ).
query( c34 ).
query( c33 ).
r50 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), not(r11) .
utility( r50 , 6 ).
? :: c49 .
? :: c48 .
? :: c47 .
? :: c46 .
r39 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, not(c46), not(c47), not(c48), c49, not(r7) .
utility( r39 , 17 ).
r38 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, not(c46), not(c47), not(c48), c49, r7 .
utility( r38 , 70 ).
r41 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, not(c46), not(c47), c48, not(c49), not(r12) .
utility( r41 , 49 ).
r40 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, not(c46), not(c47), c48, not(c49), r12 .
utility( r40 , 85 ).
r43 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, not(c46), c47, not(c48), not(c49), not(r16) .
utility( r43 , 15 ).
r42 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, not(c46), c47, not(c48), not(c49), r16 .
utility( r42 , 78 ).
r45 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, c46, not(c47), not(c48), not(c49), not(r17) .
utility( r45 , 1 ).
r44 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), not(c92), c93, not(c94), r11, c46, not(c47), not(c48), not(c49), r17 .
utility( r44 , 12 ).
query( c49 ).
query( c48 ).
query( c47 ).
query( c46 ).
r63 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), not(r12) .
utility( r63 , 96 ).
? :: c62 .
? :: c61 .
? :: c60 .
? :: c59 .
r52 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, not(c59), not(c60), not(c61), c62, not(r7) .
utility( r52 , 69 ).
r51 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, not(c59), not(c60), not(c61), c62, r7 .
utility( r51 , 28 ).
r54 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, not(c59), not(c60), c61, not(c62), not(r11) .
utility( r54 , 93 ).
r53 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, not(c59), not(c60), c61, not(c62), r11 .
utility( r53 , 89 ).
r56 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, not(c59), c60, not(c61), not(c62), not(r16) .
utility( r56 , 23 ).
r55 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, not(c59), c60, not(c61), not(c62), r16 .
utility( r55 , 14 ).
r58 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, c59, not(c60), not(c61), not(c62), not(r17) .
utility( r58 , 44 ).
r57 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), not(c91), c92, not(c93), not(c94), r12, c59, not(c60), not(c61), not(c62), r17 .
utility( r57 , 23 ).
query( c62 ).
query( c61 ).
query( c60 ).
query( c59 ).
r76 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), not(r16) .
utility( r76 , 97 ).
? :: c75 .
? :: c74 .
? :: c73 .
? :: c72 .
r65 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, not(c72), not(c73), not(c74), c75, not(r7) .
utility( r65 , 0 ).
r64 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, not(c72), not(c73), not(c74), c75, r7 .
utility( r64 , 3 ).
r67 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, not(c72), not(c73), c74, not(c75), not(r11) .
utility( r67 , 49 ).
r66 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, not(c72), not(c73), c74, not(c75), r11 .
utility( r66 , 70 ).
r69 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, not(c72), c73, not(c74), not(c75), not(r12) .
utility( r69 , 55 ).
r68 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, not(c72), c73, not(c74), not(c75), r12 .
utility( r68 , 12 ).
r71 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, c72, not(c73), not(c74), not(c75), not(r17) .
utility( r71 , 57 ).
r70 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, not(c90), c91, not(c92), not(c93), not(c94), r16, c72, not(c73), not(c74), not(c75), r17 .
utility( r70 , 11 ).
query( c75 ).
query( c74 ).
query( c73 ).
query( c72 ).
r89 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), not(r17) .
utility( r89 , 84 ).
? :: c88 .
? :: c87 .
? :: c86 .
? :: c85 .
r78 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, not(c85), not(c86), not(c87), c88, not(r7) .
utility( r78 , 60 ).
r77 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, not(c85), not(c86), not(c87), c88, r7 .
utility( r77 , 97 ).
r80 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, not(c85), not(c86), c87, not(c88), not(r11) .
utility( r80 , 63 ).
r79 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, not(c85), not(c86), c87, not(c88), r11 .
utility( r79 , 83 ).
r82 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, not(c85), c86, not(c87), not(c88), not(r12) .
utility( r82 , 99 ).
r81 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, not(c85), c86, not(c87), not(c88), r12 .
utility( r81 , 20 ).
r84 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, c85, not(c86), not(c87), not(c88), not(r16) .
utility( r84 , 70 ).
r83 :- not(c19), not(c20), not(c21), not(c22), not(c23), c24, r6, c90, not(c91), not(c92), not(c93), not(c94), r17, c85, not(c86), not(c87), not(c88), r16 .
utility( r83 , 59 ).
query( c88 ).
query( c87 ).
query( c86 ).
query( c85 ).
query( c94 ).
query( c93 ).
query( c92 ).
query( c91 ).
query( c90 ).
r166 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), not(r7) .
utility( r166 , 58 ).
? :: c165 .
? :: c164 .
? :: c163 .
? :: c162 .
? :: c161 .
r108 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, not(r6) .
utility( r108 , 9 ).
? :: c107 .
? :: c106 .
? :: c105 .
? :: c104 .
r97 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, not(c104), not(c105), not(c106), c107, not(r11) .
utility( r97 , 46 ).
r96 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, not(c104), not(c105), not(c106), c107, r11 .
utility( r96 , 20 ).
r99 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, not(c104), not(c105), c106, not(c107), not(r12) .
utility( r99 , 18 ).
r98 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, not(c104), not(c105), c106, not(c107), r12 .
utility( r98 , 54 ).
r101 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, not(c104), c105, not(c106), not(c107), not(r16) .
utility( r101 , 58 ).
r100 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, not(c104), c105, not(c106), not(c107), r16 .
utility( r100 , 88 ).
r103 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, c104, not(c105), not(c106), not(c107), not(r17) .
utility( r103 , 51 ).
r102 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), not(c164), c165, r6, c104, not(c105), not(c106), not(c107), r17 .
utility( r102 , 24 ).
query( c107 ).
query( c106 ).
query( c105 ).
query( c104 ).
r121 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), not(r11) .
utility( r121 , 83 ).
? :: c120 .
? :: c119 .
? :: c118 .
? :: c117 .
r110 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, not(c117), not(c118), not(c119), c120, not(r6) .
utility( r110 , 76 ).
r109 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, not(c117), not(c118), not(c119), c120, r6 .
utility( r109 , 69 ).
r112 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, not(c117), not(c118), c119, not(c120), not(r12) .
utility( r112 , 38 ).
r111 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, not(c117), not(c118), c119, not(c120), r12 .
utility( r111 , 86 ).
r114 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, not(c117), c118, not(c119), not(c120), not(r16) .
utility( r114 , 65 ).
r113 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, not(c117), c118, not(c119), not(c120), r16 .
utility( r113 , 22 ).
r116 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, c117, not(c118), not(c119), not(c120), not(r17) .
utility( r116 , 19 ).
r115 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), not(c163), c164, not(c165), r11, c117, not(c118), not(c119), not(c120), r17 .
utility( r115 , 52 ).
query( c120 ).
query( c119 ).
query( c118 ).
query( c117 ).
r134 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), not(r12) .
utility( r134 , 22 ).
? :: c133 .
? :: c132 .
? :: c131 .
? :: c130 .
r123 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, not(c130), not(c131), not(c132), c133, not(r6) .
utility( r123 , 40 ).
r122 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, not(c130), not(c131), not(c132), c133, r6 .
utility( r122 , 82 ).
r125 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, not(c130), not(c131), c132, not(c133), not(r11) .
utility( r125 , 35 ).
r124 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, not(c130), not(c131), c132, not(c133), r11 .
utility( r124 , 70 ).
r127 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, not(c130), c131, not(c132), not(c133), not(r16) .
utility( r127 , 91 ).
r126 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, not(c130), c131, not(c132), not(c133), r16 .
utility( r126 , 36 ).
r129 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, c130, not(c131), not(c132), not(c133), not(r17) .
utility( r129 , 24 ).
r128 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), not(c162), c163, not(c164), not(c165), r12, c130, not(c131), not(c132), not(c133), r17 .
utility( r128 , 68 ).
query( c133 ).
query( c132 ).
query( c131 ).
query( c130 ).
r147 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), not(r16) .
utility( r147 , 95 ).
? :: c146 .
? :: c145 .
? :: c144 .
? :: c143 .
r136 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, not(c143), not(c144), not(c145), c146, not(r6) .
utility( r136 , 35 ).
r135 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, not(c143), not(c144), not(c145), c146, r6 .
utility( r135 , 56 ).
r138 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, not(c143), not(c144), c145, not(c146), not(r11) .
utility( r138 , 36 ).
r137 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, not(c143), not(c144), c145, not(c146), r11 .
utility( r137 , 28 ).
r140 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, not(c143), c144, not(c145), not(c146), not(r12) .
utility( r140 , 53 ).
r139 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, not(c143), c144, not(c145), not(c146), r12 .
utility( r139 , 33 ).
r142 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, c143, not(c144), not(c145), not(c146), not(r17) .
utility( r142 , 69 ).
r141 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, not(c161), c162, not(c163), not(c164), not(c165), r16, c143, not(c144), not(c145), not(c146), r17 .
utility( r141 , 71 ).
query( c146 ).
query( c145 ).
query( c144 ).
query( c143 ).
r160 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), not(r17) .
utility( r160 , 95 ).
? :: c159 .
? :: c158 .
? :: c157 .
? :: c156 .
r149 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, not(c156), not(c157), not(c158), c159, not(r6) .
utility( r149 , 92 ).
r148 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, not(c156), not(c157), not(c158), c159, r6 .
utility( r148 , 57 ).
r151 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, not(c156), not(c157), c158, not(c159), not(r11) .
utility( r151 , 46 ).
r150 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, not(c156), not(c157), c158, not(c159), r11 .
utility( r150 , 24 ).
r153 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, not(c156), c157, not(c158), not(c159), not(r12) .
utility( r153 , 33 ).
r152 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, not(c156), c157, not(c158), not(c159), r12 .
utility( r152 , 78 ).
r155 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, c156, not(c157), not(c158), not(c159), not(r16) .
utility( r155 , 89 ).
r154 :- not(c19), not(c20), not(c21), not(c22), c23, not(c24), r7, c161, not(c162), not(c163), not(c164), not(c165), r17, c156, not(c157), not(c158), not(c159), r16 .
utility( r154 , 88 ).
query( c159 ).
query( c158 ).
query( c157 ).
query( c156 ).
query( c165 ).
query( c164 ).
query( c163 ).
query( c162 ).
query( c161 ).
r237 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), not(r11) .
utility( r237 , 26 ).
? :: c236 .
? :: c235 .
? :: c234 .
? :: c233 .
? :: c232 .
r179 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, not(r6) .
utility( r179 , 86 ).
? :: c178 .
? :: c177 .
? :: c176 .
? :: c175 .
r168 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, not(c175), not(c176), not(c177), c178, not(r7) .
utility( r168 , 1 ).
r167 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, not(c175), not(c176), not(c177), c178, r7 .
utility( r167 , 93 ).
r170 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, not(c175), not(c176), c177, not(c178), not(r12) .
utility( r170 , 13 ).
r169 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, not(c175), not(c176), c177, not(c178), r12 .
utility( r169 , 56 ).
r172 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, not(c175), c176, not(c177), not(c178), not(r16) .
utility( r172 , 13 ).
r171 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, not(c175), c176, not(c177), not(c178), r16 .
utility( r171 , 29 ).
r174 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, c175, not(c176), not(c177), not(c178), not(r17) .
utility( r174 , 17 ).
r173 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), not(c235), c236, r6, c175, not(c176), not(c177), not(c178), r17 .
utility( r173 , 0 ).
query( c178 ).
query( c177 ).
query( c176 ).
query( c175 ).
r192 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), not(r7) .
utility( r192 , 49 ).
? :: c191 .
? :: c190 .
? :: c189 .
? :: c188 .
r181 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, not(c188), not(c189), not(c190), c191, not(r6) .
utility( r181 , 24 ).
r180 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, not(c188), not(c189), not(c190), c191, r6 .
utility( r180 , 71 ).
r183 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, not(c188), not(c189), c190, not(c191), not(r12) .
utility( r183 , 36 ).
r182 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, not(c188), not(c189), c190, not(c191), r12 .
utility( r182 , 48 ).
r185 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, not(c188), c189, not(c190), not(c191), not(r16) .
utility( r185 , 71 ).
r184 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, not(c188), c189, not(c190), not(c191), r16 .
utility( r184 , 11 ).
r187 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, c188, not(c189), not(c190), not(c191), not(r17) .
utility( r187 , 65 ).
r186 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), not(c234), c235, not(c236), r7, c188, not(c189), not(c190), not(c191), r17 .
utility( r186 , 32 ).
query( c191 ).
query( c190 ).
query( c189 ).
query( c188 ).
r205 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), not(r12) .
utility( r205 , 9 ).
? :: c204 .
? :: c203 .
? :: c202 .
? :: c201 .
r194 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, not(c201), not(c202), not(c203), c204, not(r6) .
utility( r194 , 50 ).
r193 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, not(c201), not(c202), not(c203), c204, r6 .
utility( r193 , 31 ).
r196 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, not(c201), not(c202), c203, not(c204), not(r7) .
utility( r196 , 58 ).
r195 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, not(c201), not(c202), c203, not(c204), r7 .
utility( r195 , 69 ).
r198 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, not(c201), c202, not(c203), not(c204), not(r16) .
utility( r198 , 83 ).
r197 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, not(c201), c202, not(c203), not(c204), r16 .
utility( r197 , 12 ).
r200 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, c201, not(c202), not(c203), not(c204), not(r17) .
utility( r200 , 96 ).
r199 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), not(c233), c234, not(c235), not(c236), r12, c201, not(c202), not(c203), not(c204), r17 .
utility( r199 , 1 ).
query( c204 ).
query( c203 ).
query( c202 ).
query( c201 ).
r218 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), not(r16) .
utility( r218 , 31 ).
? :: c217 .
? :: c216 .
? :: c215 .
? :: c214 .
r207 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, not(c214), not(c215), not(c216), c217, not(r6) .
utility( r207 , 21 ).
r206 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, not(c214), not(c215), not(c216), c217, r6 .
utility( r206 , 61 ).
r209 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, not(c214), not(c215), c216, not(c217), not(r7) .
utility( r209 , 81 ).
r208 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, not(c214), not(c215), c216, not(c217), r7 .
utility( r208 , 29 ).
r211 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, not(c214), c215, not(c216), not(c217), not(r12) .
utility( r211 , 83 ).
r210 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, not(c214), c215, not(c216), not(c217), r12 .
utility( r210 , 97 ).
r213 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, c214, not(c215), not(c216), not(c217), not(r17) .
utility( r213 , 30 ).
r212 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, not(c232), c233, not(c234), not(c235), not(c236), r16, c214, not(c215), not(c216), not(c217), r17 .
utility( r212 , 76 ).
query( c217 ).
query( c216 ).
query( c215 ).
query( c214 ).
r231 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), not(r17) .
utility( r231 , 99 ).
? :: c230 .
? :: c229 .
? :: c228 .
? :: c227 .
r220 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, not(c227), not(c228), not(c229), c230, not(r6) .
utility( r220 , 39 ).
r219 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, not(c227), not(c228), not(c229), c230, r6 .
utility( r219 , 54 ).
r222 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, not(c227), not(c228), c229, not(c230), not(r7) .
utility( r222 , 14 ).
r221 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, not(c227), not(c228), c229, not(c230), r7 .
utility( r221 , 24 ).
r224 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, not(c227), c228, not(c229), not(c230), not(r12) .
utility( r224 , 67 ).
r223 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, not(c227), c228, not(c229), not(c230), r12 .
utility( r223 , 89 ).
r226 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, c227, not(c228), not(c229), not(c230), not(r16) .
utility( r226 , 87 ).
r225 :- not(c19), not(c20), not(c21), c22, not(c23), not(c24), r11, c232, not(c233), not(c234), not(c235), not(c236), r17, c227, not(c228), not(c229), not(c230), r16 .
utility( r225 , 68 ).
query( c230 ).
query( c229 ).
query( c228 ).
query( c227 ).
query( c236 ).
query( c235 ).
query( c234 ).
query( c233 ).
query( c232 ).
r308 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), not(r12) .
utility( r308 , 54 ).
? :: c307 .
? :: c306 .
? :: c305 .
? :: c304 .
? :: c303 .
r250 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, not(r6) .
utility( r250 , 36 ).
? :: c249 .
? :: c248 .
? :: c247 .
? :: c246 .
r239 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, not(c246), not(c247), not(c248), c249, not(r7) .
utility( r239 , 76 ).
r238 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, not(c246), not(c247), not(c248), c249, r7 .
utility( r238 , 21 ).
r241 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, not(c246), not(c247), c248, not(c249), not(r11) .
utility( r241 , 95 ).
r240 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, not(c246), not(c247), c248, not(c249), r11 .
utility( r240 , 93 ).
r243 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, not(c246), c247, not(c248), not(c249), not(r16) .
utility( r243 , 63 ).
r242 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, not(c246), c247, not(c248), not(c249), r16 .
utility( r242 , 68 ).
r245 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, c246, not(c247), not(c248), not(c249), not(r17) .
utility( r245 , 73 ).
r244 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), not(c306), c307, r6, c246, not(c247), not(c248), not(c249), r17 .
utility( r244 , 62 ).
query( c249 ).
query( c248 ).
query( c247 ).
query( c246 ).
r263 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), not(r7) .
utility( r263 , 70 ).
? :: c262 .
? :: c261 .
? :: c260 .
? :: c259 .
r252 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, not(c259), not(c260), not(c261), c262, not(r6) .
utility( r252 , 98 ).
r251 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, not(c259), not(c260), not(c261), c262, r6 .
utility( r251 , 77 ).
r254 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, not(c259), not(c260), c261, not(c262), not(r11) .
utility( r254 , 40 ).
r253 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, not(c259), not(c260), c261, not(c262), r11 .
utility( r253 , 23 ).
r256 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, not(c259), c260, not(c261), not(c262), not(r16) .
utility( r256 , 38 ).
r255 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, not(c259), c260, not(c261), not(c262), r16 .
utility( r255 , 11 ).
r258 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, c259, not(c260), not(c261), not(c262), not(r17) .
utility( r258 , 20 ).
r257 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), not(c305), c306, not(c307), r7, c259, not(c260), not(c261), not(c262), r17 .
utility( r257 , 76 ).
query( c262 ).
query( c261 ).
query( c260 ).
query( c259 ).
r276 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), not(r11) .
utility( r276 , 4 ).
? :: c275 .
? :: c274 .
? :: c273 .
? :: c272 .
r265 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, not(c272), not(c273), not(c274), c275, not(r6) .
utility( r265 , 37 ).
r264 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, not(c272), not(c273), not(c274), c275, r6 .
utility( r264 , 55 ).
r267 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, not(c272), not(c273), c274, not(c275), not(r7) .
utility( r267 , 90 ).
r266 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, not(c272), not(c273), c274, not(c275), r7 .
utility( r266 , 88 ).
r269 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, not(c272), c273, not(c274), not(c275), not(r16) .
utility( r269 , 7 ).
r268 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, not(c272), c273, not(c274), not(c275), r16 .
utility( r268 , 10 ).
r271 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, c272, not(c273), not(c274), not(c275), not(r17) .
utility( r271 , 43 ).
r270 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), not(c304), c305, not(c306), not(c307), r11, c272, not(c273), not(c274), not(c275), r17 .
utility( r270 , 51 ).
query( c275 ).
query( c274 ).
query( c273 ).
query( c272 ).
r289 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), not(r16) .
utility( r289 , 31 ).
? :: c288 .
? :: c287 .
? :: c286 .
? :: c285 .
r278 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, not(c285), not(c286), not(c287), c288, not(r6) .
utility( r278 , 93 ).
r277 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, not(c285), not(c286), not(c287), c288, r6 .
utility( r277 , 95 ).
r280 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, not(c285), not(c286), c287, not(c288), not(r7) .
utility( r280 , 57 ).
r279 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, not(c285), not(c286), c287, not(c288), r7 .
utility( r279 , 61 ).
r282 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, not(c285), c286, not(c287), not(c288), not(r11) .
utility( r282 , 53 ).
r281 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, not(c285), c286, not(c287), not(c288), r11 .
utility( r281 , 32 ).
r284 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, c285, not(c286), not(c287), not(c288), not(r17) .
utility( r284 , 82 ).
r283 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, not(c303), c304, not(c305), not(c306), not(c307), r16, c285, not(c286), not(c287), not(c288), r17 .
utility( r283 , 92 ).
query( c288 ).
query( c287 ).
query( c286 ).
query( c285 ).
r302 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), not(r17) .
utility( r302 , 51 ).
? :: c301 .
? :: c300 .
? :: c299 .
? :: c298 .
r291 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, not(c298), not(c299), not(c300), c301, not(r6) .
utility( r291 , 53 ).
r290 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, not(c298), not(c299), not(c300), c301, r6 .
utility( r290 , 83 ).
r293 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, not(c298), not(c299), c300, not(c301), not(r7) .
utility( r293 , 65 ).
r292 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, not(c298), not(c299), c300, not(c301), r7 .
utility( r292 , 7 ).
r295 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, not(c298), c299, not(c300), not(c301), not(r11) .
utility( r295 , 45 ).
r294 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, not(c298), c299, not(c300), not(c301), r11 .
utility( r294 , 60 ).
r297 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, c298, not(c299), not(c300), not(c301), not(r16) .
utility( r297 , 17 ).
r296 :- not(c19), not(c20), c21, not(c22), not(c23), not(c24), r12, c303, not(c304), not(c305), not(c306), not(c307), r17, c298, not(c299), not(c300), not(c301), r16 .
utility( r296 , 66 ).
query( c301 ).
query( c300 ).
query( c299 ).
query( c298 ).
query( c307 ).
query( c306 ).
query( c305 ).
query( c304 ).
query( c303 ).
r379 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), not(r16) .
utility( r379 , 96 ).
? :: c378 .
? :: c377 .
? :: c376 .
? :: c375 .
? :: c374 .
r321 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, not(r6) .
utility( r321 , 83 ).
? :: c320 .
? :: c319 .
? :: c318 .
? :: c317 .
r310 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, not(c317), not(c318), not(c319), c320, not(r7) .
utility( r310 , 45 ).
r309 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, not(c317), not(c318), not(c319), c320, r7 .
utility( r309 , 0 ).
r312 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, not(c317), not(c318), c319, not(c320), not(r11) .
utility( r312 , 13 ).
r311 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, not(c317), not(c318), c319, not(c320), r11 .
utility( r311 , 66 ).
r314 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, not(c317), c318, not(c319), not(c320), not(r12) .
utility( r314 , 60 ).
r313 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, not(c317), c318, not(c319), not(c320), r12 .
utility( r313 , 67 ).
r316 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, c317, not(c318), not(c319), not(c320), not(r17) .
utility( r316 , 18 ).
r315 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), not(c377), c378, r6, c317, not(c318), not(c319), not(c320), r17 .
utility( r315 , 31 ).
query( c320 ).
query( c319 ).
query( c318 ).
query( c317 ).
r334 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), not(r7) .
utility( r334 , 70 ).
? :: c333 .
? :: c332 .
? :: c331 .
? :: c330 .
r323 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, not(c330), not(c331), not(c332), c333, not(r6) .
utility( r323 , 29 ).
r322 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, not(c330), not(c331), not(c332), c333, r6 .
utility( r322 , 42 ).
r325 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, not(c330), not(c331), c332, not(c333), not(r11) .
utility( r325 , 87 ).
r324 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, not(c330), not(c331), c332, not(c333), r11 .
utility( r324 , 11 ).
r327 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, not(c330), c331, not(c332), not(c333), not(r12) .
utility( r327 , 47 ).
r326 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, not(c330), c331, not(c332), not(c333), r12 .
utility( r326 , 68 ).
r329 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, c330, not(c331), not(c332), not(c333), not(r17) .
utility( r329 , 7 ).
r328 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), not(c376), c377, not(c378), r7, c330, not(c331), not(c332), not(c333), r17 .
utility( r328 , 6 ).
query( c333 ).
query( c332 ).
query( c331 ).
query( c330 ).
r347 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), not(r11) .
utility( r347 , 25 ).
? :: c346 .
? :: c345 .
? :: c344 .
? :: c343 .
r336 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, not(c343), not(c344), not(c345), c346, not(r6) .
utility( r336 , 46 ).
r335 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, not(c343), not(c344), not(c345), c346, r6 .
utility( r335 , 69 ).
r338 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, not(c343), not(c344), c345, not(c346), not(r7) .
utility( r338 , 22 ).
r337 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, not(c343), not(c344), c345, not(c346), r7 .
utility( r337 , 29 ).
r340 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, not(c343), c344, not(c345), not(c346), not(r12) .
utility( r340 , 36 ).
r339 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, not(c343), c344, not(c345), not(c346), r12 .
utility( r339 , 51 ).
r342 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, c343, not(c344), not(c345), not(c346), not(r17) .
utility( r342 , 41 ).
r341 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), not(c375), c376, not(c377), not(c378), r11, c343, not(c344), not(c345), not(c346), r17 .
utility( r341 , 56 ).
query( c346 ).
query( c345 ).
query( c344 ).
query( c343 ).
r360 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), not(r12) .
utility( r360 , 80 ).
? :: c359 .
? :: c358 .
? :: c357 .
? :: c356 .
r349 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, not(c356), not(c357), not(c358), c359, not(r6) .
utility( r349 , 52 ).
r348 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, not(c356), not(c357), not(c358), c359, r6 .
utility( r348 , 90 ).
r351 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, not(c356), not(c357), c358, not(c359), not(r7) .
utility( r351 , 54 ).
r350 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, not(c356), not(c357), c358, not(c359), r7 .
utility( r350 , 7 ).
r353 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, not(c356), c357, not(c358), not(c359), not(r11) .
utility( r353 , 38 ).
r352 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, not(c356), c357, not(c358), not(c359), r11 .
utility( r352 , 10 ).
r355 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, c356, not(c357), not(c358), not(c359), not(r17) .
utility( r355 , 38 ).
r354 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, not(c374), c375, not(c376), not(c377), not(c378), r12, c356, not(c357), not(c358), not(c359), r17 .
utility( r354 , 2 ).
query( c359 ).
query( c358 ).
query( c357 ).
query( c356 ).
r373 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), not(r17) .
utility( r373 , 97 ).
? :: c372 .
? :: c371 .
? :: c370 .
? :: c369 .
r362 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, not(c369), not(c370), not(c371), c372, not(r6) .
utility( r362 , 18 ).
r361 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, not(c369), not(c370), not(c371), c372, r6 .
utility( r361 , 14 ).
r364 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, not(c369), not(c370), c371, not(c372), not(r7) .
utility( r364 , 40 ).
r363 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, not(c369), not(c370), c371, not(c372), r7 .
utility( r363 , 80 ).
r366 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, not(c369), c370, not(c371), not(c372), not(r11) .
utility( r366 , 66 ).
r365 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, not(c369), c370, not(c371), not(c372), r11 .
utility( r365 , 91 ).
r368 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, c369, not(c370), not(c371), not(c372), not(r12) .
utility( r368 , 20 ).
r367 :- not(c19), c20, not(c21), not(c22), not(c23), not(c24), r16, c374, not(c375), not(c376), not(c377), not(c378), r17, c369, not(c370), not(c371), not(c372), r12 .
utility( r367 , 91 ).
query( c372 ).
query( c371 ).
query( c370 ).
query( c369 ).
query( c378 ).
query( c377 ).
query( c376 ).
query( c375 ).
query( c374 ).
r450 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), not(r17) .
utility( r450 , 1 ).
? :: c449 .
? :: c448 .
? :: c447 .
? :: c446 .
? :: c445 .
r392 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, not(r6) .
utility( r392 , 88 ).
? :: c391 .
? :: c390 .
? :: c389 .
? :: c388 .
r381 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, not(c388), not(c389), not(c390), c391, not(r7) .
utility( r381 , 5 ).
r380 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, not(c388), not(c389), not(c390), c391, r7 .
utility( r380 , 53 ).
r383 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, not(c388), not(c389), c390, not(c391), not(r11) .
utility( r383 , 24 ).
r382 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, not(c388), not(c389), c390, not(c391), r11 .
utility( r382 , 42 ).
r385 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, not(c388), c389, not(c390), not(c391), not(r12) .
utility( r385 , 87 ).
r384 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, not(c388), c389, not(c390), not(c391), r12 .
utility( r384 , 88 ).
r387 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, c388, not(c389), not(c390), not(c391), not(r16) .
utility( r387 , 73 ).
r386 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), not(c448), c449, r6, c388, not(c389), not(c390), not(c391), r16 .
utility( r386 , 36 ).
query( c391 ).
query( c390 ).
query( c389 ).
query( c388 ).
r405 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), not(r7) .
utility( r405 , 36 ).
? :: c404 .
? :: c403 .
? :: c402 .
? :: c401 .
r394 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, not(c401), not(c402), not(c403), c404, not(r6) .
utility( r394 , 4 ).
r393 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, not(c401), not(c402), not(c403), c404, r6 .
utility( r393 , 63 ).
r396 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, not(c401), not(c402), c403, not(c404), not(r11) .
utility( r396 , 4 ).
r395 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, not(c401), not(c402), c403, not(c404), r11 .
utility( r395 , 0 ).
r398 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, not(c401), c402, not(c403), not(c404), not(r12) .
utility( r398 , 16 ).
r397 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, not(c401), c402, not(c403), not(c404), r12 .
utility( r397 , 15 ).
r400 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, c401, not(c402), not(c403), not(c404), not(r16) .
utility( r400 , 20 ).
r399 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), not(c447), c448, not(c449), r7, c401, not(c402), not(c403), not(c404), r16 .
utility( r399 , 64 ).
query( c404 ).
query( c403 ).
query( c402 ).
query( c401 ).
r418 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), not(r11) .
utility( r418 , 38 ).
? :: c417 .
? :: c416 .
? :: c415 .
? :: c414 .
r407 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, not(c414), not(c415), not(c416), c417, not(r6) .
utility( r407 , 86 ).
r406 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, not(c414), not(c415), not(c416), c417, r6 .
utility( r406 , 34 ).
r409 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, not(c414), not(c415), c416, not(c417), not(r7) .
utility( r409 , 88 ).
r408 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, not(c414), not(c415), c416, not(c417), r7 .
utility( r408 , 91 ).
r411 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, not(c414), c415, not(c416), not(c417), not(r12) .
utility( r411 , 30 ).
r410 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, not(c414), c415, not(c416), not(c417), r12 .
utility( r410 , 12 ).
r413 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, c414, not(c415), not(c416), not(c417), not(r16) .
utility( r413 , 54 ).
r412 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), not(c446), c447, not(c448), not(c449), r11, c414, not(c415), not(c416), not(c417), r16 .
utility( r412 , 46 ).
query( c417 ).
query( c416 ).
query( c415 ).
query( c414 ).
r431 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), not(r12) .
utility( r431 , 79 ).
? :: c430 .
? :: c429 .
? :: c428 .
? :: c427 .
r420 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, not(c427), not(c428), not(c429), c430, not(r6) .
utility( r420 , 60 ).
r419 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, not(c427), not(c428), not(c429), c430, r6 .
utility( r419 , 55 ).
r422 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, not(c427), not(c428), c429, not(c430), not(r7) .
utility( r422 , 32 ).
r421 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, not(c427), not(c428), c429, not(c430), r7 .
utility( r421 , 27 ).
r424 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, not(c427), c428, not(c429), not(c430), not(r11) .
utility( r424 , 38 ).
r423 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, not(c427), c428, not(c429), not(c430), r11 .
utility( r423 , 4 ).
r426 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, c427, not(c428), not(c429), not(c430), not(r16) .
utility( r426 , 69 ).
r425 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, not(c445), c446, not(c447), not(c448), not(c449), r12, c427, not(c428), not(c429), not(c430), r16 .
utility( r425 , 67 ).
query( c430 ).
query( c429 ).
query( c428 ).
query( c427 ).
r444 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), not(r16) .
utility( r444 , 61 ).
? :: c443 .
? :: c442 .
? :: c441 .
? :: c440 .
r433 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, not(c440), not(c441), not(c442), c443, not(r6) .
utility( r433 , 62 ).
r432 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, not(c440), not(c441), not(c442), c443, r6 .
utility( r432 , 72 ).
r435 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, not(c440), not(c441), c442, not(c443), not(r7) .
utility( r435 , 11 ).
r434 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, not(c440), not(c441), c442, not(c443), r7 .
utility( r434 , 66 ).
r437 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, not(c440), c441, not(c442), not(c443), not(r11) .
utility( r437 , 27 ).
r436 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, not(c440), c441, not(c442), not(c443), r11 .
utility( r436 , 60 ).
r439 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, c440, not(c441), not(c442), not(c443), not(r12) .
utility( r439 , 47 ).
r438 :- c19, not(c20), not(c21), not(c22), not(c23), not(c24), r17, c445, not(c446), not(c447), not(c448), not(c449), r16, c440, not(c441), not(c442), not(c443), r12 .
utility( r438 , 71 ).
query( c443 ).
query( c442 ).
query( c441 ).
query( c440 ).
query( c449 ).
query( c448 ).
query( c447 ).
query( c446 ).
query( c445 ).
query( c24 ).
query( c23 ).
query( c22 ).
query( c21 ).
query( c20 ).
query( c19 ).
