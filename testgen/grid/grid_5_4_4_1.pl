0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
0.1 :: f4 .
r5 :- f1, f2, f3, f4 .
utility( r5 , 0 ).
query( r5 ).
? :: c6 .
r7 :- f1, f2, f3, not(f4), c6 .
utility( r7 , 0 ).
query( r7 ).
? :: c9 .
? :: c8 .
0.1 :: f10 .
r11 :- f1, f2, not(f3), c9, f10 .
utility( r11 , 0 ).
query( r11 ).
? :: c12 .
r13 :- f1, f2, not(f3), c9, not(f10), c12 .
utility( r13 , 0 ).
query( r13 ).
0.1 :: f14 .
r15 :- f1, f2, not(f3), c8, f14 .
utility( r15 , 0 ).
query( r15 ).
? :: c18 .
? :: c17 .
? :: c16 .
r19 :- f1, f2, not(f3), c8, not(f14), c18 .
utility( r19 , 0 ).
query( r19 ).
r20 :- f1, f2, not(f3), c8, not(f14), c17 .
utility( r20 , 0 ).
query( r20 ).
r21 :- f1, f2, not(f3), c8, not(f14), c16 .
utility( r21 , 0 ).
query( r21 ).
? :: c22 .
0.1 :: f23 .
0.1 :: f24 .
r25 :- f1, not(f2), c22, f23, f24 .
utility( r25 , 0 ).
query( r25 ).
? :: c28 .
? :: c27 .
? :: c26 .
r29 :- f1, not(f2), c22, f23, not(f24), c28 .
utility( r29 , 0 ).
query( r29 ).
r30 :- f1, not(f2), c22, f23, not(f24), c27 .
utility( r30 , 0 ).
query( r30 ).
r31 :- f1, not(f2), c22, f23, not(f24), c26 .
utility( r31 , 0 ).
query( r31 ).
? :: c33 .
? :: c32 .
0.1 :: f34 .
r35 :- f1, not(f2), c22, not(f23), c33, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c36 .
r37 :- f1, not(f2), c22, not(f23), c33, not(f34), c36 .
utility( r37 , 0 ).
query( r37 ).
0.1 :: f38 .
r39 :- f1, not(f2), c22, not(f23), c32, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c42 .
? :: c41 .
? :: c40 .
r43 :- f1, not(f2), c22, not(f23), c32, not(f38), c42 .
utility( r43 , 0 ).
query( r43 ).
r44 :- f1, not(f2), c22, not(f23), c32, not(f38), c41 .
utility( r44 , 0 ).
query( r44 ).
r45 :- f1, not(f2), c22, not(f23), c32, not(f38), c40 .
utility( r45 , 0 ).
query( r45 ).
? :: c48 .
? :: c47 .
? :: c46 .
0.1 :: f49 .
0.1 :: f50 .
0.1 :: f51 .
r52 :- not(f1), c48, f49, f50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f1), c48, f49, f50, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
? :: c56 .
? :: c55 .
0.1 :: f57 .
r58 :- not(f1), c48, f49, not(f50), c56, f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c59 .
r60 :- not(f1), c48, f49, not(f50), c56, not(f57), c59 .
utility( r60 , 0 ).
query( r60 ).
0.1 :: f61 .
r62 :- not(f1), c48, f49, not(f50), c55, f61 .
utility( r62 , 0 ).
query( r62 ).
? :: c65 .
? :: c64 .
? :: c63 .
r66 :- not(f1), c48, f49, not(f50), c55, not(f61), c65 .
utility( r66 , 0 ).
query( r66 ).
r67 :- not(f1), c48, f49, not(f50), c55, not(f61), c64 .
utility( r67 , 0 ).
query( r67 ).
r68 :- not(f1), c48, f49, not(f50), c55, not(f61), c63 .
utility( r68 , 0 ).
query( r68 ).
? :: c69 .
0.1 :: f70 .
0.1 :: f71 .
r72 :- not(f1), c48, not(f49), c69, f70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c73 .
r74 :- not(f1), c48, not(f49), c69, f70, not(f71), c73 .
utility( r74 , 0 ).
query( r74 ).
? :: c76 .
? :: c75 .
0.1 :: f77 .
r78 :- not(f1), c48, not(f49), c69, not(f70), c76, f77 .
utility( r78 , 0 ).
query( r78 ).
? :: c79 .
r80 :- not(f1), c48, not(f49), c69, not(f70), c76, not(f77), c79 .
utility( r80 , 0 ).
query( r80 ).
0.1 :: f81 .
r82 :- not(f1), c48, not(f49), c69, not(f70), c75, f81 .
utility( r82 , 0 ).
query( r82 ).
? :: c85 .
? :: c84 .
? :: c83 .
r86 :- not(f1), c48, not(f49), c69, not(f70), c75, not(f81), c85 .
utility( r86 , 0 ).
query( r86 ).
r87 :- not(f1), c48, not(f49), c69, not(f70), c75, not(f81), c84 .
utility( r87 , 0 ).
query( r87 ).
r88 :- not(f1), c48, not(f49), c69, not(f70), c75, not(f81), c83 .
utility( r88 , 0 ).
query( r88 ).
r89 :- not(f1), c47 .
utility( r89 , 0 ).
query( r89 ).
0.1 :: f90 .
0.1 :: f91 .
0.1 :: f92 .
r93 :- not(f1), c46, f90, f91, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c94 .
r95 :- not(f1), c46, f90, f91, not(f92), c94 .
utility( r95 , 0 ).
query( r95 ).
? :: c97 .
? :: c96 .
0.1 :: f98 .
r99 :- not(f1), c46, f90, not(f91), c97, f98 .
utility( r99 , 0 ).
query( r99 ).
? :: c101 .
? :: c100 .
r102 :- not(f1), c46, f90, not(f91), c97, not(f98), c101 .
utility( r102 , 0 ).
query( r102 ).
r103 :- not(f1), c46, f90, not(f91), c97, not(f98), c100 .
utility( r103 , 0 ).
query( r103 ).
0.1 :: f104 .
r105 :- not(f1), c46, f90, not(f91), c96, f104 .
utility( r105 , 0 ).
query( r105 ).
? :: c106 .
r107 :- not(f1), c46, f90, not(f91), c96, not(f104), c106 .
utility( r107 , 0 ).
query( r107 ).
? :: c109 .
? :: c108 .
0.1 :: f110 .
0.1 :: f111 .
r112 :- not(f1), c46, not(f90), c109, f110, f111 .
utility( r112 , 0 ).
query( r112 ).
? :: c113 .
r114 :- not(f1), c46, not(f90), c109, f110, not(f111), c113 .
utility( r114 , 0 ).
query( r114 ).
? :: c116 .
? :: c115 .
0.1 :: f117 .
r118 :- not(f1), c46, not(f90), c109, not(f110), c116, f117 .
utility( r118 , 0 ).
query( r118 ).
? :: c119 .
r120 :- not(f1), c46, not(f90), c109, not(f110), c116, not(f117), c119 .
utility( r120 , 0 ).
query( r120 ).
0.1 :: f121 .
r122 :- not(f1), c46, not(f90), c109, not(f110), c115, f121 .
utility( r122 , 0 ).
query( r122 ).
? :: c124 .
? :: c123 .
r125 :- not(f1), c46, not(f90), c109, not(f110), c115, not(f121), c124 .
utility( r125 , 0 ).
query( r125 ).
r126 :- not(f1), c46, not(f90), c109, not(f110), c115, not(f121), c123 .
utility( r126 , 0 ).
query( r126 ).
0.1 :: f127 .
0.1 :: f128 .
r129 :- not(f1), c46, not(f90), c108, f127, f128 .
utility( r129 , 0 ).
query( r129 ).
? :: c130 .
r131 :- not(f1), c46, not(f90), c108, f127, not(f128), c130 .
utility( r131 , 0 ).
query( r131 ).
? :: c133 .
? :: c132 .
0.1 :: f134 .
r135 :- not(f1), c46, not(f90), c108, not(f127), c133, f134 .
utility( r135 , 0 ).
query( r135 ).
? :: c137 .
? :: c136 .
r138 :- not(f1), c46, not(f90), c108, not(f127), c133, not(f134), c137 .
utility( r138 , 0 ).
query( r138 ).
r139 :- not(f1), c46, not(f90), c108, not(f127), c133, not(f134), c136 .
utility( r139 , 0 ).
query( r139 ).
0.1 :: f140 .
r141 :- not(f1), c46, not(f90), c108, not(f127), c132, f140 .
utility( r141 , 0 ).
query( r141 ).
? :: c142 .
r143 :- not(f1), c46, not(f90), c108, not(f127), c132, not(f140), c142 .
utility( r143 , 0 ).
query( r143 ).
