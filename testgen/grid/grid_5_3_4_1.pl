0.1 :: f1 .
0.1 :: f2 .
r3 :- f1, f2 .
utility( r3 , 0 ).
query( r3 ).
? :: c5 .
? :: c4 .
r6 :- f1, not(f2), c5 .
utility( r6 , 0 ).
query( r6 ).
0.1 :: f7 .
0.1 :: f8 .
r9 :- f1, not(f2), c4, f7, f8 .
utility( r9 , 0 ).
query( r9 ).
? :: c12 .
? :: c11 .
? :: c10 .
r13 :- f1, not(f2), c4, f7, not(f8), c12 .
utility( r13 , 0 ).
query( r13 ).
r14 :- f1, not(f2), c4, f7, not(f8), c11 .
utility( r14 , 0 ).
query( r14 ).
r15 :- f1, not(f2), c4, f7, not(f8), c10 .
utility( r15 , 0 ).
query( r15 ).
? :: c16 .
0.1 :: f17 .
r18 :- f1, not(f2), c4, not(f7), c16, f17 .
utility( r18 , 0 ).
query( r18 ).
? :: c21 .
? :: c20 .
? :: c19 .
r22 :- f1, not(f2), c4, not(f7), c16, not(f17), c21 .
utility( r22 , 0 ).
query( r22 ).
r23 :- f1, not(f2), c4, not(f7), c16, not(f17), c20 .
utility( r23 , 0 ).
query( r23 ).
r24 :- f1, not(f2), c4, not(f7), c16, not(f17), c19 .
utility( r24 , 0 ).
query( r24 ).
? :: c27 .
? :: c26 .
? :: c25 .
0.1 :: f28 .
0.1 :: f29 .
0.1 :: f30 .
r31 :- not(f1), c27, f28, f29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c34 .
? :: c33 .
? :: c32 .
r35 :- not(f1), c27, f28, f29, not(f30), c34 .
utility( r35 , 0 ).
query( r35 ).
r36 :- not(f1), c27, f28, f29, not(f30), c33 .
utility( r36 , 0 ).
query( r36 ).
r37 :- not(f1), c27, f28, f29, not(f30), c32 .
utility( r37 , 0 ).
query( r37 ).
? :: c38 .
0.1 :: f39 .
r40 :- not(f1), c27, f28, not(f29), c38, f39 .
utility( r40 , 0 ).
query( r40 ).
? :: c43 .
? :: c42 .
? :: c41 .
r44 :- not(f1), c27, f28, not(f29), c38, not(f39), c43 .
utility( r44 , 0 ).
query( r44 ).
r45 :- not(f1), c27, f28, not(f29), c38, not(f39), c42 .
utility( r45 , 0 ).
query( r45 ).
r46 :- not(f1), c27, f28, not(f29), c38, not(f39), c41 .
utility( r46 , 0 ).
query( r46 ).
? :: c48 .
? :: c47 .
r49 :- not(f1), c27, not(f28), c48 .
utility( r49 , 0 ).
query( r49 ).
0.1 :: f50 .
0.1 :: f51 .
r52 :- not(f1), c27, not(f28), c47, f50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c55 .
? :: c54 .
? :: c53 .
r56 :- not(f1), c27, not(f28), c47, f50, not(f51), c55 .
utility( r56 , 0 ).
query( r56 ).
r57 :- not(f1), c27, not(f28), c47, f50, not(f51), c54 .
utility( r57 , 0 ).
query( r57 ).
r58 :- not(f1), c27, not(f28), c47, f50, not(f51), c53 .
utility( r58 , 0 ).
query( r58 ).
? :: c59 .
0.1 :: f60 .
r61 :- not(f1), c27, not(f28), c47, not(f50), c59, f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c64 .
? :: c63 .
? :: c62 .
r65 :- not(f1), c27, not(f28), c47, not(f50), c59, not(f60), c64 .
utility( r65 , 0 ).
query( r65 ).
r66 :- not(f1), c27, not(f28), c47, not(f50), c59, not(f60), c63 .
utility( r66 , 0 ).
query( r66 ).
r67 :- not(f1), c27, not(f28), c47, not(f50), c59, not(f60), c62 .
utility( r67 , 0 ).
query( r67 ).
0.1 :: f68 .
0.1 :: f69 .
0.1 :: f70 .
r71 :- not(f1), c26, f68, f69, f70 .
utility( r71 , 0 ).
query( r71 ).
? :: c72 .
r73 :- not(f1), c26, f68, f69, not(f70), c72 .
utility( r73 , 0 ).
query( r73 ).
? :: c74 .
0.1 :: f75 .
r76 :- not(f1), c26, f68, not(f69), c74, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- not(f1), c26, f68, not(f69), c74, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
? :: c80 .
? :: c79 .
0.1 :: f81 .
0.1 :: f82 .
r83 :- not(f1), c26, not(f68), c80, f81, f82 .
utility( r83 , 0 ).
query( r83 ).
? :: c84 .
r85 :- not(f1), c26, not(f68), c80, f81, not(f82), c84 .
utility( r85 , 0 ).
query( r85 ).
? :: c86 .
0.1 :: f87 .
r88 :- not(f1), c26, not(f68), c80, not(f81), c86, f87 .
utility( r88 , 0 ).
query( r88 ).
? :: c89 .
r90 :- not(f1), c26, not(f68), c80, not(f81), c86, not(f87), c89 .
utility( r90 , 0 ).
query( r90 ).
0.1 :: f91 .
0.1 :: f92 .
r93 :- not(f1), c26, not(f68), c79, f91, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c94 .
r95 :- not(f1), c26, not(f68), c79, f91, not(f92), c94 .
utility( r95 , 0 ).
query( r95 ).
? :: c96 .
0.1 :: f97 .
r98 :- not(f1), c26, not(f68), c79, not(f91), c96, f97 .
utility( r98 , 0 ).
query( r98 ).
? :: c99 .
r100 :- not(f1), c26, not(f68), c79, not(f91), c96, not(f97), c99 .
utility( r100 , 0 ).
query( r100 ).
0.1 :: f101 .
0.1 :: f102 .
0.1 :: f103 .
r104 :- not(f1), c25, f101, f102, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c106 .
? :: c105 .
r107 :- not(f1), c25, f101, f102, not(f103), c106 .
utility( r107 , 0 ).
query( r107 ).
r108 :- not(f1), c25, f101, f102, not(f103), c105 .
utility( r108 , 0 ).
query( r108 ).
? :: c110 .
? :: c109 .
0.1 :: f111 .
r112 :- not(f1), c25, f101, not(f102), c110, f111 .
utility( r112 , 0 ).
query( r112 ).
? :: c114 .
? :: c113 .
r115 :- not(f1), c25, f101, not(f102), c110, not(f111), c114 .
utility( r115 , 0 ).
query( r115 ).
r116 :- not(f1), c25, f101, not(f102), c110, not(f111), c113 .
utility( r116 , 0 ).
query( r116 ).
0.1 :: f117 .
r118 :- not(f1), c25, f101, not(f102), c109, f117 .
utility( r118 , 0 ).
query( r118 ).
? :: c121 .
? :: c120 .
? :: c119 .
r122 :- not(f1), c25, f101, not(f102), c109, not(f117), c121 .
utility( r122 , 0 ).
query( r122 ).
r123 :- not(f1), c25, f101, not(f102), c109, not(f117), c120 .
utility( r123 , 0 ).
query( r123 ).
r124 :- not(f1), c25, f101, not(f102), c109, not(f117), c119 .
utility( r124 , 1 ).
query( r124 ).
? :: c127 .
? :: c126 .
? :: c125 .
0.1 :: f128 .
0.1 :: f129 .
r130 :- not(f1), c25, not(f101), c127, f128, f129 .
utility( r130 , 0 ).
query( r130 ).
? :: c132 .
? :: c131 .
r133 :- not(f1), c25, not(f101), c127, f128, not(f129), c132 .
utility( r133 , 0 ).
query( r133 ).
r134 :- not(f1), c25, not(f101), c127, f128, not(f129), c131 .
utility( r134 , 0 ).
query( r134 ).
? :: c135 .
0.1 :: f136 .
r137 :- not(f1), c25, not(f101), c127, not(f128), c135, f136 .
utility( r137 , 0 ).
query( r137 ).
? :: c139 .
? :: c138 .
r140 :- not(f1), c25, not(f101), c127, not(f128), c135, not(f136), c139 .
utility( r140 , 0 ).
query( r140 ).
r141 :- not(f1), c25, not(f101), c127, not(f128), c135, not(f136), c138 .
utility( r141 , 0 ).
query( r141 ).
0.1 :: f142 .
0.1 :: f143 .
r144 :- not(f1), c25, not(f101), c126, f142, f143 .
utility( r144 , 0 ).
query( r144 ).
? :: c146 .
? :: c145 .
r147 :- not(f1), c25, not(f101), c126, f142, not(f143), c146 .
utility( r147 , 0 ).
query( r147 ).
r148 :- not(f1), c25, not(f101), c126, f142, not(f143), c145 .
utility( r148 , 0 ).
query( r148 ).
? :: c149 .
0.1 :: f150 .
r151 :- not(f1), c25, not(f101), c126, not(f142), c149, f150 .
utility( r151 , 0 ).
query( r151 ).
? :: c153 .
? :: c152 .
r154 :- not(f1), c25, not(f101), c126, not(f142), c149, not(f150), c153 .
utility( r154 , 0 ).
query( r154 ).
r155 :- not(f1), c25, not(f101), c126, not(f142), c149, not(f150), c152 .
utility( r155 , 0 ).
query( r155 ).
0.1 :: f156 .
0.1 :: f157 .
r158 :- not(f1), c25, not(f101), c125, f156, f157 .
utility( r158 , 0 ).
query( r158 ).
? :: c160 .
? :: c159 .
r161 :- not(f1), c25, not(f101), c125, f156, not(f157), c160 .
utility( r161 , 0 ).
query( r161 ).
r162 :- not(f1), c25, not(f101), c125, f156, not(f157), c159 .
utility( r162 , 0 ).
query( r162 ).
? :: c164 .
? :: c163 .
0.1 :: f165 .
r166 :- not(f1), c25, not(f101), c125, not(f156), c164, f165 .
utility( r166 , 0 ).
query( r166 ).
? :: c168 .
? :: c167 .
r169 :- not(f1), c25, not(f101), c125, not(f156), c164, not(f165), c168 .
utility( r169 , 0 ).
query( r169 ).
r170 :- not(f1), c25, not(f101), c125, not(f156), c164, not(f165), c167 .
utility( r170 , 0 ).
query( r170 ).
0.1 :: f171 .
r172 :- not(f1), c25, not(f101), c125, not(f156), c163, f171 .
utility( r172 , 0 ).
query( r172 ).
? :: c175 .
? :: c174 .
? :: c173 .
r176 :- not(f1), c25, not(f101), c125, not(f156), c163, not(f171), c175 .
utility( r176 , 0 ).
query( r176 ).
r177 :- not(f1), c25, not(f101), c125, not(f156), c163, not(f171), c174 .
utility( r177 , 0 ).
query( r177 ).
r178 :- not(f1), c25, not(f101), c125, not(f156), c163, not(f171), c173 .
utility( r178 , 1 ).
query( r178 ).
