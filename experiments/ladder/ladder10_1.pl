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
r53 :- r51 .
r53 :- r52 .
evidence( r53 , false ).
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
? :: c58 .
? :: c57 .
? :: c56 .
? :: c55 .
? :: c54 .
r75 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), c73, not(r6) .
utility( r75 , 99 ).
r74 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), c73, r6 .
utility( r74 , 20 ).
r77 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), c72, not(c73), not(r7) .
utility( r77 , 70 ).
r76 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), c72, not(c73), r7 .
utility( r76 , 59 ).
r79 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), c71, not(c72), not(c73), not(r11) .
utility( r79 , 43 ).
r78 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), c71, not(c72), not(c73), r11 .
utility( r78 , 84 ).
r81 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), c70, not(c71), not(c72), not(c73), not(r12) .
utility( r81 , 46 ).
r80 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), c70, not(c71), not(c72), not(c73), r12 .
utility( r80 , 20 ).
r83 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), c69, not(c70), not(c71), not(c72), not(c73), not(r16) .
utility( r83 , 18 ).
r82 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), c69, not(c70), not(c71), not(c72), not(c73), r16 .
utility( r82 , 54 ).
r85 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), c68, not(c69), not(c70), not(c71), not(c72), not(c73), not(r17) .
utility( r85 , 58 ).
r84 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), c68, not(c69), not(c70), not(c71), not(c72), not(c73), r17 .
utility( r84 , 88 ).
r87 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), c67, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r21) .
utility( r87 , 51 ).
r86 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), c67, not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r21 .
utility( r86 , 24 ).
r89 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), c66, not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r22) .
utility( r89 , 69 ).
r88 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), c66, not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r22 .
utility( r88 , 9 ).
r91 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), c65, not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r26) .
utility( r91 , 86 ).
r90 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), c65, not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r26 .
utility( r90 , 76 ).
r93 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), c64, not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r27) .
utility( r93 , 22 ).
r92 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), c64, not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r27 .
utility( r92 , 38 ).
r95 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), c63, not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r31) .
utility( r95 , 52 ).
r94 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), c63, not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r31 .
utility( r94 , 65 ).
r97 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), c62, not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r32) .
utility( r97 , 83 ).
r96 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), c62, not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r32 .
utility( r96 , 19 ).
r99 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), c61, not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r36) .
utility( r99 , 40 ).
r98 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), c61, not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r36 .
utility( r98 , 82 ).
r101 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), c60, not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r37) .
utility( r101 , 35 ).
r100 :- not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), c60, not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r37 .
utility( r100 , 70 ).
r103 :- not(c54), not(c55), not(c56), not(c57), not(c58), c59, not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r41) .
utility( r103 , 91 ).
r102 :- not(c54), not(c55), not(c56), not(c57), not(c58), c59, not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r41 .
utility( r102 , 36 ).
r105 :- not(c54), not(c55), not(c56), not(c57), c58, not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r42) .
utility( r105 , 24 ).
r104 :- not(c54), not(c55), not(c56), not(c57), c58, not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r42 .
utility( r104 , 68 ).
r107 :- not(c54), not(c55), not(c56), c57, not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r46) .
utility( r107 , 56 ).
r106 :- not(c54), not(c55), not(c56), c57, not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r46 .
utility( r106 , 22 ).
r109 :- not(c54), not(c55), c56, not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r47) .
utility( r109 , 28 ).
r108 :- not(c54), not(c55), c56, not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r47 .
utility( r108 , 35 ).
r111 :- not(c54), c55, not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r51) .
utility( r111 , 33 ).
r110 :- not(c54), c55, not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r51 .
utility( r110 , 36 ).
r113 :- c54, not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), not(r52) .
utility( r113 , 71 ).
r112 :- c54, not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(c65), not(c66), not(c67), not(c68), not(c69), not(c70), not(c71), not(c72), not(c73), r52 .
utility( r112 , 53 ).
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
query( c58 ).
query( c57 ).
query( c56 ).
query( c55 ).
query( c54 ).
