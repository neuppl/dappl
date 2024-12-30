0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
0.1 :: f4 .
r5 :- f1, f2, f3, f4 .
utility( r5 , 0 ).
query( r5 ).
? :: c8 .
? :: c7 .
? :: c6 .
r9 :- f1, f2, f3, not(f4), c8 .
utility( r9 , 0 ).
query( r9 ).
r10 :- f1, f2, f3, not(f4), c7 .
utility( r10 , 0 ).
query( r10 ).
r11 :- f1, f2, f3, not(f4), c6 .
utility( r11 , 0 ).
query( r11 ).
? :: c13 .
? :: c12 .
0.1 :: f14 .
r15 :- f1, f2, not(f3), c13, f14 .
utility( r15 , 0 ).
query( r15 ).
? :: c18 .
? :: c17 .
? :: c16 .
r19 :- f1, f2, not(f3), c13, not(f14), c18 .
utility( r19 , 0 ).
query( r19 ).
r20 :- f1, f2, not(f3), c13, not(f14), c17 .
utility( r20 , 0 ).
query( r20 ).
r21 :- f1, f2, not(f3), c13, not(f14), c16 .
utility( r21 , 0 ).
query( r21 ).
0.1 :: f22 .
r23 :- f1, f2, not(f3), c12, f22 .
utility( r23 , 0 ).
query( r23 ).
? :: c25 .
? :: c24 .
r26 :- f1, f2, not(f3), c12, not(f22), c25 .
utility( r26 , 0 ).
query( r26 ).
r27 :- f1, f2, not(f3), c12, not(f22), c24 .
utility( r27 , 0 ).
query( r27 ).
? :: c28 .
0.1 :: f29 .
0.1 :: f30 .
r31 :- f1, not(f2), c28, f29, f30 .
utility( r31 , 0 ).
query( r31 ).
? :: c33 .
? :: c32 .
r34 :- f1, not(f2), c28, f29, not(f30), c33 .
utility( r34 , 0 ).
query( r34 ).
r35 :- f1, not(f2), c28, f29, not(f30), c32 .
utility( r35 , 0 ).
query( r35 ).
? :: c37 .
? :: c36 .
0.1 :: f38 .
r39 :- f1, not(f2), c28, not(f29), c37, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c42 .
? :: c41 .
? :: c40 .
r43 :- f1, not(f2), c28, not(f29), c37, not(f38), c42 .
utility( r43 , 0 ).
query( r43 ).
r44 :- f1, not(f2), c28, not(f29), c37, not(f38), c41 .
utility( r44 , 0 ).
query( r44 ).
r45 :- f1, not(f2), c28, not(f29), c37, not(f38), c40 .
utility( r45 , 0 ).
query( r45 ).
0.1 :: f46 .
r47 :- f1, not(f2), c28, not(f29), c36, f46 .
utility( r47 , 0 ).
query( r47 ).
? :: c49 .
? :: c48 .
r50 :- f1, not(f2), c28, not(f29), c36, not(f46), c49 .
utility( r50 , 0 ).
query( r50 ).
r51 :- f1, not(f2), c28, not(f29), c36, not(f46), c48 .
utility( r51 , 0 ).
query( r51 ).
? :: c53 .
? :: c52 .
0.1 :: f54 .
0.1 :: f55 .
0.1 :: f56 .
r57 :- not(f1), c53, f54, f55, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c58 .
r59 :- not(f1), c53, f54, f55, not(f56), c58 .
utility( r59 , 0 ).
query( r59 ).
? :: c61 .
? :: c60 .
0.1 :: f62 .
r63 :- not(f1), c53, f54, not(f55), c61, f62 .
utility( r63 , 0 ).
query( r63 ).
? :: c64 .
r65 :- not(f1), c53, f54, not(f55), c61, not(f62), c64 .
utility( r65 , 0 ).
query( r65 ).
0.1 :: f66 .
r67 :- not(f1), c53, f54, not(f55), c60, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c69 .
? :: c68 .
r70 :- not(f1), c53, f54, not(f55), c60, not(f66), c69 .
utility( r70 , 0 ).
query( r70 ).
r71 :- not(f1), c53, f54, not(f55), c60, not(f66), c68 .
utility( r71 , 0 ).
query( r71 ).
? :: c73 .
? :: c72 .
0.1 :: f74 .
0.1 :: f75 .
r76 :- not(f1), c53, not(f54), c73, f74, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- not(f1), c53, not(f54), c73, f74, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
? :: c80 .
? :: c79 .
0.1 :: f81 .
r82 :- not(f1), c53, not(f54), c73, not(f74), c80, f81 .
utility( r82 , 0 ).
query( r82 ).
? :: c83 .
r84 :- not(f1), c53, not(f54), c73, not(f74), c80, not(f81), c83 .
utility( r84 , 0 ).
query( r84 ).
0.1 :: f85 .
r86 :- not(f1), c53, not(f54), c73, not(f74), c79, f85 .
utility( r86 , 0 ).
query( r86 ).
? :: c88 .
? :: c87 .
r89 :- not(f1), c53, not(f54), c73, not(f74), c79, not(f85), c88 .
utility( r89 , 0 ).
query( r89 ).
r90 :- not(f1), c53, not(f54), c73, not(f74), c79, not(f85), c87 .
utility( r90 , 0 ).
query( r90 ).
0.1 :: f91 .
0.1 :: f92 .
r93 :- not(f1), c53, not(f54), c72, f91, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c95 .
? :: c94 .
r96 :- not(f1), c53, not(f54), c72, f91, not(f92), c95 .
utility( r96 , 0 ).
query( r96 ).
r97 :- not(f1), c53, not(f54), c72, f91, not(f92), c94 .
utility( r97 , 0 ).
query( r97 ).
? :: c99 .
? :: c98 .
0.1 :: f100 .
r101 :- not(f1), c53, not(f54), c72, not(f91), c99, f100 .
utility( r101 , 0 ).
query( r101 ).
? :: c103 .
? :: c102 .
r104 :- not(f1), c53, not(f54), c72, not(f91), c99, not(f100), c103 .
utility( r104 , 0 ).
query( r104 ).
r105 :- not(f1), c53, not(f54), c72, not(f91), c99, not(f100), c102 .
utility( r105 , 0 ).
query( r105 ).
0.1 :: f106 .
r107 :- not(f1), c53, not(f54), c72, not(f91), c98, f106 .
utility( r107 , 0 ).
query( r107 ).
? :: c109 .
? :: c108 .
r110 :- not(f1), c53, not(f54), c72, not(f91), c98, not(f106), c109 .
utility( r110 , 0 ).
query( r110 ).
r111 :- not(f1), c53, not(f54), c72, not(f91), c98, not(f106), c108 .
utility( r111 , 0 ).
query( r111 ).
0.1 :: f112 .
0.1 :: f113 .
0.1 :: f114 .
r115 :- not(f1), c52, f112, f113, f114 .
utility( r115 , 0 ).
query( r115 ).
? :: c118 .
? :: c117 .
? :: c116 .
r119 :- not(f1), c52, f112, f113, not(f114), c118 .
utility( r119 , 0 ).
query( r119 ).
r120 :- not(f1), c52, f112, f113, not(f114), c117 .
utility( r120 , 0 ).
query( r120 ).
r121 :- not(f1), c52, f112, f113, not(f114), c116 .
utility( r121 , 0 ).
query( r121 ).
? :: c123 .
? :: c122 .
0.1 :: f124 .
r125 :- not(f1), c52, f112, not(f113), c123, f124 .
utility( r125 , 0 ).
query( r125 ).
? :: c128 .
? :: c127 .
? :: c126 .
r129 :- not(f1), c52, f112, not(f113), c123, not(f124), c128 .
utility( r129 , 0 ).
query( r129 ).
r130 :- not(f1), c52, f112, not(f113), c123, not(f124), c127 .
utility( r130 , 0 ).
query( r130 ).
r131 :- not(f1), c52, f112, not(f113), c123, not(f124), c126 .
utility( r131 , 0 ).
query( r131 ).
0.1 :: f132 .
r133 :- not(f1), c52, f112, not(f113), c122, f132 .
utility( r133 , 0 ).
query( r133 ).
? :: c135 .
? :: c134 .
r136 :- not(f1), c52, f112, not(f113), c122, not(f132), c135 .
utility( r136 , 0 ).
query( r136 ).
r137 :- not(f1), c52, f112, not(f113), c122, not(f132), c134 .
utility( r137 , 0 ).
query( r137 ).
? :: c138 .
0.1 :: f139 .
0.1 :: f140 .
r141 :- not(f1), c52, not(f112), c138, f139, f140 .
utility( r141 , 0 ).
query( r141 ).
? :: c144 .
? :: c143 .
? :: c142 .
r145 :- not(f1), c52, not(f112), c138, f139, not(f140), c144 .
utility( r145 , 0 ).
query( r145 ).
r146 :- not(f1), c52, not(f112), c138, f139, not(f140), c143 .
utility( r146 , 0 ).
query( r146 ).
r147 :- not(f1), c52, not(f112), c138, f139, not(f140), c142 .
utility( r147 , 0 ).
query( r147 ).
? :: c149 .
? :: c148 .
0.1 :: f150 .
r151 :- not(f1), c52, not(f112), c138, not(f139), c149, f150 .
utility( r151 , 0 ).
query( r151 ).
? :: c154 .
? :: c153 .
? :: c152 .
r155 :- not(f1), c52, not(f112), c138, not(f139), c149, not(f150), c154 .
utility( r155 , 0 ).
query( r155 ).
r156 :- not(f1), c52, not(f112), c138, not(f139), c149, not(f150), c153 .
utility( r156 , 0 ).
query( r156 ).
r157 :- not(f1), c52, not(f112), c138, not(f139), c149, not(f150), c152 .
utility( r157 , 0 ).
query( r157 ).
0.1 :: f158 .
r159 :- not(f1), c52, not(f112), c138, not(f139), c148, f158 .
utility( r159 , 0 ).
query( r159 ).
? :: c161 .
? :: c160 .
r162 :- not(f1), c52, not(f112), c138, not(f139), c148, not(f158), c161 .
utility( r162 , 0 ).
query( r162 ).
r163 :- not(f1), c52, not(f112), c138, not(f139), c148, not(f158), c160 .
utility( r163 , 0 ).
query( r163 ).
