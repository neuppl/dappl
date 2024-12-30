0.1 :: f1 .
0.1 :: f2 .
0.1 :: f3 .
0.1 :: f4 .
r5 :- f1, f2, f3, f4 .
utility( r5 , 0 ).
query( r5 ).
? :: c7 .
? :: c6 .
r8 :- f1, f2, f3, not(f4), c7 .
utility( r8 , 0 ).
query( r8 ).
r9 :- f1, f2, f3, not(f4), c6 .
utility( r9 , 0 ).
query( r9 ).
? :: c11 .
? :: c10 .
0.1 :: f12 .
r13 :- f1, f2, not(f3), c11, f12 .
utility( r13 , 0 ).
query( r13 ).
? :: c15 .
? :: c14 .
r16 :- f1, f2, not(f3), c11, not(f12), c15 .
utility( r16 , 0 ).
query( r16 ).
r17 :- f1, f2, not(f3), c11, not(f12), c14 .
utility( r17 , 0 ).
query( r17 ).
0.1 :: f18 .
r19 :- f1, f2, not(f3), c10, f18 .
utility( r19 , 0 ).
query( r19 ).
? :: c21 .
? :: c20 .
r22 :- f1, f2, not(f3), c10, not(f18), c21 .
utility( r22 , 0 ).
query( r22 ).
r23 :- f1, f2, not(f3), c10, not(f18), c20 .
utility( r23 , 0 ).
query( r23 ).
? :: c26 .
? :: c25 .
? :: c24 .
0.1 :: f27 .
0.1 :: f28 .
r29 :- f1, not(f2), c26, f27, f28 .
utility( r29 , 0 ).
query( r29 ).
? :: c31 .
? :: c30 .
r32 :- f1, not(f2), c26, f27, not(f28), c31 .
utility( r32 , 0 ).
query( r32 ).
r33 :- f1, not(f2), c26, f27, not(f28), c30 .
utility( r33 , 0 ).
query( r33 ).
? :: c34 .
0.1 :: f35 .
r36 :- f1, not(f2), c26, not(f27), c34, f35 .
utility( r36 , 0 ).
query( r36 ).
? :: c38 .
? :: c37 .
r39 :- f1, not(f2), c26, not(f27), c34, not(f35), c38 .
utility( r39 , 0 ).
query( r39 ).
r40 :- f1, not(f2), c26, not(f27), c34, not(f35), c37 .
utility( r40 , 0 ).
query( r40 ).
0.1 :: f41 .
0.1 :: f42 .
r43 :- f1, not(f2), c25, f41, f42 .
utility( r43 , 0 ).
query( r43 ).
? :: c45 .
? :: c44 .
r46 :- f1, not(f2), c25, f41, not(f42), c45 .
utility( r46 , 0 ).
query( r46 ).
r47 :- f1, not(f2), c25, f41, not(f42), c44 .
utility( r47 , 0 ).
query( r47 ).
? :: c49 .
? :: c48 .
0.1 :: f50 .
r51 :- f1, not(f2), c25, not(f41), c49, f50 .
utility( r51 , 0 ).
query( r51 ).
? :: c53 .
? :: c52 .
r54 :- f1, not(f2), c25, not(f41), c49, not(f50), c53 .
utility( r54 , 0 ).
query( r54 ).
r55 :- f1, not(f2), c25, not(f41), c49, not(f50), c52 .
utility( r55 , 0 ).
query( r55 ).
0.1 :: f56 .
r57 :- f1, not(f2), c25, not(f41), c48, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c59 .
? :: c58 .
r60 :- f1, not(f2), c25, not(f41), c48, not(f56), c59 .
utility( r60 , 0 ).
query( r60 ).
r61 :- f1, not(f2), c25, not(f41), c48, not(f56), c58 .
utility( r61 , 0 ).
query( r61 ).
0.1 :: f62 .
0.1 :: f63 .
r64 :- f1, not(f2), c24, f62, f63 .
utility( r64 , 0 ).
query( r64 ).
? :: c66 .
? :: c65 .
r67 :- f1, not(f2), c24, f62, not(f63), c66 .
utility( r67 , 0 ).
query( r67 ).
r68 :- f1, not(f2), c24, f62, not(f63), c65 .
utility( r68 , 0 ).
query( r68 ).
? :: c69 .
0.1 :: f70 .
r71 :- f1, not(f2), c24, not(f62), c69, f70 .
utility( r71 , 0 ).
query( r71 ).
? :: c73 .
? :: c72 .
r74 :- f1, not(f2), c24, not(f62), c69, not(f70), c73 .
utility( r74 , 0 ).
query( r74 ).
r75 :- f1, not(f2), c24, not(f62), c69, not(f70), c72 .
utility( r75 , 0 ).
query( r75 ).
? :: c78 .
? :: c77 .
? :: c76 .
0.1 :: f79 .
0.1 :: f80 .
0.1 :: f81 .
r82 :- not(f1), c78, f79, f80, f81 .
utility( r82 , 0 ).
query( r82 ).
? :: c83 .
r84 :- not(f1), c78, f79, f80, not(f81), c83 .
utility( r84 , 0 ).
query( r84 ).
? :: c85 .
0.1 :: f86 .
r87 :- not(f1), c78, f79, not(f80), c85, f86 .
utility( r87 , 0 ).
query( r87 ).
? :: c88 .
r89 :- not(f1), c78, f79, not(f80), c85, not(f86), c88 .
utility( r89 , 0 ).
query( r89 ).
? :: c91 .
? :: c90 .
0.1 :: f92 .
0.1 :: f93 .
r94 :- not(f1), c78, not(f79), c91, f92, f93 .
utility( r94 , 0 ).
query( r94 ).
? :: c95 .
r96 :- not(f1), c78, not(f79), c91, f92, not(f93), c95 .
utility( r96 , 0 ).
query( r96 ).
? :: c97 .
0.1 :: f98 .
r99 :- not(f1), c78, not(f79), c91, not(f92), c97, f98 .
utility( r99 , 0 ).
query( r99 ).
? :: c100 .
r101 :- not(f1), c78, not(f79), c91, not(f92), c97, not(f98), c100 .
utility( r101 , 0 ).
query( r101 ).
0.1 :: f102 .
0.1 :: f103 .
r104 :- not(f1), c78, not(f79), c90, f102, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c105 .
r106 :- not(f1), c78, not(f79), c90, f102, not(f103), c105 .
utility( r106 , 0 ).
query( r106 ).
? :: c107 .
0.1 :: f108 .
r109 :- not(f1), c78, not(f79), c90, not(f102), c107, f108 .
utility( r109 , 0 ).
query( r109 ).
? :: c110 .
r111 :- not(f1), c78, not(f79), c90, not(f102), c107, not(f108), c110 .
utility( r111 , 0 ).
query( r111 ).
0.1 :: f112 .
0.1 :: f113 .
0.1 :: f114 .
r115 :- not(f1), c77, f112, f113, f114 .
utility( r115 , 0 ).
query( r115 ).
? :: c116 .
r117 :- not(f1), c77, f112, f113, not(f114), c116 .
utility( r117 , 0 ).
query( r117 ).
? :: c118 .
0.1 :: f119 .
r120 :- not(f1), c77, f112, not(f113), c118, f119 .
utility( r120 , 0 ).
query( r120 ).
? :: c121 .
r122 :- not(f1), c77, f112, not(f113), c118, not(f119), c121 .
utility( r122 , 0 ).
query( r122 ).
? :: c124 .
? :: c123 .
0.1 :: f125 .
0.1 :: f126 .
r127 :- not(f1), c77, not(f112), c124, f125, f126 .
utility( r127 , 0 ).
query( r127 ).
? :: c128 .
r129 :- not(f1), c77, not(f112), c124, f125, not(f126), c128 .
utility( r129 , 0 ).
query( r129 ).
? :: c130 .
0.1 :: f131 .
r132 :- not(f1), c77, not(f112), c124, not(f125), c130, f131 .
utility( r132 , 0 ).
query( r132 ).
? :: c133 .
r134 :- not(f1), c77, not(f112), c124, not(f125), c130, not(f131), c133 .
utility( r134 , 0 ).
query( r134 ).
0.1 :: f135 .
0.1 :: f136 .
r137 :- not(f1), c77, not(f112), c123, f135, f136 .
utility( r137 , 0 ).
query( r137 ).
? :: c140 .
? :: c139 .
? :: c138 .
r141 :- not(f1), c77, not(f112), c123, f135, not(f136), c140 .
utility( r141 , 0 ).
query( r141 ).
r142 :- not(f1), c77, not(f112), c123, f135, not(f136), c139 .
utility( r142 , 0 ).
query( r142 ).
r143 :- not(f1), c77, not(f112), c123, f135, not(f136), c138 .
utility( r143 , 0 ).
query( r143 ).
? :: c145 .
? :: c144 .
0.1 :: f146 .
r147 :- not(f1), c77, not(f112), c123, not(f135), c145, f146 .
utility( r147 , 0 ).
query( r147 ).
? :: c148 .
r149 :- not(f1), c77, not(f112), c123, not(f135), c145, not(f146), c148 .
utility( r149 , 0 ).
query( r149 ).
0.1 :: f150 .
r151 :- not(f1), c77, not(f112), c123, not(f135), c144, f150 .
utility( r151 , 0 ).
query( r151 ).
? :: c154 .
? :: c153 .
? :: c152 .
r155 :- not(f1), c77, not(f112), c123, not(f135), c144, not(f150), c154 .
utility( r155 , 0 ).
query( r155 ).
r156 :- not(f1), c77, not(f112), c123, not(f135), c144, not(f150), c153 .
utility( r156 , 0 ).
query( r156 ).
r157 :- not(f1), c77, not(f112), c123, not(f135), c144, not(f150), c152 .
utility( r157 , 0 ).
query( r157 ).
0.1 :: f158 .
0.1 :: f159 .
0.1 :: f160 .
r161 :- not(f1), c76, f158, f159, f160 .
utility( r161 , 0 ).
query( r161 ).
? :: c163 .
? :: c162 .
r164 :- not(f1), c76, f158, f159, not(f160), c163 .
utility( r164 , 0 ).
query( r164 ).
r165 :- not(f1), c76, f158, f159, not(f160), c162 .
utility( r165 , 0 ).
query( r165 ).
? :: c166 .
0.1 :: f167 .
r168 :- not(f1), c76, f158, not(f159), c166, f167 .
utility( r168 , 0 ).
query( r168 ).
? :: c170 .
? :: c169 .
r171 :- not(f1), c76, f158, not(f159), c166, not(f167), c170 .
utility( r171 , 0 ).
query( r171 ).
r172 :- not(f1), c76, f158, not(f159), c166, not(f167), c169 .
utility( r172 , 0 ).
query( r172 ).
? :: c175 .
? :: c174 .
? :: c173 .
0.1 :: f176 .
0.1 :: f177 .
r178 :- not(f1), c76, not(f158), c175, f176, f177 .
utility( r178 , 0 ).
query( r178 ).
? :: c180 .
? :: c179 .
r181 :- not(f1), c76, not(f158), c175, f176, not(f177), c180 .
utility( r181 , 0 ).
query( r181 ).
r182 :- not(f1), c76, not(f158), c175, f176, not(f177), c179 .
utility( r182 , 0 ).
query( r182 ).
? :: c183 .
0.1 :: f184 .
r185 :- not(f1), c76, not(f158), c175, not(f176), c183, f184 .
utility( r185 , 0 ).
query( r185 ).
? :: c187 .
? :: c186 .
r188 :- not(f1), c76, not(f158), c175, not(f176), c183, not(f184), c187 .
utility( r188 , 0 ).
query( r188 ).
r189 :- not(f1), c76, not(f158), c175, not(f176), c183, not(f184), c186 .
utility( r189 , 0 ).
query( r189 ).
0.1 :: f190 .
0.1 :: f191 .
r192 :- not(f1), c76, not(f158), c174, f190, f191 .
utility( r192 , 0 ).
query( r192 ).
? :: c194 .
? :: c193 .
r195 :- not(f1), c76, not(f158), c174, f190, not(f191), c194 .
utility( r195 , 0 ).
query( r195 ).
r196 :- not(f1), c76, not(f158), c174, f190, not(f191), c193 .
utility( r196 , 0 ).
query( r196 ).
? :: c198 .
? :: c197 .
0.1 :: f199 .
r200 :- not(f1), c76, not(f158), c174, not(f190), c198, f199 .
utility( r200 , 0 ).
query( r200 ).
? :: c202 .
? :: c201 .
r203 :- not(f1), c76, not(f158), c174, not(f190), c198, not(f199), c202 .
utility( r203 , 0 ).
query( r203 ).
r204 :- not(f1), c76, not(f158), c174, not(f190), c198, not(f199), c201 .
utility( r204 , 0 ).
query( r204 ).
0.1 :: f205 .
r206 :- not(f1), c76, not(f158), c174, not(f190), c197, f205 .
utility( r206 , 0 ).
query( r206 ).
? :: c208 .
? :: c207 .
r209 :- not(f1), c76, not(f158), c174, not(f190), c197, not(f205), c208 .
utility( r209 , 0 ).
query( r209 ).
r210 :- not(f1), c76, not(f158), c174, not(f190), c197, not(f205), c207 .
utility( r210 , 0 ).
query( r210 ).
0.1 :: f211 .
0.1 :: f212 .
r213 :- not(f1), c76, not(f158), c173, f211, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c215 .
? :: c214 .
r216 :- not(f1), c76, not(f158), c173, f211, not(f212), c215 .
utility( r216 , 0 ).
query( r216 ).
r217 :- not(f1), c76, not(f158), c173, f211, not(f212), c214 .
utility( r217 , 0 ).
query( r217 ).
? :: c218 .
0.1 :: f219 .
r220 :- not(f1), c76, not(f158), c173, not(f211), c218, f219 .
utility( r220 , 0 ).
query( r220 ).
? :: c222 .
? :: c221 .
r223 :- not(f1), c76, not(f158), c173, not(f211), c218, not(f219), c222 .
utility( r223 , 0 ).
query( r223 ).
r224 :- not(f1), c76, not(f158), c173, not(f211), c218, not(f219), c221 .
utility( r224 , 0 ).
query( r224 ).
