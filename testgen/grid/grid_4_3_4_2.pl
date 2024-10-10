0.1 :: f98 .
0.1 :: f99 .
0.1 :: f100 .
0.1 :: f101 .
r102 :- f98, f99, f100, f101 .
utility( r102 , 0 ).
query( r102 ).
? :: c104 .
? :: c103 .
r105 :- f98, f99, f100, not(f101), c104 .
utility( r105 , 0 ).
query( r105 ).
r106 :- f98, f99, f100, not(f101), c103 .
utility( r106 , 0 ).
query( r106 ).
? :: c107 .
0.1 :: f108 .
r109 :- f98, f99, not(f100), c107, f108 .
utility( r109 , 0 ).
query( r109 ).
? :: c111 .
? :: c110 .
r112 :- f98, f99, not(f100), c107, not(f108), c111 .
utility( r112 , 0 ).
query( r112 ).
r113 :- f98, f99, not(f100), c107, not(f108), c110 .
utility( r113 , 0 ).
query( r113 ).
? :: c115 .
? :: c114 .
0.1 :: f116 .
0.1 :: f117 .
r118 :- f98, not(f99), c115, f116, f117 .
utility( r118 , 0 ).
query( r118 ).
? :: c120 .
? :: c119 .
r121 :- f98, not(f99), c115, f116, not(f117), c120 .
utility( r121 , 0 ).
query( r121 ).
r122 :- f98, not(f99), c115, f116, not(f117), c119 .
utility( r122 , 0 ).
query( r122 ).
? :: c123 .
0.1 :: f124 .
r125 :- f98, not(f99), c115, not(f116), c123, f124 .
utility( r125 , 0 ).
query( r125 ).
? :: c127 .
? :: c126 .
r128 :- f98, not(f99), c115, not(f116), c123, not(f124), c127 .
utility( r128 , 0 ).
query( r128 ).
r129 :- f98, not(f99), c115, not(f116), c123, not(f124), c126 .
utility( r129 , 0 ).
query( r129 ).
0.1 :: f130 .
0.1 :: f131 .
r132 :- f98, not(f99), c114, f130, f131 .
utility( r132 , 0 ).
query( r132 ).
? :: c134 .
? :: c133 .
r135 :- f98, not(f99), c114, f130, not(f131), c134 .
utility( r135 , 0 ).
query( r135 ).
r136 :- f98, not(f99), c114, f130, not(f131), c133 .
utility( r136 , 0 ).
query( r136 ).
? :: c138 .
? :: c137 .
0.1 :: f139 .
r140 :- f98, not(f99), c114, not(f130), c138, f139 .
utility( r140 , 0 ).
query( r140 ).
? :: c142 .
? :: c141 .
r143 :- f98, not(f99), c114, not(f130), c138, not(f139), c142 .
utility( r143 , 0 ).
query( r143 ).
r144 :- f98, not(f99), c114, not(f130), c138, not(f139), c141 .
utility( r144 , 0 ).
query( r144 ).
0.1 :: f145 .
r146 :- f98, not(f99), c114, not(f130), c137, f145 .
utility( r146 , 0 ).
query( r146 ).
? :: c148 .
? :: c147 .
r149 :- f98, not(f99), c114, not(f130), c137, not(f145), c148 .
utility( r149 , 0 ).
query( r149 ).
r150 :- f98, not(f99), c114, not(f130), c137, not(f145), c147 .
utility( r150 , 0 ).
query( r150 ).
? :: c152 .
? :: c151 .
0.1 :: f153 .
0.1 :: f154 .
0.1 :: f155 .
r156 :- not(f98), c152, f153, f154, f155 .
utility( r156 , 0 ).
query( r156 ).
? :: c158 .
? :: c157 .
r159 :- not(f98), c152, f153, f154, not(f155), c158 .
utility( r159 , 0 ).
query( r159 ).
r160 :- not(f98), c152, f153, f154, not(f155), c157 .
utility( r160 , 0 ).
query( r160 ).
? :: c161 .
0.1 :: f162 .
r163 :- not(f98), c152, f153, not(f154), c161, f162 .
utility( r163 , 0 ).
query( r163 ).
? :: c165 .
? :: c164 .
r166 :- not(f98), c152, f153, not(f154), c161, not(f162), c165 .
utility( r166 , 0 ).
query( r166 ).
r167 :- not(f98), c152, f153, not(f154), c161, not(f162), c164 .
utility( r167 , 0 ).
query( r167 ).
? :: c169 .
? :: c168 .
0.1 :: f170 .
0.1 :: f171 .
r172 :- not(f98), c152, not(f153), c169, f170, f171 .
utility( r172 , 0 ).
query( r172 ).
? :: c174 .
? :: c173 .
r175 :- not(f98), c152, not(f153), c169, f170, not(f171), c174 .
utility( r175 , 0 ).
query( r175 ).
r176 :- not(f98), c152, not(f153), c169, f170, not(f171), c173 .
utility( r176 , 0 ).
query( r176 ).
? :: c177 .
0.1 :: f178 .
r179 :- not(f98), c152, not(f153), c169, not(f170), c177, f178 .
utility( r179 , 0 ).
query( r179 ).
? :: c181 .
? :: c180 .
r182 :- not(f98), c152, not(f153), c169, not(f170), c177, not(f178), c181 .
utility( r182 , 0 ).
query( r182 ).
r183 :- not(f98), c152, not(f153), c169, not(f170), c177, not(f178), c180 .
utility( r183 , 0 ).
query( r183 ).
0.1 :: f184 .
0.1 :: f185 .
r186 :- not(f98), c152, not(f153), c168, f184, f185 .
utility( r186 , 0 ).
query( r186 ).
? :: c188 .
? :: c187 .
r189 :- not(f98), c152, not(f153), c168, f184, not(f185), c188 .
utility( r189 , 0 ).
query( r189 ).
r190 :- not(f98), c152, not(f153), c168, f184, not(f185), c187 .
utility( r190 , 0 ).
query( r190 ).
? :: c192 .
? :: c191 .
0.1 :: f193 .
r194 :- not(f98), c152, not(f153), c168, not(f184), c192, f193 .
utility( r194 , 0 ).
query( r194 ).
? :: c196 .
? :: c195 .
r197 :- not(f98), c152, not(f153), c168, not(f184), c192, not(f193), c196 .
utility( r197 , 0 ).
query( r197 ).
r198 :- not(f98), c152, not(f153), c168, not(f184), c192, not(f193), c195 .
utility( r198 , 0 ).
query( r198 ).
0.1 :: f199 .
r200 :- not(f98), c152, not(f153), c168, not(f184), c191, f199 .
utility( r200 , 0 ).
query( r200 ).
? :: c202 .
? :: c201 .
r203 :- not(f98), c152, not(f153), c168, not(f184), c191, not(f199), c202 .
utility( r203 , 0 ).
query( r203 ).
r204 :- not(f98), c152, not(f153), c168, not(f184), c191, not(f199), c201 .
utility( r204 , 0 ).
query( r204 ).
0.1 :: f205 .
0.1 :: f206 .
0.1 :: f207 .
r208 :- not(f98), c151, f205, f206, f207 .
utility( r208 , 0 ).
query( r208 ).
? :: c210 .
? :: c209 .
r211 :- not(f98), c151, f205, f206, not(f207), c210 .
utility( r211 , 0 ).
query( r211 ).
r212 :- not(f98), c151, f205, f206, not(f207), c209 .
utility( r212 , 0 ).
query( r212 ).
? :: c214 .
? :: c213 .
0.1 :: f215 .
r216 :- not(f98), c151, f205, not(f206), c214, f215 .
utility( r216 , 0 ).
query( r216 ).
? :: c219 .
? :: c218 .
? :: c217 .
r220 :- not(f98), c151, f205, not(f206), c214, not(f215), c219 .
utility( r220 , 0 ).
query( r220 ).
r221 :- not(f98), c151, f205, not(f206), c214, not(f215), c218 .
utility( r221 , 0 ).
query( r221 ).
r222 :- not(f98), c151, f205, not(f206), c214, not(f215), c217 .
utility( r222 , 0 ).
query( r222 ).
0.1 :: f223 .
r224 :- not(f98), c151, f205, not(f206), c213, f223 .
utility( r224 , 0 ).
query( r224 ).
? :: c226 .
? :: c225 .
r227 :- not(f98), c151, f205, not(f206), c213, not(f223), c226 .
utility( r227 , 0 ).
query( r227 ).
r228 :- not(f98), c151, f205, not(f206), c213, not(f223), c225 .
utility( r228 , 0 ).
query( r228 ).
? :: c229 .
0.1 :: f230 .
0.1 :: f231 .
r232 :- not(f98), c151, not(f205), c229, f230, f231 .
utility( r232 , 0 ).
query( r232 ).
? :: c235 .
? :: c234 .
? :: c233 .
r236 :- not(f98), c151, not(f205), c229, f230, not(f231), c235 .
utility( r236 , 0 ).
query( r236 ).
r237 :- not(f98), c151, not(f205), c229, f230, not(f231), c234 .
utility( r237 , 0 ).
query( r237 ).
r238 :- not(f98), c151, not(f205), c229, f230, not(f231), c233 .
utility( r238 , 0 ).
query( r238 ).
? :: c240 .
? :: c239 .
0.1 :: f241 .
r242 :- not(f98), c151, not(f205), c229, not(f230), c240, f241 .
utility( r242 , 0 ).
query( r242 ).
? :: c245 .
? :: c244 .
? :: c243 .
r246 :- not(f98), c151, not(f205), c229, not(f230), c240, not(f241), c245 .
utility( r246 , 0 ).
query( r246 ).
r247 :- not(f98), c151, not(f205), c229, not(f230), c240, not(f241), c244 .
utility( r247 , 0 ).
query( r247 ).
r248 :- not(f98), c151, not(f205), c229, not(f230), c240, not(f241), c243 .
utility( r248 , 0 ).
query( r248 ).
0.1 :: f249 .
r250 :- not(f98), c151, not(f205), c229, not(f230), c239, f249 .
utility( r250 , 0 ).
query( r250 ).
? :: c252 .
? :: c251 .
r253 :- not(f98), c151, not(f205), c229, not(f230), c239, not(f249), c252 .
utility( r253 , 0 ).
query( r253 ).
r254 :- not(f98), c151, not(f205), c229, not(f230), c239, not(f249), c251 .
utility( r254 , 0 ).
query( r254 ).
