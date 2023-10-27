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
0.5 :: f23 .
0.0001 :: f24 .
0.0001 :: f25 .
r26 :- r21, not(f24), f23 .
r26 :- r22, not(r21), f23 .
r27 :- r21, not(f25), not(f23) .
r27 :- r22, not(r21), not(f23) .
0.5 :: f28 .
0.0001 :: f29 .
0.0001 :: f30 .
r31 :- r26, not(f29), f28 .
r31 :- r27, not(r26), f28 .
r32 :- r26, not(f30), not(f28) .
r32 :- r27, not(r26), not(f28) .
0.5 :: f33 .
0.0001 :: f34 .
0.0001 :: f35 .
r36 :- r31, not(f34), f33 .
r36 :- r32, not(r31), f33 .
r37 :- r31, not(f35), not(f33) .
r37 :- r32, not(r31), not(f33) .
0.5 :: f38 .
0.0001 :: f39 .
0.0001 :: f40 .
r41 :- r36, not(f39), f38 .
r41 :- r37, not(r36), f38 .
r42 :- r36, not(f40), not(f38) .
r42 :- r37, not(r36), not(f38) .
0.5 :: f43 .
0.0001 :: f44 .
0.0001 :: f45 .
r46 :- r41, not(f44), f43 .
r46 :- r42, not(r41), f43 .
r47 :- r41, not(f45), not(f43) .
r47 :- r42, not(r41), not(f43) .
0.5 :: f48 .
0.0001 :: f49 .
0.0001 :: f50 .
r51 :- r46, not(f49), f48 .
r51 :- r47, not(r46), f48 .
r52 :- r46, not(f50), not(f48) .
r52 :- r47, not(r46), not(f48) .
0.5 :: f53 .
0.0001 :: f54 .
0.0001 :: f55 .
r56 :- r51, not(f54), f53 .
r56 :- r52, not(r51), f53 .
r57 :- r51, not(f55), not(f53) .
r57 :- r52, not(r51), not(f53) .
0.5 :: f58 .
0.0001 :: f59 .
0.0001 :: f60 .
r61 :- r56, not(f59), f58 .
r61 :- r57, not(r56), f58 .
r62 :- r56, not(f60), not(f58) .
r62 :- r57, not(r56), not(f58) .
r63 :- r61 .
r63 :- r62 .
evidence( r63 , false ).
? :: c85 .
? :: c84 .
? :: c83 .
? :: c82 .
? :: c81 .
? :: c80 .
? :: c79 .
? :: c78 .
? :: c77 .
? :: c76 .
? :: c75 .
? :: c74 .
? :: c73 .
? :: c72 .
? :: c71 .
? :: c70 .
? :: c69 .
? :: c68 .
? :: c67 .
? :: c66 .
? :: c65 .
? :: c64 .
r129 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), c85, not(r6) .
utility( r129 , 33 ).
r128 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), c85, r6 .
utility( r128 , 78 ).
r127 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), c84, not(c85), not(r7) .
utility( r127 , 46 ).
r126 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), c84, not(c85), r7 .
utility( r126 , 24 ).
r125 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), c83, not(c84), not(c85), not(r11) .
utility( r125 , 92 ).
r124 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), c83, not(c84), not(c85), r11 .
utility( r124 , 57 ).
r123 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), c82, not(c83), not(c84), not(c85), not(r12) .
utility( r123 , 95 ).
r122 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), c82, not(c83), not(c84), not(c85), r12 .
utility( r122 , 69 ).
r121 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), c81, not(c82), not(c83), not(c84), not(c85), not(r16) .
utility( r121 , 71 ).
r120 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), c81, not(c82), not(c83), not(c84), not(c85), r16 .
utility( r120 , 53 ).
r119 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), c80, not(c81), not(c82), not(c83), not(c84), not(c85), not(r17) .
utility( r119 , 33 ).
r118 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), c80, not(c81), not(c82), not(c83), not(c84), not(c85), r17 .
utility( r118 , 36 ).
r117 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), c79, not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r21) .
utility( r117 , 28 ).
r116 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), c79, not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r21 .
utility( r116 , 35 ).
r115 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), c78, not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r22) .
utility( r115 , 56 ).
r114 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), c78, not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r22 .
utility( r114 , 22 ).
r113 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), c77, not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r26) .
utility( r113 , 24 ).
r112 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), c77, not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r26 .
utility( r112 , 68 ).
r111 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), c76, not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r27) .
utility( r111 , 91 ).
r110 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), c76, not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r27 .
utility( r110 , 36 ).
r109 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), c75, not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r31) .
utility( r109 , 35 ).
r108 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), c75, not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r31 .
utility( r108 , 70 ).
r107 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), c74, not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r32) .
utility( r107 , 40 ).
r106 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), c74, not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r32 .
utility( r106 , 82 ).
r105 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r36) .
utility( r105 , 83 ).
r104 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r36 .
utility( r104 , 19 ).
r103 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r37) .
utility( r103 , 52 ).
r102 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r37 .
utility( r102 , 65 ).
r101 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r41) .
utility( r101 , 22 ).
r100 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r41 .
utility( r100 , 38 ).
r99 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r42) .
utility( r99 , 86 ).
r98 :- not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r42 .
utility( r98 , 76 ).
r97 :- not(c64), not(c65), not(c66), not(c67), not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r46) .
utility( r97 , 69 ).
r96 :- not(c64), not(c65), not(c66), not(c67), not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r46 .
utility( r96 , 9 ).
r95 :- not(c64), not(c65), not(c66), not(c67), c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r47) .
utility( r95 , 51 ).
r94 :- not(c64), not(c65), not(c66), not(c67), c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r47 .
utility( r94 , 24 ).
r93 :- not(c64), not(c65), not(c66), c67, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r51) .
utility( r93 , 58 ).
r92 :- not(c64), not(c65), not(c66), c67, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r51 .
utility( r92 , 88 ).
r91 :- not(c64), not(c65), c66, not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r52) .
utility( r91 , 18 ).
r90 :- not(c64), not(c65), c66, not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r52 .
utility( r90 , 54 ).
r89 :- not(c64), c65, not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r56) .
utility( r89 , 46 ).
r88 :- not(c64), c65, not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r56 .
utility( r88 , 20 ).
r87 :- c64, not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), not(r57) .
utility( r87 , 43 ).
r86 :- c64, not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(c81), not(c82), not(c83), not(c84), not(c85), r57 .
utility( r86 , 84 ).
query( c85 ).
query( c84 ).
query( c83 ).
query( c82 ).
query( c81 ).
query( c80 ).
query( c79 ).
query( c78 ).
query( c77 ).
query( c76 ).
query( c75 ).
query( c74 ).
query( c73 ).
query( c72 ).
query( c71 ).
query( c70 ).
query( c69 ).
query( c68 ).
query( c67 ).
query( c66 ).
query( c65 ).
query( c64 ).
