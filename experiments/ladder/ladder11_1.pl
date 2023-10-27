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
r58 :- r56 .
r58 :- r57 .
evidence( r58 , false ).
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
? :: c63 .
? :: c62 .
? :: c61 .
? :: c60 .
? :: c59 .
r82 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), c80, not(r6) .
utility( r82 , 43 ).
r81 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), c80, r6 .
utility( r81 , 84 ).
r84 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), c79, not(c80), not(r7) .
utility( r84 , 46 ).
r83 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), c79, not(c80), r7 .
utility( r83 , 20 ).
r86 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), c78, not(c79), not(c80), not(r11) .
utility( r86 , 18 ).
r85 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), c78, not(c79), not(c80), r11 .
utility( r85 , 54 ).
r88 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), c77, not(c78), not(c79), not(c80), not(r12) .
utility( r88 , 58 ).
r87 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), c77, not(c78), not(c79), not(c80), r12 .
utility( r87 , 88 ).
r90 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), c76, not(c77), not(c78), not(c79), not(c80), not(r16) .
utility( r90 , 51 ).
r89 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), c76, not(c77), not(c78), not(c79), not(c80), r16 .
utility( r89 , 24 ).
r92 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), c75, not(c76), not(c77), not(c78), not(c79), not(c80), not(r17) .
utility( r92 , 69 ).
r91 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), c75, not(c76), not(c77), not(c78), not(c79), not(c80), r17 .
utility( r91 , 9 ).
r94 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), c74, not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r21) .
utility( r94 , 86 ).
r93 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), c74, not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r21 .
utility( r93 , 76 ).
r96 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r22) .
utility( r96 , 22 ).
r95 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r22 .
utility( r95 , 38 ).
r98 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r26) .
utility( r98 , 52 ).
r97 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r26 .
utility( r97 , 65 ).
r100 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r27) .
utility( r100 , 83 ).
r99 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r27 .
utility( r99 , 19 ).
r102 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r31) .
utility( r102 , 40 ).
r101 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r31 .
utility( r101 , 82 ).
r104 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r32) .
utility( r104 , 35 ).
r103 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r32 .
utility( r103 , 70 ).
r106 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r36) .
utility( r106 , 91 ).
r105 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r36 .
utility( r105 , 36 ).
r108 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), c67, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r37) .
utility( r108 , 24 ).
r107 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), c67, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r37 .
utility( r107 , 68 ).
r110 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), c66, not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r41) .
utility( r110 , 56 ).
r109 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), c66, not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r41 .
utility( r109 , 22 ).
r112 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), c65, not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r42) .
utility( r112 , 28 ).
r111 :- not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), c65, not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r42 .
utility( r111 , 35 ).
r114 :- not(c59), not(c60), not(c61), not(c62), not(c63), c64, not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r46) .
utility( r114 , 33 ).
r113 :- not(c59), not(c60), not(c61), not(c62), not(c63), c64, not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r46 .
utility( r113 , 36 ).
r116 :- not(c59), not(c60), not(c61), not(c62), c63, not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r47) .
utility( r116 , 71 ).
r115 :- not(c59), not(c60), not(c61), not(c62), c63, not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r47 .
utility( r115 , 53 ).
r118 :- not(c59), not(c60), not(c61), c62, not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r51) .
utility( r118 , 95 ).
r117 :- not(c59), not(c60), not(c61), c62, not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r51 .
utility( r117 , 69 ).
r120 :- not(c59), not(c60), c61, not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r52) .
utility( r120 , 92 ).
r119 :- not(c59), not(c60), c61, not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r52 .
utility( r119 , 57 ).
r122 :- not(c59), c60, not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r56) .
utility( r122 , 46 ).
r121 :- not(c59), c60, not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r56 .
utility( r121 , 24 ).
r124 :- c59, not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), not(r57) .
utility( r124 , 33 ).
r123 :- c59, not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(c74), not(c75), not(c76), not(c77), not(c78), not(c79), not(c80), r57 .
utility( r123 , 78 ).
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
query( c63 ).
query( c62 ).
query( c61 ).
query( c60 ).
query( c59 ).
