0.1 :: f179 .
0.1 :: f180 .
0.1 :: f181 .
0.1 :: f182 .
r183 :- f179, f180, f181, f182 .
utility( r183 , 0 ).
query( r183 ).
? :: c185 .
? :: c184 .
r186 :- f179, f180, f181, not(f182), c185 .
utility( r186 , 0 ).
query( r186 ).
r187 :- f179, f180, f181, not(f182), c184 .
utility( r187 , 0 ).
query( r187 ).
? :: c188 .
0.1 :: f189 .
r190 :- f179, f180, not(f181), c188, f189 .
utility( r190 , 0 ).
query( r190 ).
? :: c192 .
? :: c191 .
r193 :- f179, f180, not(f181), c188, not(f189), c192 .
utility( r193 , 0 ).
query( r193 ).
r194 :- f179, f180, not(f181), c188, not(f189), c191 .
utility( r194 , 0 ).
query( r194 ).
? :: c196 .
? :: c195 .
0.1 :: f197 .
0.1 :: f198 .
r199 :- f179, not(f180), c196, f197, f198 .
utility( r199 , 0 ).
query( r199 ).
? :: c201 .
? :: c200 .
r202 :- f179, not(f180), c196, f197, not(f198), c201 .
utility( r202 , 0 ).
query( r202 ).
r203 :- f179, not(f180), c196, f197, not(f198), c200 .
utility( r203 , 0 ).
query( r203 ).
? :: c204 .
0.1 :: f205 .
r206 :- f179, not(f180), c196, not(f197), c204, f205 .
utility( r206 , 0 ).
query( r206 ).
? :: c208 .
? :: c207 .
r209 :- f179, not(f180), c196, not(f197), c204, not(f205), c208 .
utility( r209 , 0 ).
query( r209 ).
r210 :- f179, not(f180), c196, not(f197), c204, not(f205), c207 .
utility( r210 , 0 ).
query( r210 ).
0.1 :: f211 .
0.1 :: f212 .
r213 :- f179, not(f180), c195, f211, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c215 .
? :: c214 .
r216 :- f179, not(f180), c195, f211, not(f212), c215 .
utility( r216 , 0 ).
query( r216 ).
r217 :- f179, not(f180), c195, f211, not(f212), c214 .
utility( r217 , 0 ).
query( r217 ).
? :: c218 .
0.1 :: f219 .
r220 :- f179, not(f180), c195, not(f211), c218, f219 .
utility( r220 , 0 ).
query( r220 ).
? :: c222 .
? :: c221 .
r223 :- f179, not(f180), c195, not(f211), c218, not(f219), c222 .
utility( r223 , 0 ).
query( r223 ).
r224 :- f179, not(f180), c195, not(f211), c218, not(f219), c221 .
utility( r224 , 0 ).
query( r224 ).
? :: c226 .
? :: c225 .
0.1 :: f227 .
0.1 :: f228 .
0.1 :: f229 .
r230 :- not(f179), c226, f227, f228, f229 .
utility( r230 , 0 ).
query( r230 ).
? :: c232 .
? :: c231 .
r233 :- not(f179), c226, f227, f228, not(f229), c232 .
utility( r233 , 0 ).
query( r233 ).
r234 :- not(f179), c226, f227, f228, not(f229), c231 .
utility( r234 , 0 ).
query( r234 ).
? :: c235 .
0.1 :: f236 .
r237 :- not(f179), c226, f227, not(f228), c235, f236 .
utility( r237 , 0 ).
query( r237 ).
? :: c239 .
? :: c238 .
r240 :- not(f179), c226, f227, not(f228), c235, not(f236), c239 .
utility( r240 , 0 ).
query( r240 ).
r241 :- not(f179), c226, f227, not(f228), c235, not(f236), c238 .
utility( r241 , 0 ).
query( r241 ).
? :: c243 .
? :: c242 .
0.1 :: f244 .
0.1 :: f245 .
r246 :- not(f179), c226, not(f227), c243, f244, f245 .
utility( r246 , 0 ).
query( r246 ).
? :: c248 .
? :: c247 .
r249 :- not(f179), c226, not(f227), c243, f244, not(f245), c248 .
utility( r249 , 0 ).
query( r249 ).
r250 :- not(f179), c226, not(f227), c243, f244, not(f245), c247 .
utility( r250 , 0 ).
query( r250 ).
? :: c251 .
0.1 :: f252 .
r253 :- not(f179), c226, not(f227), c243, not(f244), c251, f252 .
utility( r253 , 0 ).
query( r253 ).
? :: c255 .
? :: c254 .
r256 :- not(f179), c226, not(f227), c243, not(f244), c251, not(f252), c255 .
utility( r256 , 0 ).
query( r256 ).
r257 :- not(f179), c226, not(f227), c243, not(f244), c251, not(f252), c254 .
utility( r257 , 0 ).
query( r257 ).
0.1 :: f258 .
0.1 :: f259 .
r260 :- not(f179), c226, not(f227), c242, f258, f259 .
utility( r260 , 0 ).
query( r260 ).
? :: c262 .
? :: c261 .
r263 :- not(f179), c226, not(f227), c242, f258, not(f259), c262 .
utility( r263 , 0 ).
query( r263 ).
r264 :- not(f179), c226, not(f227), c242, f258, not(f259), c261 .
utility( r264 , 0 ).
query( r264 ).
? :: c265 .
0.1 :: f266 .
r267 :- not(f179), c226, not(f227), c242, not(f258), c265, f266 .
utility( r267 , 0 ).
query( r267 ).
? :: c269 .
? :: c268 .
r270 :- not(f179), c226, not(f227), c242, not(f258), c265, not(f266), c269 .
utility( r270 , 0 ).
query( r270 ).
r271 :- not(f179), c226, not(f227), c242, not(f258), c265, not(f266), c268 .
utility( r271 , 0 ).
query( r271 ).
0.1 :: f272 .
0.1 :: f273 .
0.1 :: f274 .
r275 :- not(f179), c225, f272, f273, f274 .
utility( r275 , 0 ).
query( r275 ).
? :: c276 .
r277 :- not(f179), c225, f272, f273, not(f274), c276 .
utility( r277 , 0 ).
query( r277 ).
? :: c278 .
0.1 :: f279 .
r280 :- not(f179), c225, f272, not(f273), c278, f279 .
utility( r280 , 0 ).
query( r280 ).
? :: c281 .
r282 :- not(f179), c225, f272, not(f273), c278, not(f279), c281 .
utility( r282 , 0 ).
query( r282 ).
? :: c284 .
? :: c283 .
0.1 :: f285 .
0.1 :: f286 .
r287 :- not(f179), c225, not(f272), c284, f285, f286 .
utility( r287 , 0 ).
query( r287 ).
? :: c288 .
r289 :- not(f179), c225, not(f272), c284, f285, not(f286), c288 .
utility( r289 , 0 ).
query( r289 ).
? :: c290 .
0.1 :: f291 .
r292 :- not(f179), c225, not(f272), c284, not(f285), c290, f291 .
utility( r292 , 0 ).
query( r292 ).
? :: c293 .
r294 :- not(f179), c225, not(f272), c284, not(f285), c290, not(f291), c293 .
utility( r294 , 0 ).
query( r294 ).
0.1 :: f295 .
0.1 :: f296 .
r297 :- not(f179), c225, not(f272), c283, f295, f296 .
utility( r297 , 0 ).
query( r297 ).
? :: c299 .
? :: c298 .
r300 :- not(f179), c225, not(f272), c283, f295, not(f296), c299 .
utility( r300 , 0 ).
query( r300 ).
r301 :- not(f179), c225, not(f272), c283, f295, not(f296), c298 .
utility( r301 , 0 ).
query( r301 ).
? :: c303 .
? :: c302 .
0.1 :: f304 .
r305 :- not(f179), c225, not(f272), c283, not(f295), c303, f304 .
utility( r305 , 0 ).
query( r305 ).
? :: c306 .
r307 :- not(f179), c225, not(f272), c283, not(f295), c303, not(f304), c306 .
utility( r307 , 0 ).
query( r307 ).
0.1 :: f308 .
r309 :- not(f179), c225, not(f272), c283, not(f295), c302, f308 .
utility( r309 , 0 ).
query( r309 ).
? :: c311 .
? :: c310 .
r312 :- not(f179), c225, not(f272), c283, not(f295), c302, not(f308), c311 .
utility( r312 , 0 ).
query( r312 ).
r313 :- not(f179), c225, not(f272), c283, not(f295), c302, not(f308), c310 .
utility( r313 , 0 ).
query( r313 ).
