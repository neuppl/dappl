0.1 :: f256 .
0.1 :: f257 .
0.1 :: f258 .
r259 :- f256, f257, f258 .
utility( r259 , 0 ).
query( r259 ).
? :: c261 .
? :: c260 .
r262 :- f256, f257, not(f258), c261 .
utility( r262 , 0 ).
query( r262 ).
r263 :- f256, f257, not(f258), c260 .
utility( r263 , 0 ).
query( r263 ).
? :: c264 .
0.1 :: f265 .
r266 :- f256, not(f257), c264, f265 .
utility( r266 , 0 ).
query( r266 ).
? :: c268 .
? :: c267 .
r269 :- f256, not(f257), c264, not(f265), c268 .
utility( r269 , 0 ).
query( r269 ).
r270 :- f256, not(f257), c264, not(f265), c267 .
utility( r270 , 0 ).
query( r270 ).
? :: c272 .
? :: c271 .
0.1 :: f273 .
0.1 :: f274 .
r275 :- not(f256), c272, f273, f274 .
utility( r275 , 0 ).
query( r275 ).
? :: c277 .
? :: c276 .
r278 :- not(f256), c272, f273, not(f274), c277 .
utility( r278 , 0 ).
query( r278 ).
r279 :- not(f256), c272, f273, not(f274), c276 .
utility( r279 , 0 ).
query( r279 ).
? :: c282 .
? :: c281 .
? :: c280 .
0.1 :: f283 .
r284 :- not(f256), c272, not(f273), c282, f283 .
utility( r284 , 0 ).
query( r284 ).
? :: c286 .
? :: c285 .
r287 :- not(f256), c272, not(f273), c282, not(f283), c286 .
utility( r287 , 0 ).
query( r287 ).
r288 :- not(f256), c272, not(f273), c282, not(f283), c285 .
utility( r288 , 0 ).
query( r288 ).
0.1 :: f289 .
r290 :- not(f256), c272, not(f273), c281, f289 .
utility( r290 , 0 ).
query( r290 ).
? :: c292 .
? :: c291 .
r293 :- not(f256), c272, not(f273), c281, not(f289), c292 .
utility( r293 , 0 ).
query( r293 ).
r294 :- not(f256), c272, not(f273), c281, not(f289), c291 .
utility( r294 , 0 ).
query( r294 ).
r295 :- not(f256), c272, not(f273), c280 .
utility( r295 , 0 ).
query( r295 ).
0.1 :: f296 .
0.1 :: f297 .
r298 :- not(f256), c271, f296, f297 .
utility( r298 , 0 ).
query( r298 ).
? :: c300 .
? :: c299 .
r301 :- not(f256), c271, f296, not(f297), c300 .
utility( r301 , 0 ).
query( r301 ).
r302 :- not(f256), c271, f296, not(f297), c299 .
utility( r302 , 0 ).
query( r302 ).
? :: c303 .
0.1 :: f304 .
r305 :- not(f256), c271, not(f296), c303, f304 .
utility( r305 , 0 ).
query( r305 ).
? :: c307 .
? :: c306 .
r308 :- not(f256), c271, not(f296), c303, not(f304), c307 .
utility( r308 , 0 ).
query( r308 ).
r309 :- not(f256), c271, not(f296), c303, not(f304), c306 .
utility( r309 , 0 ).
query( r309 ).
