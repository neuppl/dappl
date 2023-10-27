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
r172 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, not(r6) .
utility( r172 , 31 ).
? :: c171 .
? :: c170 .
? :: c169 .
? :: c168 .
? :: c167 .
? :: c166 .
? :: c165 .
r50 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, not(r7) .
utility( r50 , 27 ).
? :: c49 .
? :: c48 .
? :: c47 .
? :: c46 .
? :: c45 .
? :: c44 .
r33 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), not(c46), not(c47), not(c48), c49, not(r11) .
utility( r33 , 3 ).
r32 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), not(c46), not(c47), not(c48), c49, r11 .
utility( r32 , 12 ).
r35 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), not(c46), not(c47), c48, not(c49), not(r12) .
utility( r35 , 50 ).
r34 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), not(c46), not(c47), c48, not(c49), r12 .
utility( r34 , 48 ).
r37 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), not(c46), c47, not(c48), not(c49), not(r16) .
utility( r37 , 16 ).
r36 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), not(c46), c47, not(c48), not(c49), r16 .
utility( r36 , 41 ).
r39 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), c46, not(c47), not(c48), not(c49), not(r17) .
utility( r39 , 93 ).
r38 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), not(c45), c46, not(c47), not(c48), not(c49), r17 .
utility( r38 , 2 ).
r41 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), c45, not(c46), not(c47), not(c48), not(c49), not(r21) .
utility( r41 , 81 ).
r40 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, not(c44), c45, not(c46), not(c47), not(c48), not(c49), r21 .
utility( r40 , 93 ).
r43 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, c44, not(c45), not(c46), not(c47), not(c48), not(c49), not(r22) .
utility( r43 , 20 ).
r42 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), not(c170), c171, r7, c44, not(c45), not(c46), not(c47), not(c48), not(c49), r22 .
utility( r42 , 99 ).
query( c49 ).
query( c48 ).
query( c47 ).
query( c46 ).
query( c45 ).
query( c44 ).
r69 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), not(r11) .
utility( r69 , 85 ).
? :: c68 .
? :: c67 .
? :: c66 .
? :: c65 .
? :: c64 .
? :: c63 .
r52 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), not(c65), not(c66), not(c67), c68, not(r7) .
utility( r52 , 73 ).
r51 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), not(c65), not(c66), not(c67), c68, r7 .
utility( r51 , 56 ).
r54 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), not(c65), not(c66), c67, not(c68), not(r12) .
utility( r54 , 64 ).
r53 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), not(c65), not(c66), c67, not(c68), r12 .
utility( r53 , 74 ).
r56 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), not(c65), c66, not(c67), not(c68), not(r16) .
utility( r56 , 52 ).
r55 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), not(c65), c66, not(c67), not(c68), r16 .
utility( r55 , 22 ).
r58 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), c65, not(c66), not(c67), not(c68), not(r17) .
utility( r58 , 97 ).
r57 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), not(c64), c65, not(c66), not(c67), not(c68), r17 .
utility( r57 , 74 ).
r60 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), c64, not(c65), not(c66), not(c67), not(c68), not(r21) .
utility( r60 , 52 ).
r59 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, not(c63), c64, not(c65), not(c66), not(c67), not(c68), r21 .
utility( r59 , 36 ).
r62 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, c63, not(c64), not(c65), not(c66), not(c67), not(c68), not(r22) .
utility( r62 , 60 ).
r61 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), not(c169), c170, not(c171), r11, c63, not(c64), not(c65), not(c66), not(c67), not(c68), r22 .
utility( r61 , 77 ).
query( c68 ).
query( c67 ).
query( c66 ).
query( c65 ).
query( c64 ).
query( c63 ).
r88 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), not(r12) .
utility( r88 , 25 ).
? :: c87 .
? :: c86 .
? :: c85 .
? :: c84 .
? :: c83 .
? :: c82 .
r71 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), not(c84), not(c85), not(c86), c87, not(r7) .
utility( r71 , 33 ).
r70 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), not(c84), not(c85), not(c86), c87, r7 .
utility( r70 , 89 ).
r73 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), not(c84), not(c85), c86, not(c87), not(r11) .
utility( r73 , 23 ).
r72 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), not(c84), not(c85), c86, not(c87), r11 .
utility( r72 , 94 ).
r75 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), not(c84), c85, not(c86), not(c87), not(r16) .
utility( r75 , 45 ).
r74 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), not(c84), c85, not(c86), not(c87), r16 .
utility( r74 , 34 ).
r77 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), c84, not(c85), not(c86), not(c87), not(r17) .
utility( r77 , 74 ).
r76 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), not(c83), c84, not(c85), not(c86), not(c87), r17 .
utility( r76 , 77 ).
r79 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), c83, not(c84), not(c85), not(c86), not(c87), not(r21) .
utility( r79 , 17 ).
r78 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, not(c82), c83, not(c84), not(c85), not(c86), not(c87), r21 .
utility( r78 , 2 ).
r81 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, c82, not(c83), not(c84), not(c85), not(c86), not(c87), not(r22) .
utility( r81 , 29 ).
r80 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), not(c168), c169, not(c170), not(c171), r12, c82, not(c83), not(c84), not(c85), not(c86), not(c87), r22 .
utility( r80 , 93 ).
query( c87 ).
query( c86 ).
query( c85 ).
query( c84 ).
query( c83 ).
query( c82 ).
r107 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), not(r16) .
utility( r107 , 15 ).
? :: c106 .
? :: c105 .
? :: c104 .
? :: c103 .
? :: c102 .
? :: c101 .
r90 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), not(c103), not(c104), not(c105), c106, not(r7) .
utility( r90 , 69 ).
r89 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), not(c103), not(c104), not(c105), c106, r7 .
utility( r89 , 47 ).
r92 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), not(c103), not(c104), c105, not(c106), not(r11) .
utility( r92 , 15 ).
r91 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), not(c103), not(c104), c105, not(c106), r11 .
utility( r91 , 97 ).
r94 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), not(c103), c104, not(c105), not(c106), not(r12) .
utility( r94 , 58 ).
r93 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), not(c103), c104, not(c105), not(c106), r12 .
utility( r93 , 88 ).
r96 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), c103, not(c104), not(c105), not(c106), not(r17) .
utility( r96 , 32 ).
r95 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), not(c102), c103, not(c104), not(c105), not(c106), r17 .
utility( r95 , 45 ).
r98 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), c102, not(c103), not(c104), not(c105), not(c106), not(r21) .
utility( r98 , 86 ).
r97 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, not(c101), c102, not(c103), not(c104), not(c105), not(c106), r21 .
utility( r97 , 19 ).
r100 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, c101, not(c102), not(c103), not(c104), not(c105), not(c106), not(r22) .
utility( r100 , 99 ).
r99 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), not(c167), c168, not(c169), not(c170), not(c171), r16, c101, not(c102), not(c103), not(c104), not(c105), not(c106), r22 .
utility( r99 , 68 ).
query( c106 ).
query( c105 ).
query( c104 ).
query( c103 ).
query( c102 ).
query( c101 ).
r126 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), not(r17) .
utility( r126 , 42 ).
? :: c125 .
? :: c124 .
? :: c123 .
? :: c122 .
? :: c121 .
? :: c120 .
r109 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), not(c122), not(c123), not(c124), c125, not(r7) .
utility( r109 , 62 ).
r108 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), not(c122), not(c123), not(c124), c125, r7 .
utility( r108 , 79 ).
r111 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), not(c122), not(c123), c124, not(c125), not(r11) .
utility( r111 , 42 ).
r110 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), not(c122), not(c123), c124, not(c125), r11 .
utility( r110 , 65 ).
r113 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), not(c122), c123, not(c124), not(c125), not(r12) .
utility( r113 , 39 ).
r112 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), not(c122), c123, not(c124), not(c125), r12 .
utility( r112 , 67 ).
r115 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), c122, not(c123), not(c124), not(c125), not(r16) .
utility( r115 , 43 ).
r114 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), not(c121), c122, not(c123), not(c124), not(c125), r16 .
utility( r114 , 74 ).
r117 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), c121, not(c122), not(c123), not(c124), not(c125), not(r21) .
utility( r117 , 20 ).
r116 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, not(c120), c121, not(c122), not(c123), not(c124), not(c125), r21 .
utility( r116 , 41 ).
r119 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, c120, not(c121), not(c122), not(c123), not(c124), not(c125), not(r22) .
utility( r119 , 76 ).
r118 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), not(c166), c167, not(c168), not(c169), not(c170), not(c171), r17, c120, not(c121), not(c122), not(c123), not(c124), not(c125), r22 .
utility( r118 , 28 ).
query( c125 ).
query( c124 ).
query( c123 ).
query( c122 ).
query( c121 ).
query( c120 ).
r145 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), not(r21) .
utility( r145 , 85 ).
? :: c144 .
? :: c143 .
? :: c142 .
? :: c141 .
? :: c140 .
? :: c139 .
r128 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), not(c141), not(c142), not(c143), c144, not(r7) .
utility( r128 , 34 ).
r127 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), not(c141), not(c142), not(c143), c144, r7 .
utility( r127 , 88 ).
r130 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), not(c141), not(c142), c143, not(c144), not(r11) .
utility( r130 , 95 ).
r129 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), not(c141), not(c142), c143, not(c144), r11 .
utility( r129 , 96 ).
r132 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), not(c141), c142, not(c143), not(c144), not(r12) .
utility( r132 , 21 ).
r131 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), not(c141), c142, not(c143), not(c144), r12 .
utility( r131 , 71 ).
r134 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), c141, not(c142), not(c143), not(c144), not(r16) .
utility( r134 , 78 ).
r133 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), not(c140), c141, not(c142), not(c143), not(c144), r16 .
utility( r133 , 5 ).
r136 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), c140, not(c141), not(c142), not(c143), not(c144), not(r17) .
utility( r136 , 48 ).
r135 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, not(c139), c140, not(c141), not(c142), not(c143), not(c144), r17 .
utility( r135 , 29 ).
r138 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, c139, not(c140), not(c141), not(c142), not(c143), not(c144), not(r22) .
utility( r138 , 70 ).
r137 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, not(c165), c166, not(c167), not(c168), not(c169), not(c170), not(c171), r21, c139, not(c140), not(c141), not(c142), not(c143), not(c144), r22 .
utility( r137 , 54 ).
query( c144 ).
query( c143 ).
query( c142 ).
query( c141 ).
query( c140 ).
query( c139 ).
r164 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), not(r22) .
utility( r164 , 41 ).
? :: c163 .
? :: c162 .
? :: c161 .
? :: c160 .
? :: c159 .
? :: c158 .
r147 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), not(c160), not(c161), not(c162), c163, not(r7) .
utility( r147 , 48 ).
r146 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), not(c160), not(c161), not(c162), c163, r7 .
utility( r146 , 55 ).
r149 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), not(c160), not(c161), c162, not(c163), not(r11) .
utility( r149 , 90 ).
r148 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), not(c160), not(c161), c162, not(c163), r11 .
utility( r148 , 18 ).
r151 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), not(c160), c161, not(c162), not(c163), not(r12) .
utility( r151 , 85 ).
r150 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), not(c160), c161, not(c162), not(c163), r12 .
utility( r150 , 53 ).
r153 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), c160, not(c161), not(c162), not(c163), not(r16) .
utility( r153 , 15 ).
r152 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), not(c159), c160, not(c161), not(c162), not(c163), r16 .
utility( r152 , 68 ).
r155 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), c159, not(c160), not(c161), not(c162), not(c163), not(r17) .
utility( r155 , 59 ).
r154 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, not(c158), c159, not(c160), not(c161), not(c162), not(c163), r17 .
utility( r154 , 86 ).
r157 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, c158, not(c159), not(c160), not(c161), not(c162), not(c163), not(r21) .
utility( r157 , 74 ).
r156 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), c31, r6, c165, not(c166), not(c167), not(c168), not(c169), not(c170), not(c171), r22, c158, not(c159), not(c160), not(c161), not(c162), not(c163), r21 .
utility( r156 , 97 ).
query( c163 ).
query( c162 ).
query( c161 ).
query( c160 ).
query( c159 ).
query( c158 ).
query( c171 ).
query( c170 ).
query( c169 ).
query( c168 ).
query( c167 ).
query( c166 ).
query( c165 ).
r313 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), not(r7) .
utility( r313 , 13 ).
? :: c312 .
? :: c311 .
? :: c310 .
? :: c309 .
? :: c308 .
? :: c307 .
? :: c306 .
r191 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, not(r6) .
utility( r191 , 6 ).
? :: c190 .
? :: c189 .
? :: c188 .
? :: c187 .
? :: c186 .
? :: c185 .
r174 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), not(c187), not(c188), not(c189), c190, not(r11) .
utility( r174 , 22 ).
r173 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), not(c187), not(c188), not(c189), c190, r11 .
utility( r173 , 29 ).
r176 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), not(c187), not(c188), c189, not(c190), not(r12) .
utility( r176 , 60 ).
r175 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), not(c187), not(c188), c189, not(c190), r12 .
utility( r175 , 97 ).
r178 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), not(c187), c188, not(c189), not(c190), not(r16) .
utility( r178 , 1 ).
r177 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), not(c187), c188, not(c189), not(c190), r16 .
utility( r177 , 66 ).
r180 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), c187, not(c188), not(c189), not(c190), not(r17) .
utility( r180 , 15 ).
r179 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), not(c186), c187, not(c188), not(c189), not(c190), r17 .
utility( r179 , 75 ).
r182 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), c186, not(c187), not(c188), not(c189), not(c190), not(r21) .
utility( r182 , 57 ).
r181 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, not(c185), c186, not(c187), not(c188), not(c189), not(c190), r21 .
utility( r181 , 5 ).
r184 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, c185, not(c186), not(c187), not(c188), not(c189), not(c190), not(r22) .
utility( r184 , 72 ).
r183 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), not(c311), c312, r6, c185, not(c186), not(c187), not(c188), not(c189), not(c190), r22 .
utility( r183 , 73 ).
query( c190 ).
query( c189 ).
query( c188 ).
query( c187 ).
query( c186 ).
query( c185 ).
r210 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), not(r11) .
utility( r210 , 98 ).
? :: c209 .
? :: c208 .
? :: c207 .
? :: c206 .
? :: c205 .
? :: c204 .
r193 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), not(c206), not(c207), not(c208), c209, not(r6) .
utility( r193 , 70 ).
r192 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), not(c206), not(c207), not(c208), c209, r6 .
utility( r192 , 51 ).
r195 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), not(c206), not(c207), c208, not(c209), not(r12) .
utility( r195 , 55 ).
r194 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), not(c206), not(c207), c208, not(c209), r12 .
utility( r194 , 61 ).
r197 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), not(c206), c207, not(c208), not(c209), not(r16) .
utility( r197 , 87 ).
r196 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), not(c206), c207, not(c208), not(c209), r16 .
utility( r196 , 12 ).
r199 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), c206, not(c207), not(c208), not(c209), not(r17) .
utility( r199 , 33 ).
r198 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), not(c205), c206, not(c207), not(c208), not(c209), r17 .
utility( r198 , 89 ).
r201 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), c205, not(c206), not(c207), not(c208), not(c209), not(r21) .
utility( r201 , 16 ).
r200 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, not(c204), c205, not(c206), not(c207), not(c208), not(c209), r21 .
utility( r200 , 9 ).
r203 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, c204, not(c205), not(c206), not(c207), not(c208), not(c209), not(r22) .
utility( r203 , 3 ).
r202 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), not(c310), c311, not(c312), r11, c204, not(c205), not(c206), not(c207), not(c208), not(c209), r22 .
utility( r202 , 2 ).
query( c209 ).
query( c208 ).
query( c207 ).
query( c206 ).
query( c205 ).
query( c204 ).
r229 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), not(r12) .
utility( r229 , 29 ).
? :: c228 .
? :: c227 .
? :: c226 .
? :: c225 .
? :: c224 .
? :: c223 .
r212 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), not(c225), not(c226), not(c227), c228, not(r6) .
utility( r212 , 36 ).
r211 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), not(c225), not(c226), not(c227), c228, r6 .
utility( r211 , 26 ).
r214 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), not(c225), not(c226), c227, not(c228), not(r11) .
utility( r214 , 32 ).
r213 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), not(c225), not(c226), c227, not(c228), r11 .
utility( r213 , 30 ).
r216 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), not(c225), c226, not(c227), not(c228), not(r16) .
utility( r216 , 26 ).
r215 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), not(c225), c226, not(c227), not(c228), r16 .
utility( r215 , 18 ).
r218 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), c225, not(c226), not(c227), not(c228), not(r17) .
utility( r218 , 20 ).
r217 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), not(c224), c225, not(c226), not(c227), not(c228), r17 .
utility( r217 , 42 ).
r220 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), c224, not(c225), not(c226), not(c227), not(c228), not(r21) .
utility( r220 , 42 ).
r219 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, not(c223), c224, not(c225), not(c226), not(c227), not(c228), r21 .
utility( r219 , 37 ).
r222 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, c223, not(c224), not(c225), not(c226), not(c227), not(c228), not(r22) .
utility( r222 , 29 ).
r221 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), not(c309), c310, not(c311), not(c312), r12, c223, not(c224), not(c225), not(c226), not(c227), not(c228), r22 .
utility( r221 , 99 ).
query( c228 ).
query( c227 ).
query( c226 ).
query( c225 ).
query( c224 ).
query( c223 ).
r248 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), not(r16) .
utility( r248 , 94 ).
? :: c247 .
? :: c246 .
? :: c245 .
? :: c244 .
? :: c243 .
? :: c242 .
r231 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), not(c244), not(c245), not(c246), c247, not(r6) .
utility( r231 , 40 ).
r230 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), not(c244), not(c245), not(c246), c247, r6 .
utility( r230 , 80 ).
r233 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), not(c244), not(c245), c246, not(c247), not(r11) .
utility( r233 , 14 ).
r232 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), not(c244), not(c245), c246, not(c247), r11 .
utility( r232 , 23 ).
r235 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), not(c244), c245, not(c246), not(c247), not(r12) .
utility( r235 , 44 ).
r234 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), not(c244), c245, not(c246), not(c247), r12 .
utility( r234 , 17 ).
r237 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), c244, not(c245), not(c246), not(c247), not(r17) .
utility( r237 , 46 ).
r236 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), not(c243), c244, not(c245), not(c246), not(c247), r17 .
utility( r236 , 12 ).
r239 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), c243, not(c244), not(c245), not(c246), not(c247), not(r21) .
utility( r239 , 95 ).
r238 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, not(c242), c243, not(c244), not(c245), not(c246), not(c247), r21 .
utility( r238 , 24 ).
r241 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, c242, not(c243), not(c244), not(c245), not(c246), not(c247), not(r22) .
utility( r241 , 3 ).
r240 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), not(c308), c309, not(c310), not(c311), not(c312), r16, c242, not(c243), not(c244), not(c245), not(c246), not(c247), r22 .
utility( r240 , 75 ).
query( c247 ).
query( c246 ).
query( c245 ).
query( c244 ).
query( c243 ).
query( c242 ).
r267 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), not(r17) .
utility( r267 , 75 ).
? :: c266 .
? :: c265 .
? :: c264 .
? :: c263 .
? :: c262 .
? :: c261 .
r250 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), not(c263), not(c264), not(c265), c266, not(r6) .
utility( r250 , 61 ).
r249 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), not(c263), not(c264), not(c265), c266, r6 .
utility( r249 , 72 ).
r252 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), not(c263), not(c264), c265, not(c266), not(r11) .
utility( r252 , 4 ).
r251 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), not(c263), not(c264), c265, not(c266), r11 .
utility( r251 , 30 ).
r254 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), not(c263), c264, not(c265), not(c266), not(r12) .
utility( r254 , 22 ).
r253 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), not(c263), c264, not(c265), not(c266), r12 .
utility( r253 , 8 ).
r256 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), c263, not(c264), not(c265), not(c266), not(r16) .
utility( r256 , 99 ).
r255 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), not(c262), c263, not(c264), not(c265), not(c266), r16 .
utility( r255 , 85 ).
r258 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), c262, not(c263), not(c264), not(c265), not(c266), not(r21) .
utility( r258 , 70 ).
r257 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, not(c261), c262, not(c263), not(c264), not(c265), not(c266), r21 .
utility( r257 , 15 ).
r260 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, c261, not(c262), not(c263), not(c264), not(c265), not(c266), not(r22) .
utility( r260 , 40 ).
r259 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), not(c307), c308, not(c309), not(c310), not(c311), not(c312), r17, c261, not(c262), not(c263), not(c264), not(c265), not(c266), r22 .
utility( r259 , 28 ).
query( c266 ).
query( c265 ).
query( c264 ).
query( c263 ).
query( c262 ).
query( c261 ).
r286 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), not(r21) .
utility( r286 , 27 ).
? :: c285 .
? :: c284 .
? :: c283 .
? :: c282 .
? :: c281 .
? :: c280 .
r269 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), not(c282), not(c283), not(c284), c285, not(r6) .
utility( r269 , 85 ).
r268 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), not(c282), not(c283), not(c284), c285, r6 .
utility( r268 , 10 ).
r271 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), not(c282), not(c283), c284, not(c285), not(r11) .
utility( r271 , 37 ).
r270 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), not(c282), not(c283), c284, not(c285), r11 .
utility( r270 , 18 ).
r273 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), not(c282), c283, not(c284), not(c285), not(r12) .
utility( r273 , 43 ).
r272 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), not(c282), c283, not(c284), not(c285), r12 .
utility( r272 , 91 ).
r275 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), c282, not(c283), not(c284), not(c285), not(r16) .
utility( r275 , 32 ).
r274 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), not(c281), c282, not(c283), not(c284), not(c285), r16 .
utility( r274 , 57 ).
r277 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), c281, not(c282), not(c283), not(c284), not(c285), not(r17) .
utility( r277 , 88 ).
r276 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, not(c280), c281, not(c282), not(c283), not(c284), not(c285), r17 .
utility( r276 , 9 ).
r279 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, c280, not(c281), not(c282), not(c283), not(c284), not(c285), not(r22) .
utility( r279 , 83 ).
r278 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, not(c306), c307, not(c308), not(c309), not(c310), not(c311), not(c312), r21, c280, not(c281), not(c282), not(c283), not(c284), not(c285), r22 .
utility( r278 , 62 ).
query( c285 ).
query( c284 ).
query( c283 ).
query( c282 ).
query( c281 ).
query( c280 ).
r305 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), not(r22) .
utility( r305 , 23 ).
? :: c304 .
? :: c303 .
? :: c302 .
? :: c301 .
? :: c300 .
? :: c299 .
r288 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), not(c301), not(c302), not(c303), c304, not(r6) .
utility( r288 , 98 ).
r287 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), not(c301), not(c302), not(c303), c304, r6 .
utility( r287 , 31 ).
r290 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), not(c301), not(c302), c303, not(c304), not(r11) .
utility( r290 , 10 ).
r289 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), not(c301), not(c302), c303, not(c304), r11 .
utility( r289 , 51 ).
r292 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), not(c301), c302, not(c303), not(c304), not(r12) .
utility( r292 , 64 ).
r291 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), not(c301), c302, not(c303), not(c304), r12 .
utility( r291 , 48 ).
r294 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), c301, not(c302), not(c303), not(c304), not(r16) .
utility( r294 , 99 ).
r293 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), not(c300), c301, not(c302), not(c303), not(c304), r16 .
utility( r293 , 94 ).
r296 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), c300, not(c301), not(c302), not(c303), not(c304), not(r17) .
utility( r296 , 45 ).
r295 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, not(c299), c300, not(c301), not(c302), not(c303), not(c304), r17 .
utility( r295 , 81 ).
r298 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, c299, not(c300), not(c301), not(c302), not(c303), not(c304), not(r21) .
utility( r298 , 21 ).
r297 :- not(c24), not(c25), not(c26), not(c27), not(c28), not(c29), c30, not(c31), r7, c306, not(c307), not(c308), not(c309), not(c310), not(c311), not(c312), r22, c299, not(c300), not(c301), not(c302), not(c303), not(c304), r21 .
utility( r297 , 38 ).
query( c304 ).
query( c303 ).
query( c302 ).
query( c301 ).
query( c300 ).
query( c299 ).
query( c312 ).
query( c311 ).
query( c310 ).
query( c309 ).
query( c308 ).
query( c307 ).
query( c306 ).
r454 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), not(r11) .
utility( r454 , 15 ).
? :: c453 .
? :: c452 .
? :: c451 .
? :: c450 .
? :: c449 .
? :: c448 .
? :: c447 .
r332 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, not(r6) .
utility( r332 , 70 ).
? :: c331 .
? :: c330 .
? :: c329 .
? :: c328 .
? :: c327 .
? :: c326 .
r315 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), not(c328), not(c329), not(c330), c331, not(r7) .
utility( r315 , 60 ).
r314 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), not(c328), not(c329), not(c330), c331, r7 .
utility( r314 , 73 ).
r317 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), not(c328), not(c329), c330, not(c331), not(r12) .
utility( r317 , 20 ).
r316 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), not(c328), not(c329), c330, not(c331), r12 .
utility( r316 , 4 ).
r319 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), not(c328), c329, not(c330), not(c331), not(r16) .
utility( r319 , 88 ).
r318 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), not(c328), c329, not(c330), not(c331), r16 .
utility( r318 , 36 ).
r321 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), c328, not(c329), not(c330), not(c331), not(r17) .
utility( r321 , 35 ).
r320 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), not(c327), c328, not(c329), not(c330), not(c331), r17 .
utility( r320 , 85 ).
r323 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), c327, not(c328), not(c329), not(c330), not(c331), not(r21) .
utility( r323 , 48 ).
r322 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, not(c326), c327, not(c328), not(c329), not(c330), not(c331), r21 .
utility( r322 , 94 ).
r325 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, c326, not(c327), not(c328), not(c329), not(c330), not(c331), not(r22) .
utility( r325 , 14 ).
r324 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), not(c452), c453, r6, c326, not(c327), not(c328), not(c329), not(c330), not(c331), r22 .
utility( r324 , 73 ).
query( c331 ).
query( c330 ).
query( c329 ).
query( c328 ).
query( c327 ).
query( c326 ).
r351 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), not(r7) .
utility( r351 , 70 ).
? :: c350 .
? :: c349 .
? :: c348 .
? :: c347 .
? :: c346 .
? :: c345 .
r334 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), not(c347), not(c348), not(c349), c350, not(r6) .
utility( r334 , 56 ).
r333 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), not(c347), not(c348), not(c349), c350, r6 .
utility( r333 , 87 ).
r336 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), not(c347), not(c348), c349, not(c350), not(r12) .
utility( r336 , 71 ).
r335 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), not(c347), not(c348), c349, not(c350), r12 .
utility( r335 , 39 ).
r338 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), not(c347), c348, not(c349), not(c350), not(r16) .
utility( r338 , 83 ).
r337 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), not(c347), c348, not(c349), not(c350), r16 .
utility( r337 , 46 ).
r340 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), c347, not(c348), not(c349), not(c350), not(r17) .
utility( r340 , 86 ).
r339 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), not(c346), c347, not(c348), not(c349), not(c350), r17 .
utility( r339 , 29 ).
r342 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), c346, not(c347), not(c348), not(c349), not(c350), not(r21) .
utility( r342 , 9 ).
r341 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, not(c345), c346, not(c347), not(c348), not(c349), not(c350), r21 .
utility( r341 , 22 ).
r344 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, c345, not(c346), not(c347), not(c348), not(c349), not(c350), not(r22) .
utility( r344 , 75 ).
r343 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), not(c451), c452, not(c453), r7, c345, not(c346), not(c347), not(c348), not(c349), not(c350), r22 .
utility( r343 , 2 ).
query( c350 ).
query( c349 ).
query( c348 ).
query( c347 ).
query( c346 ).
query( c345 ).
r370 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), not(r12) .
utility( r370 , 99 ).
? :: c369 .
? :: c368 .
? :: c367 .
? :: c366 .
? :: c365 .
? :: c364 .
r353 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), not(c366), not(c367), not(c368), c369, not(r6) .
utility( r353 , 2 ).
r352 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), not(c366), not(c367), not(c368), c369, r6 .
utility( r352 , 47 ).
r355 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), not(c366), not(c367), c368, not(c369), not(r7) .
utility( r355 , 3 ).
r354 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), not(c366), not(c367), c368, not(c369), r7 .
utility( r354 , 29 ).
r357 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), not(c366), c367, not(c368), not(c369), not(r16) .
utility( r357 , 93 ).
r356 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), not(c366), c367, not(c368), not(c369), r16 .
utility( r356 , 93 ).
r359 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), c366, not(c367), not(c368), not(c369), not(r17) .
utility( r359 , 60 ).
r358 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), not(c365), c366, not(c367), not(c368), not(c369), r17 .
utility( r358 , 98 ).
r361 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), c365, not(c366), not(c367), not(c368), not(c369), not(r21) .
utility( r361 , 70 ).
r360 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, not(c364), c365, not(c366), not(c367), not(c368), not(c369), r21 .
utility( r360 , 70 ).
r363 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, c364, not(c365), not(c366), not(c367), not(c368), not(c369), not(r22) .
utility( r363 , 46 ).
r362 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), not(c450), c451, not(c452), not(c453), r12, c364, not(c365), not(c366), not(c367), not(c368), not(c369), r22 .
utility( r362 , 52 ).
query( c369 ).
query( c368 ).
query( c367 ).
query( c366 ).
query( c365 ).
query( c364 ).
r389 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), not(r16) .
utility( r389 , 91 ).
? :: c388 .
? :: c387 .
? :: c386 .
? :: c385 .
? :: c384 .
? :: c383 .
r372 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), not(c385), not(c386), not(c387), c388, not(r6) .
utility( r372 , 75 ).
r371 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), not(c385), not(c386), not(c387), c388, r6 .
utility( r371 , 75 ).
r374 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), not(c385), not(c386), c387, not(c388), not(r7) .
utility( r374 , 9 ).
r373 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), not(c385), not(c386), c387, not(c388), r7 .
utility( r373 , 98 ).
r376 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), not(c385), c386, not(c387), not(c388), not(r12) .
utility( r376 , 66 ).
r375 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), not(c385), c386, not(c387), not(c388), r12 .
utility( r375 , 76 ).
r378 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), c385, not(c386), not(c387), not(c388), not(r17) .
utility( r378 , 9 ).
r377 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), not(c384), c385, not(c386), not(c387), not(c388), r17 .
utility( r377 , 91 ).
r380 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), c384, not(c385), not(c386), not(c387), not(c388), not(r21) .
utility( r380 , 41 ).
r379 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, not(c383), c384, not(c385), not(c386), not(c387), not(c388), r21 .
utility( r379 , 23 ).
r382 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, c383, not(c384), not(c385), not(c386), not(c387), not(c388), not(r22) .
utility( r382 , 60 ).
r381 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), not(c449), c450, not(c451), not(c452), not(c453), r16, c383, not(c384), not(c385), not(c386), not(c387), not(c388), r22 .
utility( r381 , 47 ).
query( c388 ).
query( c387 ).
query( c386 ).
query( c385 ).
query( c384 ).
query( c383 ).
r408 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), not(r17) .
utility( r408 , 82 ).
? :: c407 .
? :: c406 .
? :: c405 .
? :: c404 .
? :: c403 .
? :: c402 .
r391 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), not(c404), not(c405), not(c406), c407, not(r6) .
utility( r391 , 24 ).
r390 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), not(c404), not(c405), not(c406), c407, r6 .
utility( r390 , 26 ).
r393 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), not(c404), not(c405), c406, not(c407), not(r7) .
utility( r393 , 56 ).
r392 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), not(c404), not(c405), c406, not(c407), r7 .
utility( r392 , 99 ).
r395 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), not(c404), c405, not(c406), not(c407), not(r12) .
utility( r395 , 46 ).
r394 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), not(c404), c405, not(c406), not(c407), r12 .
utility( r394 , 28 ).
r397 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), c404, not(c405), not(c406), not(c407), not(r16) .
utility( r397 , 32 ).
r396 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), not(c403), c404, not(c405), not(c406), not(c407), r16 .
utility( r396 , 38 ).
r399 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), c403, not(c404), not(c405), not(c406), not(c407), not(r21) .
utility( r399 , 33 ).
r398 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, not(c402), c403, not(c404), not(c405), not(c406), not(c407), r21 .
utility( r398 , 54 ).
r401 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, c402, not(c403), not(c404), not(c405), not(c406), not(c407), not(r22) .
utility( r401 , 57 ).
r400 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), not(c448), c449, not(c450), not(c451), not(c452), not(c453), r17, c402, not(c403), not(c404), not(c405), not(c406), not(c407), r22 .
utility( r400 , 9 ).
query( c407 ).
query( c406 ).
query( c405 ).
query( c404 ).
query( c403 ).
query( c402 ).
r427 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), not(r21) .
utility( r427 , 22 ).
? :: c426 .
? :: c425 .
? :: c424 .
? :: c423 .
? :: c422 .
? :: c421 .
r410 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), not(c423), not(c424), not(c425), c426, not(r6) .
utility( r410 , 47 ).
r409 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), not(c423), not(c424), not(c425), c426, r6 .
utility( r409 , 47 ).
r412 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), not(c423), not(c424), c425, not(c426), not(r7) .
utility( r412 , 16 ).
r411 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), not(c423), not(c424), c425, not(c426), r7 .
utility( r411 , 26 ).
r414 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), not(c423), c424, not(c425), not(c426), not(r12) .
utility( r414 , 4 ).
r413 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), not(c423), c424, not(c425), not(c426), r12 .
utility( r413 , 62 ).
r416 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), c423, not(c424), not(c425), not(c426), not(r16) .
utility( r416 , 47 ).
r415 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), not(c422), c423, not(c424), not(c425), not(c426), r16 .
utility( r415 , 28 ).
r418 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), c422, not(c423), not(c424), not(c425), not(c426), not(r17) .
utility( r418 , 5 ).
r417 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, not(c421), c422, not(c423), not(c424), not(c425), not(c426), r17 .
utility( r417 , 57 ).
r420 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, c421, not(c422), not(c423), not(c424), not(c425), not(c426), not(r22) .
utility( r420 , 11 ).
r419 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, not(c447), c448, not(c449), not(c450), not(c451), not(c452), not(c453), r21, c421, not(c422), not(c423), not(c424), not(c425), not(c426), r22 .
utility( r419 , 36 ).
query( c426 ).
query( c425 ).
query( c424 ).
query( c423 ).
query( c422 ).
query( c421 ).
r446 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), not(r22) .
utility( r446 , 16 ).
? :: c445 .
? :: c444 .
? :: c443 .
? :: c442 .
? :: c441 .
? :: c440 .
r429 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), not(c442), not(c443), not(c444), c445, not(r6) .
utility( r429 , 25 ).
r428 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), not(c442), not(c443), not(c444), c445, r6 .
utility( r428 , 31 ).
r431 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), not(c442), not(c443), c444, not(c445), not(r7) .
utility( r431 , 11 ).
r430 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), not(c442), not(c443), c444, not(c445), r7 .
utility( r430 , 23 ).
r433 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), not(c442), c443, not(c444), not(c445), not(r12) .
utility( r433 , 16 ).
r432 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), not(c442), c443, not(c444), not(c445), r12 .
utility( r432 , 95 ).
r435 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), c442, not(c443), not(c444), not(c445), not(r16) .
utility( r435 , 81 ).
r434 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), not(c441), c442, not(c443), not(c444), not(c445), r16 .
utility( r434 , 21 ).
r437 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), c441, not(c442), not(c443), not(c444), not(c445), not(r17) .
utility( r437 , 46 ).
r436 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, not(c440), c441, not(c442), not(c443), not(c444), not(c445), r17 .
utility( r436 , 51 ).
r439 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, c440, not(c441), not(c442), not(c443), not(c444), not(c445), not(r21) .
utility( r439 , 80 ).
r438 :- not(c24), not(c25), not(c26), not(c27), not(c28), c29, not(c30), not(c31), r11, c447, not(c448), not(c449), not(c450), not(c451), not(c452), not(c453), r22, c440, not(c441), not(c442), not(c443), not(c444), not(c445), r21 .
utility( r438 , 12 ).
query( c445 ).
query( c444 ).
query( c443 ).
query( c442 ).
query( c441 ).
query( c440 ).
query( c453 ).
query( c452 ).
query( c451 ).
query( c450 ).
query( c449 ).
query( c448 ).
query( c447 ).
r595 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), not(r12) .
utility( r595 , 62 ).
? :: c594 .
? :: c593 .
? :: c592 .
? :: c591 .
? :: c590 .
? :: c589 .
? :: c588 .
r473 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, not(r6) .
utility( r473 , 0 ).
? :: c472 .
? :: c471 .
? :: c470 .
? :: c469 .
? :: c468 .
? :: c467 .
r456 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), not(c469), not(c470), not(c471), c472, not(r7) .
utility( r456 , 22 ).
r455 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), not(c469), not(c470), not(c471), c472, r7 .
utility( r455 , 77 ).
r458 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), not(c469), not(c470), c471, not(c472), not(r11) .
utility( r458 , 58 ).
r457 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), not(c469), not(c470), c471, not(c472), r11 .
utility( r457 , 25 ).
r460 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), not(c469), c470, not(c471), not(c472), not(r16) .
utility( r460 , 75 ).
r459 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), not(c469), c470, not(c471), not(c472), r16 .
utility( r459 , 43 ).
r462 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), c469, not(c470), not(c471), not(c472), not(r17) .
utility( r462 , 73 ).
r461 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), not(c468), c469, not(c470), not(c471), not(c472), r17 .
utility( r461 , 3 ).
r464 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), c468, not(c469), not(c470), not(c471), not(c472), not(r21) .
utility( r464 , 37 ).
r463 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, not(c467), c468, not(c469), not(c470), not(c471), not(c472), r21 .
utility( r463 , 35 ).
r466 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, c467, not(c468), not(c469), not(c470), not(c471), not(c472), not(r22) .
utility( r466 , 97 ).
r465 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), not(c593), c594, r6, c467, not(c468), not(c469), not(c470), not(c471), not(c472), r22 .
utility( r465 , 46 ).
query( c472 ).
query( c471 ).
query( c470 ).
query( c469 ).
query( c468 ).
query( c467 ).
r492 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), not(r7) .
utility( r492 , 58 ).
? :: c491 .
? :: c490 .
? :: c489 .
? :: c488 .
? :: c487 .
? :: c486 .
r475 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), not(c488), not(c489), not(c490), c491, not(r6) .
utility( r475 , 8 ).
r474 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), not(c488), not(c489), not(c490), c491, r6 .
utility( r474 , 83 ).
r477 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), not(c488), not(c489), c490, not(c491), not(r11) .
utility( r477 , 11 ).
r476 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), not(c488), not(c489), c490, not(c491), r11 .
utility( r476 , 33 ).
r479 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), not(c488), c489, not(c490), not(c491), not(r16) .
utility( r479 , 81 ).
r478 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), not(c488), c489, not(c490), not(c491), r16 .
utility( r478 , 27 ).
r481 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), c488, not(c489), not(c490), not(c491), not(r17) .
utility( r481 , 44 ).
r480 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), not(c487), c488, not(c489), not(c490), not(c491), r17 .
utility( r480 , 52 ).
r483 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), c487, not(c488), not(c489), not(c490), not(c491), not(r21) .
utility( r483 , 51 ).
r482 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, not(c486), c487, not(c488), not(c489), not(c490), not(c491), r21 .
utility( r482 , 95 ).
r485 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, c486, not(c487), not(c488), not(c489), not(c490), not(c491), not(r22) .
utility( r485 , 10 ).
r484 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), not(c592), c593, not(c594), r7, c486, not(c487), not(c488), not(c489), not(c490), not(c491), r22 .
utility( r484 , 76 ).
query( c491 ).
query( c490 ).
query( c489 ).
query( c488 ).
query( c487 ).
query( c486 ).
r511 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), not(r11) .
utility( r511 , 96 ).
? :: c510 .
? :: c509 .
? :: c508 .
? :: c507 .
? :: c506 .
? :: c505 .
r494 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), not(c507), not(c508), not(c509), c510, not(r6) .
utility( r494 , 99 ).
r493 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), not(c507), not(c508), not(c509), c510, r6 .
utility( r493 , 2 ).
r496 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), not(c507), not(c508), c509, not(c510), not(r7) .
utility( r496 , 62 ).
r495 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), not(c507), not(c508), c509, not(c510), r7 .
utility( r495 , 19 ).
r498 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), not(c507), c508, not(c509), not(c510), not(r16) .
utility( r498 , 80 ).
r497 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), not(c507), c508, not(c509), not(c510), r16 .
utility( r497 , 6 ).
r500 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), c507, not(c508), not(c509), not(c510), not(r17) .
utility( r500 , 30 ).
r499 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), not(c506), c507, not(c508), not(c509), not(c510), r17 .
utility( r499 , 53 ).
r502 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), c506, not(c507), not(c508), not(c509), not(c510), not(r21) .
utility( r502 , 81 ).
r501 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, not(c505), c506, not(c507), not(c508), not(c509), not(c510), r21 .
utility( r501 , 72 ).
r504 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, c505, not(c506), not(c507), not(c508), not(c509), not(c510), not(r22) .
utility( r504 , 10 ).
r503 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), not(c591), c592, not(c593), not(c594), r11, c505, not(c506), not(c507), not(c508), not(c509), not(c510), r22 .
utility( r503 , 16 ).
query( c510 ).
query( c509 ).
query( c508 ).
query( c507 ).
query( c506 ).
query( c505 ).
r530 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), not(r16) .
utility( r530 , 69 ).
? :: c529 .
? :: c528 .
? :: c527 .
? :: c526 .
? :: c525 .
? :: c524 .
r513 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), not(c526), not(c527), not(c528), c529, not(r6) .
utility( r513 , 8 ).
r512 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), not(c526), not(c527), not(c528), c529, r6 .
utility( r512 , 25 ).
r515 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), not(c526), not(c527), c528, not(c529), not(r7) .
utility( r515 , 92 ).
r514 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), not(c526), not(c527), c528, not(c529), r7 .
utility( r514 , 46 ).
r517 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), not(c526), c527, not(c528), not(c529), not(r11) .
utility( r517 , 56 ).
r516 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), not(c526), c527, not(c528), not(c529), r11 .
utility( r516 , 24 ).
r519 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), c526, not(c527), not(c528), not(c529), not(r17) .
utility( r519 , 57 ).
r518 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), not(c525), c526, not(c527), not(c528), not(c529), r17 .
utility( r518 , 86 ).
r521 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), c525, not(c526), not(c527), not(c528), not(c529), not(r21) .
utility( r521 , 2 ).
r520 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, not(c524), c525, not(c526), not(c527), not(c528), not(c529), r21 .
utility( r520 , 1 ).
r523 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, c524, not(c525), not(c526), not(c527), not(c528), not(c529), not(r22) .
utility( r523 , 87 ).
r522 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), not(c590), c591, not(c592), not(c593), not(c594), r16, c524, not(c525), not(c526), not(c527), not(c528), not(c529), r22 .
utility( r522 , 90 ).
query( c529 ).
query( c528 ).
query( c527 ).
query( c526 ).
query( c525 ).
query( c524 ).
r549 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), not(r17) .
utility( r549 , 66 ).
? :: c548 .
? :: c547 .
? :: c546 .
? :: c545 .
? :: c544 .
? :: c543 .
r532 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), not(c545), not(c546), not(c547), c548, not(r6) .
utility( r532 , 24 ).
r531 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), not(c545), not(c546), not(c547), c548, r6 .
utility( r531 , 77 ).
r534 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), not(c545), not(c546), c547, not(c548), not(r7) .
utility( r534 , 84 ).
r533 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), not(c545), not(c546), c547, not(c548), r7 .
utility( r533 , 57 ).
r536 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), not(c545), c546, not(c547), not(c548), not(r11) .
utility( r536 , 87 ).
r535 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), not(c545), c546, not(c547), not(c548), r11 .
utility( r535 , 48 ).
r538 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), c545, not(c546), not(c547), not(c548), not(r16) .
utility( r538 , 67 ).
r537 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), not(c544), c545, not(c546), not(c547), not(c548), r16 .
utility( r537 , 61 ).
r540 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), c544, not(c545), not(c546), not(c547), not(c548), not(r21) .
utility( r540 , 94 ).
r539 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, not(c543), c544, not(c545), not(c546), not(c547), not(c548), r21 .
utility( r539 , 38 ).
r542 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, c543, not(c544), not(c545), not(c546), not(c547), not(c548), not(r22) .
utility( r542 , 77 ).
r541 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), not(c589), c590, not(c591), not(c592), not(c593), not(c594), r17, c543, not(c544), not(c545), not(c546), not(c547), not(c548), r22 .
utility( r541 , 27 ).
query( c548 ).
query( c547 ).
query( c546 ).
query( c545 ).
query( c544 ).
query( c543 ).
r568 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), not(r21) .
utility( r568 , 73 ).
? :: c567 .
? :: c566 .
? :: c565 .
? :: c564 .
? :: c563 .
? :: c562 .
r551 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), not(c564), not(c565), not(c566), c567, not(r6) .
utility( r551 , 33 ).
r550 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), not(c564), not(c565), not(c566), c567, r6 .
utility( r550 , 21 ).
r553 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), not(c564), not(c565), c566, not(c567), not(r7) .
utility( r553 , 88 ).
r552 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), not(c564), not(c565), c566, not(c567), r7 .
utility( r552 , 29 ).
r555 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), not(c564), c565, not(c566), not(c567), not(r11) .
utility( r555 , 49 ).
r554 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), not(c564), c565, not(c566), not(c567), r11 .
utility( r554 , 78 ).
r557 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), c564, not(c565), not(c566), not(c567), not(r16) .
utility( r557 , 31 ).
r556 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), not(c563), c564, not(c565), not(c566), not(c567), r16 .
utility( r556 , 85 ).
r559 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), c563, not(c564), not(c565), not(c566), not(c567), not(r17) .
utility( r559 , 68 ).
r558 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, not(c562), c563, not(c564), not(c565), not(c566), not(c567), r17 .
utility( r558 , 66 ).
r561 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, c562, not(c563), not(c564), not(c565), not(c566), not(c567), not(r22) .
utility( r561 , 73 ).
r560 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, not(c588), c589, not(c590), not(c591), not(c592), not(c593), not(c594), r21, c562, not(c563), not(c564), not(c565), not(c566), not(c567), r22 .
utility( r560 , 6 ).
query( c567 ).
query( c566 ).
query( c565 ).
query( c564 ).
query( c563 ).
query( c562 ).
r587 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), not(r22) .
utility( r587 , 43 ).
? :: c586 .
? :: c585 .
? :: c584 .
? :: c583 .
? :: c582 .
? :: c581 .
r570 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), not(c583), not(c584), not(c585), c586, not(r6) .
utility( r570 , 99 ).
r569 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), not(c583), not(c584), not(c585), c586, r6 .
utility( r569 , 34 ).
r572 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), not(c583), not(c584), c585, not(c586), not(r7) .
utility( r572 , 8 ).
r571 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), not(c583), not(c584), c585, not(c586), r7 .
utility( r571 , 24 ).
r574 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), not(c583), c584, not(c585), not(c586), not(r11) .
utility( r574 , 61 ).
r573 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), not(c583), c584, not(c585), not(c586), r11 .
utility( r573 , 58 ).
r576 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), c583, not(c584), not(c585), not(c586), not(r16) .
utility( r576 , 63 ).
r575 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), not(c582), c583, not(c584), not(c585), not(c586), r16 .
utility( r575 , 97 ).
r578 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), c582, not(c583), not(c584), not(c585), not(c586), not(r17) .
utility( r578 , 92 ).
r577 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, not(c581), c582, not(c583), not(c584), not(c585), not(c586), r17 .
utility( r577 , 35 ).
r580 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, c581, not(c582), not(c583), not(c584), not(c585), not(c586), not(r21) .
utility( r580 , 16 ).
r579 :- not(c24), not(c25), not(c26), not(c27), c28, not(c29), not(c30), not(c31), r12, c588, not(c589), not(c590), not(c591), not(c592), not(c593), not(c594), r22, c581, not(c582), not(c583), not(c584), not(c585), not(c586), r21 .
utility( r579 , 99 ).
query( c586 ).
query( c585 ).
query( c584 ).
query( c583 ).
query( c582 ).
query( c581 ).
query( c594 ).
query( c593 ).
query( c592 ).
query( c591 ).
query( c590 ).
query( c589 ).
query( c588 ).
r736 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), not(r16) .
utility( r736 , 5 ).
? :: c735 .
? :: c734 .
? :: c733 .
? :: c732 .
? :: c731 .
? :: c730 .
? :: c729 .
r614 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, not(r6) .
utility( r614 , 53 ).
? :: c613 .
? :: c612 .
? :: c611 .
? :: c610 .
? :: c609 .
? :: c608 .
r597 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), not(c610), not(c611), not(c612), c613, not(r7) .
utility( r597 , 25 ).
r596 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), not(c610), not(c611), not(c612), c613, r7 .
utility( r596 , 73 ).
r599 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), not(c610), not(c611), c612, not(c613), not(r11) .
utility( r599 , 72 ).
r598 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), not(c610), not(c611), c612, not(c613), r11 .
utility( r598 , 86 ).
r601 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), not(c610), c611, not(c612), not(c613), not(r12) .
utility( r601 , 41 ).
r600 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), not(c610), c611, not(c612), not(c613), r12 .
utility( r600 , 69 ).
r603 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), c610, not(c611), not(c612), not(c613), not(r17) .
utility( r603 , 55 ).
r602 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), not(c609), c610, not(c611), not(c612), not(c613), r17 .
utility( r602 , 10 ).
r605 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), c609, not(c610), not(c611), not(c612), not(c613), not(r21) .
utility( r605 , 97 ).
r604 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, not(c608), c609, not(c610), not(c611), not(c612), not(c613), r21 .
utility( r604 , 64 ).
r607 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, c608, not(c609), not(c610), not(c611), not(c612), not(c613), not(r22) .
utility( r607 , 38 ).
r606 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), not(c734), c735, r6, c608, not(c609), not(c610), not(c611), not(c612), not(c613), r22 .
utility( r606 , 92 ).
query( c613 ).
query( c612 ).
query( c611 ).
query( c610 ).
query( c609 ).
query( c608 ).
r633 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), not(r7) .
utility( r633 , 61 ).
? :: c632 .
? :: c631 .
? :: c630 .
? :: c629 .
? :: c628 .
? :: c627 .
r616 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), not(c629), not(c630), not(c631), c632, not(r6) .
utility( r616 , 63 ).
r615 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), not(c629), not(c630), not(c631), c632, r6 .
utility( r615 , 57 ).
r618 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), not(c629), not(c630), c631, not(c632), not(r11) .
utility( r618 , 98 ).
r617 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), not(c629), not(c630), c631, not(c632), r11 .
utility( r617 , 51 ).
r620 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), not(c629), c630, not(c631), not(c632), not(r12) .
utility( r620 , 50 ).
r619 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), not(c629), c630, not(c631), not(c632), r12 .
utility( r619 , 83 ).
r622 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), c629, not(c630), not(c631), not(c632), not(r17) .
utility( r622 , 63 ).
r621 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), not(c628), c629, not(c630), not(c631), not(c632), r17 .
utility( r621 , 64 ).
r624 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), c628, not(c629), not(c630), not(c631), not(c632), not(r21) .
utility( r624 , 14 ).
r623 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, not(c627), c628, not(c629), not(c630), not(c631), not(c632), r21 .
utility( r623 , 24 ).
r626 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, c627, not(c628), not(c629), not(c630), not(c631), not(c632), not(r22) .
utility( r626 , 41 ).
r625 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), not(c733), c734, not(c735), r7, c627, not(c628), not(c629), not(c630), not(c631), not(c632), r22 .
utility( r625 , 29 ).
query( c632 ).
query( c631 ).
query( c630 ).
query( c629 ).
query( c628 ).
query( c627 ).
r652 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), not(r11) .
utility( r652 , 51 ).
? :: c651 .
? :: c650 .
? :: c649 .
? :: c648 .
? :: c647 .
? :: c646 .
r635 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), not(c648), not(c649), not(c650), c651, not(r6) .
utility( r635 , 32 ).
r634 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), not(c648), not(c649), not(c650), c651, r6 .
utility( r634 , 72 ).
r637 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), not(c648), not(c649), c650, not(c651), not(r7) .
utility( r637 , 86 ).
r636 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), not(c648), not(c649), c650, not(c651), r7 .
utility( r636 , 35 ).
r639 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), not(c648), c649, not(c650), not(c651), not(r12) .
utility( r639 , 51 ).
r638 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), not(c648), c649, not(c650), not(c651), r12 .
utility( r638 , 46 ).
r641 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), c648, not(c649), not(c650), not(c651), not(r17) .
utility( r641 , 37 ).
r640 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), not(c647), c648, not(c649), not(c650), not(c651), r17 .
utility( r640 , 4 ).
r643 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), c647, not(c648), not(c649), not(c650), not(c651), not(r21) .
utility( r643 , 99 ).
r642 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, not(c646), c647, not(c648), not(c649), not(c650), not(c651), r21 .
utility( r642 , 56 ).
r645 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, c646, not(c647), not(c648), not(c649), not(c650), not(c651), not(r22) .
utility( r645 , 67 ).
r644 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), not(c732), c733, not(c734), not(c735), r11, c646, not(c647), not(c648), not(c649), not(c650), not(c651), r22 .
utility( r644 , 6 ).
query( c651 ).
query( c650 ).
query( c649 ).
query( c648 ).
query( c647 ).
query( c646 ).
r671 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), not(r12) .
utility( r671 , 28 ).
? :: c670 .
? :: c669 .
? :: c668 .
? :: c667 .
? :: c666 .
? :: c665 .
r654 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), not(c667), not(c668), not(c669), c670, not(r6) .
utility( r654 , 49 ).
r653 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), not(c667), not(c668), not(c669), c670, r6 .
utility( r653 , 13 ).
r656 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), not(c667), not(c668), c669, not(c670), not(r7) .
utility( r656 , 84 ).
r655 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), not(c667), not(c668), c669, not(c670), r7 .
utility( r655 , 25 ).
r658 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), not(c667), c668, not(c669), not(c670), not(r11) .
utility( r658 , 70 ).
r657 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), not(c667), c668, not(c669), not(c670), r11 .
utility( r657 , 35 ).
r660 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), c667, not(c668), not(c669), not(c670), not(r17) .
utility( r660 , 17 ).
r659 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), not(c666), c667, not(c668), not(c669), not(c670), r17 .
utility( r659 , 23 ).
r662 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), c666, not(c667), not(c668), not(c669), not(c670), not(r21) .
utility( r662 , 37 ).
r661 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, not(c665), c666, not(c667), not(c668), not(c669), not(c670), r21 .
utility( r661 , 19 ).
r664 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, c665, not(c666), not(c667), not(c668), not(c669), not(c670), not(r22) .
utility( r664 , 58 ).
r663 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), not(c731), c732, not(c733), not(c734), not(c735), r12, c665, not(c666), not(c667), not(c668), not(c669), not(c670), r22 .
utility( r663 , 83 ).
query( c670 ).
query( c669 ).
query( c668 ).
query( c667 ).
query( c666 ).
query( c665 ).
r690 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), not(r17) .
utility( r690 , 87 ).
? :: c689 .
? :: c688 .
? :: c687 .
? :: c686 .
? :: c685 .
? :: c684 .
r673 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), not(c686), not(c687), not(c688), c689, not(r6) .
utility( r673 , 21 ).
r672 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), not(c686), not(c687), not(c688), c689, r6 .
utility( r672 , 46 ).
r675 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), not(c686), not(c687), c688, not(c689), not(r7) .
utility( r675 , 97 ).
r674 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), not(c686), not(c687), c688, not(c689), r7 .
utility( r674 , 45 ).
r677 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), not(c686), c687, not(c688), not(c689), not(r11) .
utility( r677 , 71 ).
r676 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), not(c686), c687, not(c688), not(c689), r11 .
utility( r676 , 82 ).
r679 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), c686, not(c687), not(c688), not(c689), not(r12) .
utility( r679 , 59 ).
r678 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), not(c685), c686, not(c687), not(c688), not(c689), r12 .
utility( r678 , 6 ).
r681 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), c685, not(c686), not(c687), not(c688), not(c689), not(r21) .
utility( r681 , 47 ).
r680 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, not(c684), c685, not(c686), not(c687), not(c688), not(c689), r21 .
utility( r680 , 13 ).
r683 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, c684, not(c685), not(c686), not(c687), not(c688), not(c689), not(r22) .
utility( r683 , 69 ).
r682 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), not(c730), c731, not(c732), not(c733), not(c734), not(c735), r17, c684, not(c685), not(c686), not(c687), not(c688), not(c689), r22 .
utility( r682 , 12 ).
query( c689 ).
query( c688 ).
query( c687 ).
query( c686 ).
query( c685 ).
query( c684 ).
r709 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), not(r21) .
utility( r709 , 93 ).
? :: c708 .
? :: c707 .
? :: c706 .
? :: c705 .
? :: c704 .
? :: c703 .
r692 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), not(c705), not(c706), not(c707), c708, not(r6) .
utility( r692 , 39 ).
r691 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), not(c705), not(c706), not(c707), c708, r6 .
utility( r691 , 47 ).
r694 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), not(c705), not(c706), c707, not(c708), not(r7) .
utility( r694 , 4 ).
r693 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), not(c705), not(c706), c707, not(c708), r7 .
utility( r693 , 42 ).
r696 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), not(c705), c706, not(c707), not(c708), not(r11) .
utility( r696 , 28 ).
r695 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), not(c705), c706, not(c707), not(c708), r11 .
utility( r695 , 8 ).
r698 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), c705, not(c706), not(c707), not(c708), not(r12) .
utility( r698 , 20 ).
r697 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), not(c704), c705, not(c706), not(c707), not(c708), r12 .
utility( r697 , 41 ).
r700 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), c704, not(c705), not(c706), not(c707), not(c708), not(r17) .
utility( r700 , 90 ).
r699 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, not(c703), c704, not(c705), not(c706), not(c707), not(c708), r17 .
utility( r699 , 46 ).
r702 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, c703, not(c704), not(c705), not(c706), not(c707), not(c708), not(r22) .
utility( r702 , 53 ).
r701 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, not(c729), c730, not(c731), not(c732), not(c733), not(c734), not(c735), r21, c703, not(c704), not(c705), not(c706), not(c707), not(c708), r22 .
utility( r701 , 36 ).
query( c708 ).
query( c707 ).
query( c706 ).
query( c705 ).
query( c704 ).
query( c703 ).
r728 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), not(r22) .
utility( r728 , 36 ).
? :: c727 .
? :: c726 .
? :: c725 .
? :: c724 .
? :: c723 .
? :: c722 .
r711 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), not(c724), not(c725), not(c726), c727, not(r6) .
utility( r711 , 77 ).
r710 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), not(c724), not(c725), not(c726), c727, r6 .
utility( r710 , 22 ).
r713 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), not(c724), not(c725), c726, not(c727), not(r7) .
utility( r713 , 37 ).
r712 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), not(c724), not(c725), c726, not(c727), r7 .
utility( r712 , 0 ).
r715 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), not(c724), c725, not(c726), not(c727), not(r11) .
utility( r715 , 92 ).
r714 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), not(c724), c725, not(c726), not(c727), r11 .
utility( r714 , 66 ).
r717 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), c724, not(c725), not(c726), not(c727), not(r12) .
utility( r717 , 87 ).
r716 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), not(c723), c724, not(c725), not(c726), not(c727), r12 .
utility( r716 , 1 ).
r719 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), c723, not(c724), not(c725), not(c726), not(c727), not(r17) .
utility( r719 , 75 ).
r718 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, not(c722), c723, not(c724), not(c725), not(c726), not(c727), r17 .
utility( r718 , 48 ).
r721 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, c722, not(c723), not(c724), not(c725), not(c726), not(c727), not(r21) .
utility( r721 , 58 ).
r720 :- not(c24), not(c25), not(c26), c27, not(c28), not(c29), not(c30), not(c31), r16, c729, not(c730), not(c731), not(c732), not(c733), not(c734), not(c735), r22, c722, not(c723), not(c724), not(c725), not(c726), not(c727), r21 .
utility( r720 , 73 ).
query( c727 ).
query( c726 ).
query( c725 ).
query( c724 ).
query( c723 ).
query( c722 ).
query( c735 ).
query( c734 ).
query( c733 ).
query( c732 ).
query( c731 ).
query( c730 ).
query( c729 ).
r877 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), not(r17) .
utility( r877 , 84 ).
? :: c876 .
? :: c875 .
? :: c874 .
? :: c873 .
? :: c872 .
? :: c871 .
? :: c870 .
r755 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, not(r6) .
utility( r755 , 23 ).
? :: c754 .
? :: c753 .
? :: c752 .
? :: c751 .
? :: c750 .
? :: c749 .
r738 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), not(c751), not(c752), not(c753), c754, not(r7) .
utility( r738 , 26 ).
r737 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), not(c751), not(c752), not(c753), c754, r7 .
utility( r737 , 14 ).
r740 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), not(c751), not(c752), c753, not(c754), not(r11) .
utility( r740 , 35 ).
r739 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), not(c751), not(c752), c753, not(c754), r11 .
utility( r739 , 84 ).
r742 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), not(c751), c752, not(c753), not(c754), not(r12) .
utility( r742 , 2 ).
r741 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), not(c751), c752, not(c753), not(c754), r12 .
utility( r741 , 65 ).
r744 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), c751, not(c752), not(c753), not(c754), not(r16) .
utility( r744 , 35 ).
r743 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), not(c750), c751, not(c752), not(c753), not(c754), r16 .
utility( r743 , 69 ).
r746 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), c750, not(c751), not(c752), not(c753), not(c754), not(r21) .
utility( r746 , 30 ).
r745 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, not(c749), c750, not(c751), not(c752), not(c753), not(c754), r21 .
utility( r745 , 18 ).
r748 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, c749, not(c750), not(c751), not(c752), not(c753), not(c754), not(r22) .
utility( r748 , 44 ).
r747 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), not(c875), c876, r6, c749, not(c750), not(c751), not(c752), not(c753), not(c754), r22 .
utility( r747 , 61 ).
query( c754 ).
query( c753 ).
query( c752 ).
query( c751 ).
query( c750 ).
query( c749 ).
r774 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), not(r7) .
utility( r774 , 63 ).
? :: c773 .
? :: c772 .
? :: c771 .
? :: c770 .
? :: c769 .
? :: c768 .
r757 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), not(c770), not(c771), not(c772), c773, not(r6) .
utility( r757 , 64 ).
r756 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), not(c770), not(c771), not(c772), c773, r6 .
utility( r756 , 41 ).
r759 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), not(c770), not(c771), c772, not(c773), not(r11) .
utility( r759 , 84 ).
r758 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), not(c770), not(c771), c772, not(c773), r11 .
utility( r758 , 80 ).
r761 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), not(c770), c771, not(c772), not(c773), not(r12) .
utility( r761 , 35 ).
r760 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), not(c770), c771, not(c772), not(c773), r12 .
utility( r760 , 54 ).
r763 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), c770, not(c771), not(c772), not(c773), not(r16) .
utility( r763 , 11 ).
r762 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), not(c769), c770, not(c771), not(c772), not(c773), r16 .
utility( r762 , 90 ).
r765 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), c769, not(c770), not(c771), not(c772), not(c773), not(r21) .
utility( r765 , 49 ).
r764 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, not(c768), c769, not(c770), not(c771), not(c772), not(c773), r21 .
utility( r764 , 81 ).
r767 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, c768, not(c769), not(c770), not(c771), not(c772), not(c773), not(r22) .
utility( r767 , 35 ).
r766 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), not(c874), c875, not(c876), r7, c768, not(c769), not(c770), not(c771), not(c772), not(c773), r22 .
utility( r766 , 97 ).
query( c773 ).
query( c772 ).
query( c771 ).
query( c770 ).
query( c769 ).
query( c768 ).
r793 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), not(r11) .
utility( r793 , 62 ).
? :: c792 .
? :: c791 .
? :: c790 .
? :: c789 .
? :: c788 .
? :: c787 .
r776 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), not(c789), not(c790), not(c791), c792, not(r6) .
utility( r776 , 17 ).
r775 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), not(c789), not(c790), not(c791), c792, r6 .
utility( r775 , 9 ).
r778 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), not(c789), not(c790), c791, not(c792), not(r7) .
utility( r778 , 79 ).
r777 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), not(c789), not(c790), c791, not(c792), r7 .
utility( r777 , 94 ).
r780 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), not(c789), c790, not(c791), not(c792), not(r12) .
utility( r780 , 39 ).
r779 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), not(c789), c790, not(c791), not(c792), r12 .
utility( r779 , 55 ).
r782 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), c789, not(c790), not(c791), not(c792), not(r16) .
utility( r782 , 87 ).
r781 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), not(c788), c789, not(c790), not(c791), not(c792), r16 .
utility( r781 , 21 ).
r784 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), c788, not(c789), not(c790), not(c791), not(c792), not(r21) .
utility( r784 , 84 ).
r783 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, not(c787), c788, not(c789), not(c790), not(c791), not(c792), r21 .
utility( r783 , 73 ).
r786 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, c787, not(c788), not(c789), not(c790), not(c791), not(c792), not(r22) .
utility( r786 , 14 ).
r785 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), not(c873), c874, not(c875), not(c876), r11, c787, not(c788), not(c789), not(c790), not(c791), not(c792), r22 .
utility( r785 , 3 ).
query( c792 ).
query( c791 ).
query( c790 ).
query( c789 ).
query( c788 ).
query( c787 ).
r812 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), not(r12) .
utility( r812 , 47 ).
? :: c811 .
? :: c810 .
? :: c809 .
? :: c808 .
? :: c807 .
? :: c806 .
r795 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), not(c808), not(c809), not(c810), c811, not(r6) .
utility( r795 , 90 ).
r794 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), not(c808), not(c809), not(c810), c811, r6 .
utility( r794 , 88 ).
r797 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), not(c808), not(c809), c810, not(c811), not(r7) .
utility( r797 , 87 ).
r796 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), not(c808), not(c809), c810, not(c811), r7 .
utility( r796 , 77 ).
r799 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), not(c808), c809, not(c810), not(c811), not(r11) .
utility( r799 , 29 ).
r798 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), not(c808), c809, not(c810), not(c811), r11 .
utility( r798 , 93 ).
r801 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), c808, not(c809), not(c810), not(c811), not(r16) .
utility( r801 , 66 ).
r800 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), not(c807), c808, not(c809), not(c810), not(c811), r16 .
utility( r800 , 24 ).
r803 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), c807, not(c808), not(c809), not(c810), not(c811), not(r21) .
utility( r803 , 40 ).
r802 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, not(c806), c807, not(c808), not(c809), not(c810), not(c811), r21 .
utility( r802 , 85 ).
r805 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, c806, not(c807), not(c808), not(c809), not(c810), not(c811), not(r22) .
utility( r805 , 12 ).
r804 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), not(c872), c873, not(c874), not(c875), not(c876), r12, c806, not(c807), not(c808), not(c809), not(c810), not(c811), r22 .
utility( r804 , 95 ).
query( c811 ).
query( c810 ).
query( c809 ).
query( c808 ).
query( c807 ).
query( c806 ).
r831 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), not(r16) .
utility( r831 , 7 ).
? :: c830 .
? :: c829 .
? :: c828 .
? :: c827 .
? :: c826 .
? :: c825 .
r814 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), not(c827), not(c828), not(c829), c830, not(r6) .
utility( r814 , 85 ).
r813 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), not(c827), not(c828), not(c829), c830, r6 .
utility( r813 , 52 ).
r816 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), not(c827), not(c828), c829, not(c830), not(r7) .
utility( r816 , 57 ).
r815 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), not(c827), not(c828), c829, not(c830), r7 .
utility( r815 , 62 ).
r818 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), not(c827), c828, not(c829), not(c830), not(r11) .
utility( r818 , 55 ).
r817 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), not(c827), c828, not(c829), not(c830), r11 .
utility( r817 , 98 ).
r820 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), c827, not(c828), not(c829), not(c830), not(r12) .
utility( r820 , 24 ).
r819 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), not(c826), c827, not(c828), not(c829), not(c830), r12 .
utility( r819 , 64 ).
r822 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), c826, not(c827), not(c828), not(c829), not(c830), not(r21) .
utility( r822 , 84 ).
r821 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, not(c825), c826, not(c827), not(c828), not(c829), not(c830), r21 .
utility( r821 , 81 ).
r824 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, c825, not(c826), not(c827), not(c828), not(c829), not(c830), not(r22) .
utility( r824 , 39 ).
r823 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), not(c871), c872, not(c873), not(c874), not(c875), not(c876), r16, c825, not(c826), not(c827), not(c828), not(c829), not(c830), r22 .
utility( r823 , 51 ).
query( c830 ).
query( c829 ).
query( c828 ).
query( c827 ).
query( c826 ).
query( c825 ).
r850 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), not(r21) .
utility( r850 , 94 ).
? :: c849 .
? :: c848 .
? :: c847 .
? :: c846 .
? :: c845 .
? :: c844 .
r833 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), not(c846), not(c847), not(c848), c849, not(r6) .
utility( r833 , 25 ).
r832 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), not(c846), not(c847), not(c848), c849, r6 .
utility( r832 , 15 ).
r835 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), not(c846), not(c847), c848, not(c849), not(r7) .
utility( r835 , 62 ).
r834 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), not(c846), not(c847), c848, not(c849), r7 .
utility( r834 , 37 ).
r837 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), not(c846), c847, not(c848), not(c849), not(r11) .
utility( r837 , 69 ).
r836 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), not(c846), c847, not(c848), not(c849), r11 .
utility( r836 , 10 ).
r839 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), c846, not(c847), not(c848), not(c849), not(r12) .
utility( r839 , 14 ).
r838 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), not(c845), c846, not(c847), not(c848), not(c849), r12 .
utility( r838 , 77 ).
r841 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), c845, not(c846), not(c847), not(c848), not(c849), not(r16) .
utility( r841 , 97 ).
r840 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, not(c844), c845, not(c846), not(c847), not(c848), not(c849), r16 .
utility( r840 , 28 ).
r843 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, c844, not(c845), not(c846), not(c847), not(c848), not(c849), not(r22) .
utility( r843 , 97 ).
r842 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, not(c870), c871, not(c872), not(c873), not(c874), not(c875), not(c876), r21, c844, not(c845), not(c846), not(c847), not(c848), not(c849), r22 .
utility( r842 , 18 ).
query( c849 ).
query( c848 ).
query( c847 ).
query( c846 ).
query( c845 ).
query( c844 ).
r869 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), not(r22) .
utility( r869 , 23 ).
? :: c868 .
? :: c867 .
? :: c866 .
? :: c865 .
? :: c864 .
? :: c863 .
r852 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), not(c865), not(c866), not(c867), c868, not(r6) .
utility( r852 , 58 ).
r851 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), not(c865), not(c866), not(c867), c868, r6 .
utility( r851 , 0 ).
r854 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), not(c865), not(c866), c867, not(c868), not(r7) .
utility( r854 , 8 ).
r853 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), not(c865), not(c866), c867, not(c868), r7 .
utility( r853 , 43 ).
r856 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), not(c865), c866, not(c867), not(c868), not(r11) .
utility( r856 , 47 ).
r855 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), not(c865), c866, not(c867), not(c868), r11 .
utility( r855 , 56 ).
r858 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), c865, not(c866), not(c867), not(c868), not(r12) .
utility( r858 , 93 ).
r857 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), not(c864), c865, not(c866), not(c867), not(c868), r12 .
utility( r857 , 59 ).
r860 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), c864, not(c865), not(c866), not(c867), not(c868), not(r16) .
utility( r860 , 23 ).
r859 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, not(c863), c864, not(c865), not(c866), not(c867), not(c868), r16 .
utility( r859 , 91 ).
r862 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, c863, not(c864), not(c865), not(c866), not(c867), not(c868), not(r21) .
utility( r862 , 9 ).
r861 :- not(c24), not(c25), c26, not(c27), not(c28), not(c29), not(c30), not(c31), r17, c870, not(c871), not(c872), not(c873), not(c874), not(c875), not(c876), r22, c863, not(c864), not(c865), not(c866), not(c867), not(c868), r21 .
utility( r861 , 41 ).
query( c868 ).
query( c867 ).
query( c866 ).
query( c865 ).
query( c864 ).
query( c863 ).
query( c876 ).
query( c875 ).
query( c874 ).
query( c873 ).
query( c872 ).
query( c871 ).
query( c870 ).
r1018 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), not(r21) .
utility( r1018 , 99 ).
? :: c1017 .
? :: c1016 .
? :: c1015 .
? :: c1014 .
? :: c1013 .
? :: c1012 .
? :: c1011 .
r896 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, not(r6) .
utility( r896 , 25 ).
? :: c895 .
? :: c894 .
? :: c893 .
? :: c892 .
? :: c891 .
? :: c890 .
r879 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), not(c892), not(c893), not(c894), c895, not(r7) .
utility( r879 , 84 ).
r878 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), not(c892), not(c893), not(c894), c895, r7 .
utility( r878 , 6 ).
r881 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), not(c892), not(c893), c894, not(c895), not(r11) .
utility( r881 , 96 ).
r880 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), not(c892), not(c893), c894, not(c895), r11 .
utility( r880 , 23 ).
r883 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), not(c892), c893, not(c894), not(c895), not(r12) .
utility( r883 , 84 ).
r882 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), not(c892), c893, not(c894), not(c895), r12 .
utility( r882 , 71 ).
r885 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), c892, not(c893), not(c894), not(c895), not(r16) .
utility( r885 , 92 ).
r884 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), not(c891), c892, not(c893), not(c894), not(c895), r16 .
utility( r884 , 30 ).
r887 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), c891, not(c892), not(c893), not(c894), not(c895), not(r17) .
utility( r887 , 7 ).
r886 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, not(c890), c891, not(c892), not(c893), not(c894), not(c895), r17 .
utility( r886 , 41 ).
r889 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, c890, not(c891), not(c892), not(c893), not(c894), not(c895), not(r22) .
utility( r889 , 3 ).
r888 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), c1017, r6, c890, not(c891), not(c892), not(c893), not(c894), not(c895), r22 .
utility( r888 , 66 ).
query( c895 ).
query( c894 ).
query( c893 ).
query( c892 ).
query( c891 ).
query( c890 ).
r915 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), not(r7) .
utility( r915 , 46 ).
? :: c914 .
? :: c913 .
? :: c912 .
? :: c911 .
? :: c910 .
? :: c909 .
r898 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), not(c911), not(c912), not(c913), c914, not(r6) .
utility( r898 , 37 ).
r897 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), not(c911), not(c912), not(c913), c914, r6 .
utility( r897 , 1 ).
r900 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), not(c911), not(c912), c913, not(c914), not(r11) .
utility( r900 , 77 ).
r899 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), not(c911), not(c912), c913, not(c914), r11 .
utility( r899 , 6 ).
r902 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), not(c911), c912, not(c913), not(c914), not(r12) .
utility( r902 , 33 ).
r901 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), not(c911), c912, not(c913), not(c914), r12 .
utility( r901 , 60 ).
r904 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), c911, not(c912), not(c913), not(c914), not(r16) .
utility( r904 , 64 ).
r903 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), not(c910), c911, not(c912), not(c913), not(c914), r16 .
utility( r903 , 41 ).
r906 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), c910, not(c911), not(c912), not(c913), not(c914), not(r17) .
utility( r906 , 63 ).
r905 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, not(c909), c910, not(c911), not(c912), not(c913), not(c914), r17 .
utility( r905 , 1 ).
r908 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, c909, not(c910), not(c911), not(c912), not(c913), not(c914), not(r22) .
utility( r908 , 45 ).
r907 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), not(c1015), c1016, not(c1017), r7, c909, not(c910), not(c911), not(c912), not(c913), not(c914), r22 .
utility( r907 , 30 ).
query( c914 ).
query( c913 ).
query( c912 ).
query( c911 ).
query( c910 ).
query( c909 ).
r934 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), not(r11) .
utility( r934 , 76 ).
? :: c933 .
? :: c932 .
? :: c931 .
? :: c930 .
? :: c929 .
? :: c928 .
r917 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), not(c930), not(c931), not(c932), c933, not(r6) .
utility( r917 , 37 ).
r916 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), not(c930), not(c931), not(c932), c933, r6 .
utility( r916 , 57 ).
r919 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), not(c930), not(c931), c932, not(c933), not(r7) .
utility( r919 , 44 ).
r918 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), not(c930), not(c931), c932, not(c933), r7 .
utility( r918 , 20 ).
r921 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), not(c930), c931, not(c932), not(c933), not(r12) .
utility( r921 , 29 ).
r920 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), not(c930), c931, not(c932), not(c933), r12 .
utility( r920 , 19 ).
r923 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), c930, not(c931), not(c932), not(c933), not(r16) .
utility( r923 , 82 ).
r922 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), not(c929), c930, not(c931), not(c932), not(c933), r16 .
utility( r922 , 13 ).
r925 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), c929, not(c930), not(c931), not(c932), not(c933), not(r17) .
utility( r925 , 77 ).
r924 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, not(c928), c929, not(c930), not(c931), not(c932), not(c933), r17 .
utility( r924 , 78 ).
r927 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, c928, not(c929), not(c930), not(c931), not(c932), not(c933), not(r22) .
utility( r927 , 21 ).
r926 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), not(c1014), c1015, not(c1016), not(c1017), r11, c928, not(c929), not(c930), not(c931), not(c932), not(c933), r22 .
utility( r926 , 10 ).
query( c933 ).
query( c932 ).
query( c931 ).
query( c930 ).
query( c929 ).
query( c928 ).
r953 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), not(r12) .
utility( r953 , 97 ).
? :: c952 .
? :: c951 .
? :: c950 .
? :: c949 .
? :: c948 .
? :: c947 .
r936 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), not(c949), not(c950), not(c951), c952, not(r6) .
utility( r936 , 2 ).
r935 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), not(c949), not(c950), not(c951), c952, r6 .
utility( r935 , 11 ).
r938 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), not(c949), not(c950), c951, not(c952), not(r7) .
utility( r938 , 64 ).
r937 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), not(c949), not(c950), c951, not(c952), r7 .
utility( r937 , 56 ).
r940 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), not(c949), c950, not(c951), not(c952), not(r11) .
utility( r940 , 14 ).
r939 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), not(c949), c950, not(c951), not(c952), r11 .
utility( r939 , 54 ).
r942 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), c949, not(c950), not(c951), not(c952), not(r16) .
utility( r942 , 7 ).
r941 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), not(c948), c949, not(c950), not(c951), not(c952), r16 .
utility( r941 , 6 ).
r944 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), c948, not(c949), not(c950), not(c951), not(c952), not(r17) .
utility( r944 , 38 ).
r943 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, not(c947), c948, not(c949), not(c950), not(c951), not(c952), r17 .
utility( r943 , 24 ).
r946 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, c947, not(c948), not(c949), not(c950), not(c951), not(c952), not(r22) .
utility( r946 , 43 ).
r945 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), not(c1013), c1014, not(c1015), not(c1016), not(c1017), r12, c947, not(c948), not(c949), not(c950), not(c951), not(c952), r22 .
utility( r945 , 93 ).
query( c952 ).
query( c951 ).
query( c950 ).
query( c949 ).
query( c948 ).
query( c947 ).
r972 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), not(r16) .
utility( r972 , 71 ).
? :: c971 .
? :: c970 .
? :: c969 .
? :: c968 .
? :: c967 .
? :: c966 .
r955 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), not(c968), not(c969), not(c970), c971, not(r6) .
utility( r955 , 71 ).
r954 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), not(c968), not(c969), not(c970), c971, r6 .
utility( r954 , 64 ).
r957 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), not(c968), not(c969), c970, not(c971), not(r7) .
utility( r957 , 35 ).
r956 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), not(c968), not(c969), c970, not(c971), r7 .
utility( r956 , 96 ).
r959 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), not(c968), c969, not(c970), not(c971), not(r11) .
utility( r959 , 38 ).
r958 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), not(c968), c969, not(c970), not(c971), r11 .
utility( r958 , 34 ).
r961 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), c968, not(c969), not(c970), not(c971), not(r12) .
utility( r961 , 90 ).
r960 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), not(c967), c968, not(c969), not(c970), not(c971), r12 .
utility( r960 , 0 ).
r963 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), c967, not(c968), not(c969), not(c970), not(c971), not(r17) .
utility( r963 , 3 ).
r962 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, not(c966), c967, not(c968), not(c969), not(c970), not(c971), r17 .
utility( r962 , 29 ).
r965 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, c966, not(c967), not(c968), not(c969), not(c970), not(c971), not(r22) .
utility( r965 , 52 ).
r964 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), not(c1012), c1013, not(c1014), not(c1015), not(c1016), not(c1017), r16, c966, not(c967), not(c968), not(c969), not(c970), not(c971), r22 .
utility( r964 , 33 ).
query( c971 ).
query( c970 ).
query( c969 ).
query( c968 ).
query( c967 ).
query( c966 ).
r991 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), not(r17) .
utility( r991 , 71 ).
? :: c990 .
? :: c989 .
? :: c988 .
? :: c987 .
? :: c986 .
? :: c985 .
r974 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), not(c987), not(c988), not(c989), c990, not(r6) .
utility( r974 , 66 ).
r973 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), not(c987), not(c988), not(c989), c990, r6 .
utility( r973 , 27 ).
r976 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), not(c987), not(c988), c989, not(c990), not(r7) .
utility( r976 , 23 ).
r975 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), not(c987), not(c988), c989, not(c990), r7 .
utility( r975 , 39 ).
r978 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), not(c987), c988, not(c989), not(c990), not(r11) .
utility( r978 , 5 ).
r977 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), not(c987), c988, not(c989), not(c990), r11 .
utility( r977 , 19 ).
r980 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), c987, not(c988), not(c989), not(c990), not(r12) .
utility( r980 , 25 ).
r979 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), not(c986), c987, not(c988), not(c989), not(c990), r12 .
utility( r979 , 92 ).
r982 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), c986, not(c987), not(c988), not(c989), not(c990), not(r16) .
utility( r982 , 77 ).
r981 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, not(c985), c986, not(c987), not(c988), not(c989), not(c990), r16 .
utility( r981 , 48 ).
r984 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, c985, not(c986), not(c987), not(c988), not(c989), not(c990), not(r22) .
utility( r984 , 68 ).
r983 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, not(c1011), c1012, not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r17, c985, not(c986), not(c987), not(c988), not(c989), not(c990), r22 .
utility( r983 , 83 ).
query( c990 ).
query( c989 ).
query( c988 ).
query( c987 ).
query( c986 ).
query( c985 ).
r1010 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), not(r22) .
utility( r1010 , 53 ).
? :: c1009 .
? :: c1008 .
? :: c1007 .
? :: c1006 .
? :: c1005 .
? :: c1004 .
r993 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), not(c1006), not(c1007), not(c1008), c1009, not(r6) .
utility( r993 , 87 ).
r992 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), not(c1006), not(c1007), not(c1008), c1009, r6 .
utility( r992 , 52 ).
r995 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), not(c1006), not(c1007), c1008, not(c1009), not(r7) .
utility( r995 , 61 ).
r994 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), not(c1006), not(c1007), c1008, not(c1009), r7 .
utility( r994 , 59 ).
r997 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), not(c1006), c1007, not(c1008), not(c1009), not(r11) .
utility( r997 , 50 ).
r996 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), not(c1006), c1007, not(c1008), not(c1009), r11 .
utility( r996 , 22 ).
r999 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), c1006, not(c1007), not(c1008), not(c1009), not(r12) .
utility( r999 , 87 ).
r998 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), not(c1005), c1006, not(c1007), not(c1008), not(c1009), r12 .
utility( r998 , 11 ).
r1001 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), c1005, not(c1006), not(c1007), not(c1008), not(c1009), not(r16) .
utility( r1001 , 32 ).
r1000 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, not(c1004), c1005, not(c1006), not(c1007), not(c1008), not(c1009), r16 .
utility( r1000 , 66 ).
r1003 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, c1004, not(c1005), not(c1006), not(c1007), not(c1008), not(c1009), not(r17) .
utility( r1003 , 65 ).
r1002 :- not(c24), c25, not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r21, c1011, not(c1012), not(c1013), not(c1014), not(c1015), not(c1016), not(c1017), r22, c1004, not(c1005), not(c1006), not(c1007), not(c1008), not(c1009), r17 .
utility( r1002 , 12 ).
query( c1009 ).
query( c1008 ).
query( c1007 ).
query( c1006 ).
query( c1005 ).
query( c1004 ).
query( c1017 ).
query( c1016 ).
query( c1015 ).
query( c1014 ).
query( c1013 ).
query( c1012 ).
query( c1011 ).
r1159 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), not(r22) .
utility( r1159 , 89 ).
? :: c1158 .
? :: c1157 .
? :: c1156 .
? :: c1155 .
? :: c1154 .
? :: c1153 .
? :: c1152 .
r1037 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, not(r6) .
utility( r1037 , 48 ).
? :: c1036 .
? :: c1035 .
? :: c1034 .
? :: c1033 .
? :: c1032 .
? :: c1031 .
r1020 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), not(c1033), not(c1034), not(c1035), c1036, not(r7) .
utility( r1020 , 91 ).
r1019 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), not(c1033), not(c1034), not(c1035), c1036, r7 .
utility( r1019 , 15 ).
r1022 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), not(c1033), not(c1034), c1035, not(c1036), not(r11) .
utility( r1022 , 37 ).
r1021 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), not(c1033), not(c1034), c1035, not(c1036), r11 .
utility( r1021 , 58 ).
r1024 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), not(c1033), c1034, not(c1035), not(c1036), not(r12) .
utility( r1024 , 87 ).
r1023 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), not(c1033), c1034, not(c1035), not(c1036), r12 .
utility( r1023 , 85 ).
r1026 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), c1033, not(c1034), not(c1035), not(c1036), not(r16) .
utility( r1026 , 46 ).
r1025 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), not(c1032), c1033, not(c1034), not(c1035), not(c1036), r16 .
utility( r1025 , 59 ).
r1028 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), c1032, not(c1033), not(c1034), not(c1035), not(c1036), not(r17) .
utility( r1028 , 9 ).
r1027 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, not(c1031), c1032, not(c1033), not(c1034), not(c1035), not(c1036), r17 .
utility( r1027 , 24 ).
r1030 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, c1031, not(c1032), not(c1033), not(c1034), not(c1035), not(c1036), not(r21) .
utility( r1030 , 19 ).
r1029 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), c1158, r6, c1031, not(c1032), not(c1033), not(c1034), not(c1035), not(c1036), r21 .
utility( r1029 , 80 ).
query( c1036 ).
query( c1035 ).
query( c1034 ).
query( c1033 ).
query( c1032 ).
query( c1031 ).
r1056 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), not(r7) .
utility( r1056 , 56 ).
? :: c1055 .
? :: c1054 .
? :: c1053 .
? :: c1052 .
? :: c1051 .
? :: c1050 .
r1039 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), not(c1052), not(c1053), not(c1054), c1055, not(r6) .
utility( r1039 , 43 ).
r1038 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), not(c1052), not(c1053), not(c1054), c1055, r6 .
utility( r1038 , 16 ).
r1041 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), not(c1052), not(c1053), c1054, not(c1055), not(r11) .
utility( r1041 , 35 ).
r1040 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), not(c1052), not(c1053), c1054, not(c1055), r11 .
utility( r1040 , 45 ).
r1043 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), not(c1052), c1053, not(c1054), not(c1055), not(r12) .
utility( r1043 , 17 ).
r1042 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), not(c1052), c1053, not(c1054), not(c1055), r12 .
utility( r1042 , 49 ).
r1045 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), c1052, not(c1053), not(c1054), not(c1055), not(r16) .
utility( r1045 , 4 ).
r1044 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), not(c1051), c1052, not(c1053), not(c1054), not(c1055), r16 .
utility( r1044 , 93 ).
r1047 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), c1051, not(c1052), not(c1053), not(c1054), not(c1055), not(r17) .
utility( r1047 , 8 ).
r1046 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, not(c1050), c1051, not(c1052), not(c1053), not(c1054), not(c1055), r17 .
utility( r1046 , 26 ).
r1049 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, c1050, not(c1051), not(c1052), not(c1053), not(c1054), not(c1055), not(r21) .
utility( r1049 , 87 ).
r1048 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), not(c1156), c1157, not(c1158), r7, c1050, not(c1051), not(c1052), not(c1053), not(c1054), not(c1055), r21 .
utility( r1048 , 38 ).
query( c1055 ).
query( c1054 ).
query( c1053 ).
query( c1052 ).
query( c1051 ).
query( c1050 ).
r1075 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), not(r11) .
utility( r1075 , 83 ).
? :: c1074 .
? :: c1073 .
? :: c1072 .
? :: c1071 .
? :: c1070 .
? :: c1069 .
r1058 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), not(c1071), not(c1072), not(c1073), c1074, not(r6) .
utility( r1058 , 64 ).
r1057 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), not(c1071), not(c1072), not(c1073), c1074, r6 .
utility( r1057 , 78 ).
r1060 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), not(c1071), not(c1072), c1073, not(c1074), not(r7) .
utility( r1060 , 43 ).
r1059 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), not(c1071), not(c1072), c1073, not(c1074), r7 .
utility( r1059 , 90 ).
r1062 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), not(c1071), c1072, not(c1073), not(c1074), not(r12) .
utility( r1062 , 34 ).
r1061 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), not(c1071), c1072, not(c1073), not(c1074), r12 .
utility( r1061 , 18 ).
r1064 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), c1071, not(c1072), not(c1073), not(c1074), not(r16) .
utility( r1064 , 57 ).
r1063 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), not(c1070), c1071, not(c1072), not(c1073), not(c1074), r16 .
utility( r1063 , 29 ).
r1066 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), c1070, not(c1071), not(c1072), not(c1073), not(c1074), not(r17) .
utility( r1066 , 79 ).
r1065 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, not(c1069), c1070, not(c1071), not(c1072), not(c1073), not(c1074), r17 .
utility( r1065 , 77 ).
r1068 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, c1069, not(c1070), not(c1071), not(c1072), not(c1073), not(c1074), not(r21) .
utility( r1068 , 35 ).
r1067 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), not(c1155), c1156, not(c1157), not(c1158), r11, c1069, not(c1070), not(c1071), not(c1072), not(c1073), not(c1074), r21 .
utility( r1067 , 49 ).
query( c1074 ).
query( c1073 ).
query( c1072 ).
query( c1071 ).
query( c1070 ).
query( c1069 ).
r1094 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), not(r12) .
utility( r1094 , 90 ).
? :: c1093 .
? :: c1092 .
? :: c1091 .
? :: c1090 .
? :: c1089 .
? :: c1088 .
r1077 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), not(c1090), not(c1091), not(c1092), c1093, not(r6) .
utility( r1077 , 61 ).
r1076 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), not(c1090), not(c1091), not(c1092), c1093, r6 .
utility( r1076 , 6 ).
r1079 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), not(c1090), not(c1091), c1092, not(c1093), not(r7) .
utility( r1079 , 90 ).
r1078 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), not(c1090), not(c1091), c1092, not(c1093), r7 .
utility( r1078 , 14 ).
r1081 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), not(c1090), c1091, not(c1092), not(c1093), not(r11) .
utility( r1081 , 42 ).
r1080 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), not(c1090), c1091, not(c1092), not(c1093), r11 .
utility( r1080 , 86 ).
r1083 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), c1090, not(c1091), not(c1092), not(c1093), not(r16) .
utility( r1083 , 67 ).
r1082 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), not(c1089), c1090, not(c1091), not(c1092), not(c1093), r16 .
utility( r1082 , 71 ).
r1085 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), c1089, not(c1090), not(c1091), not(c1092), not(c1093), not(r17) .
utility( r1085 , 38 ).
r1084 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, not(c1088), c1089, not(c1090), not(c1091), not(c1092), not(c1093), r17 .
utility( r1084 , 42 ).
r1087 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, c1088, not(c1089), not(c1090), not(c1091), not(c1092), not(c1093), not(r21) .
utility( r1087 , 81 ).
r1086 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), not(c1154), c1155, not(c1156), not(c1157), not(c1158), r12, c1088, not(c1089), not(c1090), not(c1091), not(c1092), not(c1093), r21 .
utility( r1086 , 78 ).
query( c1093 ).
query( c1092 ).
query( c1091 ).
query( c1090 ).
query( c1089 ).
query( c1088 ).
r1113 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), not(r16) .
utility( r1113 , 56 ).
? :: c1112 .
? :: c1111 .
? :: c1110 .
? :: c1109 .
? :: c1108 .
? :: c1107 .
r1096 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), not(c1109), not(c1110), not(c1111), c1112, not(r6) .
utility( r1096 , 63 ).
r1095 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), not(c1109), not(c1110), not(c1111), c1112, r6 .
utility( r1095 , 44 ).
r1098 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), not(c1109), not(c1110), c1111, not(c1112), not(r7) .
utility( r1098 , 14 ).
r1097 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), not(c1109), not(c1110), c1111, not(c1112), r7 .
utility( r1097 , 31 ).
r1100 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), not(c1109), c1110, not(c1111), not(c1112), not(r11) .
utility( r1100 , 15 ).
r1099 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), not(c1109), c1110, not(c1111), not(c1112), r11 .
utility( r1099 , 41 ).
r1102 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), c1109, not(c1110), not(c1111), not(c1112), not(r12) .
utility( r1102 , 54 ).
r1101 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), not(c1108), c1109, not(c1110), not(c1111), not(c1112), r12 .
utility( r1101 , 6 ).
r1104 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), c1108, not(c1109), not(c1110), not(c1111), not(c1112), not(r17) .
utility( r1104 , 38 ).
r1103 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, not(c1107), c1108, not(c1109), not(c1110), not(c1111), not(c1112), r17 .
utility( r1103 , 92 ).
r1106 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, c1107, not(c1108), not(c1109), not(c1110), not(c1111), not(c1112), not(r21) .
utility( r1106 , 13 ).
r1105 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), not(c1153), c1154, not(c1155), not(c1156), not(c1157), not(c1158), r16, c1107, not(c1108), not(c1109), not(c1110), not(c1111), not(c1112), r21 .
utility( r1105 , 74 ).
query( c1112 ).
query( c1111 ).
query( c1110 ).
query( c1109 ).
query( c1108 ).
query( c1107 ).
r1132 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), not(r17) .
utility( r1132 , 71 ).
? :: c1131 .
? :: c1130 .
? :: c1129 .
? :: c1128 .
? :: c1127 .
? :: c1126 .
r1115 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), not(c1128), not(c1129), not(c1130), c1131, not(r6) .
utility( r1115 , 83 ).
r1114 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), not(c1128), not(c1129), not(c1130), c1131, r6 .
utility( r1114 , 81 ).
r1117 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), not(c1128), not(c1129), c1130, not(c1131), not(r7) .
utility( r1117 , 17 ).
r1116 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), not(c1128), not(c1129), c1130, not(c1131), r7 .
utility( r1116 , 64 ).
r1119 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), not(c1128), c1129, not(c1130), not(c1131), not(r11) .
utility( r1119 , 99 ).
r1118 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), not(c1128), c1129, not(c1130), not(c1131), r11 .
utility( r1118 , 22 ).
r1121 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), c1128, not(c1129), not(c1130), not(c1131), not(r12) .
utility( r1121 , 47 ).
r1120 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), not(c1127), c1128, not(c1129), not(c1130), not(c1131), r12 .
utility( r1120 , 78 ).
r1123 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), c1127, not(c1128), not(c1129), not(c1130), not(c1131), not(r16) .
utility( r1123 , 69 ).
r1122 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, not(c1126), c1127, not(c1128), not(c1129), not(c1130), not(c1131), r16 .
utility( r1122 , 2 ).
r1125 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, c1126, not(c1127), not(c1128), not(c1129), not(c1130), not(c1131), not(r21) .
utility( r1125 , 75 ).
r1124 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, not(c1152), c1153, not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r17, c1126, not(c1127), not(c1128), not(c1129), not(c1130), not(c1131), r21 .
utility( r1124 , 35 ).
query( c1131 ).
query( c1130 ).
query( c1129 ).
query( c1128 ).
query( c1127 ).
query( c1126 ).
r1151 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), not(r21) .
utility( r1151 , 33 ).
? :: c1150 .
? :: c1149 .
? :: c1148 .
? :: c1147 .
? :: c1146 .
? :: c1145 .
r1134 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), not(c1147), not(c1148), not(c1149), c1150, not(r6) .
utility( r1134 , 92 ).
r1133 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), not(c1147), not(c1148), not(c1149), c1150, r6 .
utility( r1133 , 78 ).
r1136 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), not(c1147), not(c1148), c1149, not(c1150), not(r7) .
utility( r1136 , 61 ).
r1135 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), not(c1147), not(c1148), c1149, not(c1150), r7 .
utility( r1135 , 25 ).
r1138 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), not(c1147), c1148, not(c1149), not(c1150), not(r11) .
utility( r1138 , 36 ).
r1137 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), not(c1147), c1148, not(c1149), not(c1150), r11 .
utility( r1137 , 47 ).
r1140 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), c1147, not(c1148), not(c1149), not(c1150), not(r12) .
utility( r1140 , 40 ).
r1139 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), not(c1146), c1147, not(c1148), not(c1149), not(c1150), r12 .
utility( r1139 , 55 ).
r1142 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), c1146, not(c1147), not(c1148), not(c1149), not(c1150), not(r16) .
utility( r1142 , 71 ).
r1141 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, not(c1145), c1146, not(c1147), not(c1148), not(c1149), not(c1150), r16 .
utility( r1141 , 33 ).
r1144 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, c1145, not(c1146), not(c1147), not(c1148), not(c1149), not(c1150), not(r17) .
utility( r1144 , 87 ).
r1143 :- c24, not(c25), not(c26), not(c27), not(c28), not(c29), not(c30), not(c31), r22, c1152, not(c1153), not(c1154), not(c1155), not(c1156), not(c1157), not(c1158), r21, c1145, not(c1146), not(c1147), not(c1148), not(c1149), not(c1150), r17 .
utility( r1143 , 58 ).
query( c1150 ).
query( c1149 ).
query( c1148 ).
query( c1147 ).
query( c1146 ).
query( c1145 ).
query( c1158 ).
query( c1157 ).
query( c1156 ).
query( c1155 ).
query( c1154 ).
query( c1153 ).
query( c1152 ).
query( c31 ).
query( c30 ).
query( c29 ).
query( c28 ).
query( c27 ).
query( c26 ).
query( c25 ).
query( c24 ).
