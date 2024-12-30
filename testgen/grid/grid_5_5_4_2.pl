0.1 :: f133 .
0.1 :: f134 .
0.1 :: f135 .
0.1 :: f136 .
r137 :- f133, f134, f135, f136 .
utility( r137 , 0 ).
query( r137 ).
? :: c139 .
? :: c138 .
r140 :- f133, f134, f135, not(f136), c139 .
utility( r140 , 0 ).
query( r140 ).
r141 :- f133, f134, f135, not(f136), c138 .
utility( r141 , 0 ).
query( r141 ).
? :: c143 .
? :: c142 .
0.1 :: f144 .
r145 :- f133, f134, not(f135), c143, f144 .
utility( r145 , 0 ).
query( r145 ).
? :: c146 .
r147 :- f133, f134, not(f135), c143, not(f144), c146 .
utility( r147 , 0 ).
query( r147 ).
0.1 :: f148 .
r149 :- f133, f134, not(f135), c142, f148 .
utility( r149 , 0 ).
query( r149 ).
? :: c151 .
? :: c150 .
r152 :- f133, f134, not(f135), c142, not(f148), c151 .
utility( r152 , 0 ).
query( r152 ).
r153 :- f133, f134, not(f135), c142, not(f148), c150 .
utility( r153 , 0 ).
query( r153 ).
? :: c155 .
? :: c154 .
0.1 :: f156 .
0.1 :: f157 .
r158 :- f133, not(f134), c155, f156, f157 .
utility( r158 , 0 ).
query( r158 ).
? :: c159 .
r160 :- f133, not(f134), c155, f156, not(f157), c159 .
utility( r160 , 0 ).
query( r160 ).
? :: c161 .
0.1 :: f162 .
r163 :- f133, not(f134), c155, not(f156), c161, f162 .
utility( r163 , 0 ).
query( r163 ).
? :: c164 .
r165 :- f133, not(f134), c155, not(f156), c161, not(f162), c164 .
utility( r165 , 0 ).
query( r165 ).
0.1 :: f166 .
0.1 :: f167 .
r168 :- f133, not(f134), c154, f166, f167 .
utility( r168 , 0 ).
query( r168 ).
? :: c170 .
? :: c169 .
r171 :- f133, not(f134), c154, f166, not(f167), c170 .
utility( r171 , 0 ).
query( r171 ).
r172 :- f133, not(f134), c154, f166, not(f167), c169 .
utility( r172 , 0 ).
query( r172 ).
? :: c174 .
? :: c173 .
0.1 :: f175 .
r176 :- f133, not(f134), c154, not(f166), c174, f175 .
utility( r176 , 0 ).
query( r176 ).
? :: c177 .
r178 :- f133, not(f134), c154, not(f166), c174, not(f175), c177 .
utility( r178 , 0 ).
query( r178 ).
0.1 :: f179 .
r180 :- f133, not(f134), c154, not(f166), c173, f179 .
utility( r180 , 0 ).
query( r180 ).
? :: c182 .
? :: c181 .
r183 :- f133, not(f134), c154, not(f166), c173, not(f179), c182 .
utility( r183 , 0 ).
query( r183 ).
r184 :- f133, not(f134), c154, not(f166), c173, not(f179), c181 .
utility( r184 , 0 ).
query( r184 ).
? :: c187 .
? :: c186 .
? :: c185 .
0.1 :: f188 .
0.1 :: f189 .
0.1 :: f190 .
r191 :- not(f133), c187, f188, f189, f190 .
utility( r191 , 0 ).
query( r191 ).
? :: c193 .
? :: c192 .
r194 :- not(f133), c187, f188, f189, not(f190), c193 .
utility( r194 , 0 ).
query( r194 ).
r195 :- not(f133), c187, f188, f189, not(f190), c192 .
utility( r195 , 0 ).
query( r195 ).
? :: c196 .
0.1 :: f197 .
r198 :- not(f133), c187, f188, not(f189), c196, f197 .
utility( r198 , 0 ).
query( r198 ).
? :: c200 .
? :: c199 .
r201 :- not(f133), c187, f188, not(f189), c196, not(f197), c200 .
utility( r201 , 0 ).
query( r201 ).
r202 :- not(f133), c187, f188, not(f189), c196, not(f197), c199 .
utility( r202 , 0 ).
query( r202 ).
? :: c203 .
0.1 :: f204 .
0.1 :: f205 .
r206 :- not(f133), c187, not(f188), c203, f204, f205 .
utility( r206 , 0 ).
query( r206 ).
? :: c208 .
? :: c207 .
r209 :- not(f133), c187, not(f188), c203, f204, not(f205), c208 .
utility( r209 , 0 ).
query( r209 ).
r210 :- not(f133), c187, not(f188), c203, f204, not(f205), c207 .
utility( r210 , 0 ).
query( r210 ).
? :: c211 .
0.1 :: f212 .
r213 :- not(f133), c187, not(f188), c203, not(f204), c211, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c215 .
? :: c214 .
r216 :- not(f133), c187, not(f188), c203, not(f204), c211, not(f212), c215 .
utility( r216 , 0 ).
query( r216 ).
r217 :- not(f133), c187, not(f188), c203, not(f204), c211, not(f212), c214 .
utility( r217 , 0 ).
query( r217 ).
r218 :- not(f133), c186 .
utility( r218 , 0 ).
query( r218 ).
0.1 :: f219 .
0.1 :: f220 .
0.1 :: f221 .
r222 :- not(f133), c185, f219, f220, f221 .
utility( r222 , 0 ).
query( r222 ).
? :: c223 .
r224 :- not(f133), c185, f219, f220, not(f221), c223 .
utility( r224 , 0 ).
query( r224 ).
? :: c226 .
? :: c225 .
0.1 :: f227 .
r228 :- not(f133), c185, f219, not(f220), c226, f227 .
utility( r228 , 0 ).
query( r228 ).
? :: c229 .
r230 :- not(f133), c185, f219, not(f220), c226, not(f227), c229 .
utility( r230 , 0 ).
query( r230 ).
0.1 :: f231 .
r232 :- not(f133), c185, f219, not(f220), c225, f231 .
utility( r232 , 0 ).
query( r232 ).
? :: c234 .
? :: c233 .
r235 :- not(f133), c185, f219, not(f220), c225, not(f231), c234 .
utility( r235 , 0 ).
query( r235 ).
r236 :- not(f133), c185, f219, not(f220), c225, not(f231), c233 .
utility( r236 , 0 ).
query( r236 ).
? :: c238 .
? :: c237 .
0.1 :: f239 .
0.1 :: f240 .
r241 :- not(f133), c185, not(f219), c238, f239, f240 .
utility( r241 , 0 ).
query( r241 ).
? :: c242 .
r243 :- not(f133), c185, not(f219), c238, f239, not(f240), c242 .
utility( r243 , 0 ).
query( r243 ).
? :: c244 .
0.1 :: f245 .
r246 :- not(f133), c185, not(f219), c238, not(f239), c244, f245 .
utility( r246 , 0 ).
query( r246 ).
? :: c247 .
r248 :- not(f133), c185, not(f219), c238, not(f239), c244, not(f245), c247 .
utility( r248 , 0 ).
query( r248 ).
0.1 :: f249 .
0.1 :: f250 .
r251 :- not(f133), c185, not(f219), c237, f249, f250 .
utility( r251 , 0 ).
query( r251 ).
? :: c252 .
r253 :- not(f133), c185, not(f219), c237, f249, not(f250), c252 .
utility( r253 , 0 ).
query( r253 ).
? :: c255 .
? :: c254 .
0.1 :: f256 .
r257 :- not(f133), c185, not(f219), c237, not(f249), c255, f256 .
utility( r257 , 0 ).
query( r257 ).
? :: c258 .
r259 :- not(f133), c185, not(f219), c237, not(f249), c255, not(f256), c258 .
utility( r259 , 0 ).
query( r259 ).
0.1 :: f260 .
r261 :- not(f133), c185, not(f219), c237, not(f249), c254, f260 .
utility( r261 , 0 ).
query( r261 ).
? :: c263 .
? :: c262 .
r264 :- not(f133), c185, not(f219), c237, not(f249), c254, not(f260), c263 .
utility( r264 , 0 ).
query( r264 ).
r265 :- not(f133), c185, not(f219), c237, not(f249), c254, not(f260), c262 .
utility( r265 , 0 ).
query( r265 ).
