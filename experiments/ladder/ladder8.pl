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
r85 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), c57, not(r6) .
utility( r85 , 69 ).
r84 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), c57, r6 .
utility( r84 , 9 ).
r83 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), c56, not(c57), not(r7) .
utility( r83 , 51 ).
r82 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), c56, not(c57), r7 .
utility( r82 , 24 ).
r81 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), c55, not(c56), not(c57), not(r11) .
utility( r81 , 58 ).
r80 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), c55, not(c56), not(c57), r11 .
utility( r80 , 88 ).
r79 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), c54, not(c55), not(c56), not(c57), not(r12) .
utility( r79 , 18 ).
r78 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), c54, not(c55), not(c56), not(c57), r12 .
utility( r78 , 54 ).
r77 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), c53, not(c54), not(c55), not(c56), not(c57), not(r16) .
utility( r77 , 46 ).
r76 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), c53, not(c54), not(c55), not(c56), not(c57), r16 .
utility( r76 , 20 ).
r75 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, not(c53), not(c54), not(c55), not(c56), not(c57), not(r17) .
utility( r75 , 43 ).
r74 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), c52, not(c53), not(c54), not(c55), not(c56), not(c57), r17 .
utility( r74 , 84 ).
r73 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r21) .
utility( r73 , 70 ).
r72 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), c51, not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r21 .
utility( r72 , 59 ).
r71 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r22) .
utility( r71 , 99 ).
r70 :- not(c44), not(c45), not(c46), not(c47), not(c48), not(c49), c50, not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r22 .
utility( r70 , 20 ).
r69 :- not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r26) .
utility( r69 , 63 ).
r68 :- not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r26 .
utility( r68 , 83 ).
r67 :- not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r27) .
utility( r67 , 60 ).
r66 :- not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r27 .
utility( r66 , 97 ).
r65 :- not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r31) .
utility( r65 , 97 ).
r64 :- not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r31 .
utility( r64 , 57 ).
r63 :- not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r32) .
utility( r63 , 11 ).
r62 :- not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r32 .
utility( r62 , 55 ).
r61 :- not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r36) .
utility( r61 , 12 ).
r60 :- not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r36 .
utility( r60 , 49 ).
r59 :- c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), not(r37) .
utility( r59 , 70 ).
r58 :- c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(c50), not(c51), not(c52), not(c53), not(c54), not(c55), not(c56), not(c57), r37 .
utility( r58 , 0 ).
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
