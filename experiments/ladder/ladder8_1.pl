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
r43 :- r41 .
r43 :- r42 .
evidence( r43 , false ).
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
? :: c48 .
? :: c47 .
? :: c46 .
? :: c45 .
? :: c44 .
r61 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), c59, not(r6) .
utility( r61 , 11 ).
r60 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), c59, r6 .
utility( r60 , 55 ).
r63 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), c58, not(c59), not(r7) .
utility( r63 , 97 ).
r62 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), c58, not(c59), r7 .
utility( r62 , 57 ).
r65 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), c57, not(c58), not(c59), not(r11) .
utility( r65 , 60 ).
r64 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), c57, not(c58), not(c59), r11 .
utility( r64 , 97 ).
r67 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), c56, not(c57), not(c58), not(c59), not(r12) .
utility( r67 , 63 ).
r66 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), c56, not(c57), not(c58), not(c59), r12 .
utility( r66 , 83 ).
r69 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), c55, not(c56), not(c57), not(c58), not(c59), not(r16) .
utility( r69 , 99 ).
r68 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), c55, not(c56), not(c57), not(c58), not(c59), r16 .
utility( r68 , 20 ).
r71 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), c54, not(c55), not(c56), not(c57), not(c58), not(c59), not(r17) .
utility( r71 , 70 ).
r70 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), c54, not(c55), not(c56), not(c57), not(c58), not(c59), r17 .
utility( r70 , 59 ).
r73 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), c53, not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r21) .
utility( r73 , 43 ).
r72 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), c53, not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r21 .
utility( r72 , 84 ).
r75 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r22) .
utility( r75 , 46 ).
r74 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r22 .
utility( r74 , 20 ).
r77 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r26) .
utility( r77 , 18 ).
r76 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r26 .
utility( r76 , 54 ).
r79 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r27) .
utility( r79 , 58 ).
r78 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r27 .
utility( r78 , 88 ).
r81 :- not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r31) .
utility( r81 , 51 ).
r80 :- not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r31 .
utility( r80 , 24 ).
r83 :- not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r32) .
utility( r83 , 69 ).
r82 :- not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r32 .
utility( r82 , 9 ).
r85 :- not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r36) .
utility( r85 , 86 ).
r84 :- not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r36 .
utility( r84 , 76 ).
r87 :- not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r37) .
utility( r87 , 22 ).
r86 :- not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r37 .
utility( r86 , 38 ).
r89 :- not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r41) .
utility( r89 , 52 ).
r88 :- not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r41 .
utility( r88 , 65 ).
r91 :- c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), not(r42) .
utility( r91 , 83 ).
r90 :- c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(c58), not(c59), r42 .
utility( r90 , 19 ).
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
query( c48 ).
query( c47 ).
query( c46 ).
query( c45 ).
query( c44 ).
