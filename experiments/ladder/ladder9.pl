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
r48 :- r46 .
r48 :- r47 .
evidence( r48 , false ).
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
? :: c53 .
? :: c52 .
? :: c51 .
? :: c50 .
? :: c49 .
r96 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), c64, not(r6) .
utility( r96 , 83 ).
r95 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), c64, r6 .
utility( r95 , 19 ).
r94 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), c63, not(c64), not(r7) .
utility( r94 , 52 ).
r93 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), c63, not(c64), r7 .
utility( r93 , 65 ).
r92 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), c62, not(c63), not(c64), not(r11) .
utility( r92 , 22 ).
r91 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), c62, not(c63), not(c64), r11 .
utility( r91 , 38 ).
r90 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), c61, not(c62), not(c63), not(c64), not(r12) .
utility( r90 , 86 ).
r89 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), c61, not(c62), not(c63), not(c64), r12 .
utility( r89 , 76 ).
r88 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), c60, not(c61), not(c62), not(c63), not(c64), not(r16) .
utility( r88 , 69 ).
r87 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), c60, not(c61), not(c62), not(c63), not(c64), r16 .
utility( r87 , 9 ).
r86 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), c59, not(c60), not(c61), not(c62), not(c63), not(c64), not(r17) .
utility( r86 , 51 ).
r85 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), c59, not(c60), not(c61), not(c62), not(c63), not(c64), r17 .
utility( r85 , 24 ).
r84 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), c58, not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r21) .
utility( r84 , 58 ).
r83 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), c58, not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r21 .
utility( r83 , 88 ).
r82 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), c57, not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r22) .
utility( r82 , 18 ).
r81 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), c57, not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r22 .
utility( r81 , 54 ).
r80 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), c56, not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r26) .
utility( r80 , 46 ).
r79 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), c56, not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r26 .
utility( r79 , 20 ).
r78 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), c55, not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r27) .
utility( r78 , 43 ).
r77 :- not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), c55, not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r27 .
utility( r77 , 84 ).
r76 :- not(c49), not(c50), not(c51), not(c52), not(c53), c54, not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r31) .
utility( r76 , 70 ).
r75 :- not(c49), not(c50), not(c51), not(c52), not(c53), c54, not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r31 .
utility( r75 , 59 ).
r74 :- not(c49), not(c50), not(c51), not(c52), c53, not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r32) .
utility( r74 , 99 ).
r73 :- not(c49), not(c50), not(c51), not(c52), c53, not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r32 .
utility( r73 , 20 ).
r72 :- not(c49), not(c50), not(c51), c52, not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r36) .
utility( r72 , 63 ).
r71 :- not(c49), not(c50), not(c51), c52, not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r36 .
utility( r71 , 83 ).
r70 :- not(c49), not(c50), c51, not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r37) .
utility( r70 , 60 ).
r69 :- not(c49), not(c50), c51, not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r37 .
utility( r69 , 97 ).
r68 :- not(c49), c50, not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r41) .
utility( r68 , 97 ).
r67 :- not(c49), c50, not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r41 .
utility( r67 , 57 ).
r66 :- c49, not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), not(r42) .
utility( r66 , 11 ).
r65 :- c49, not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(c60), not(c61), not(c62), not(c63), not(c64), r42 .
utility( r65 , 55 ).
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
query( c53 ).
query( c52 ).
query( c51 ).
query( c50 ).
query( c49 ).
