0.1 :: f250 .
0.1 :: f251 .
0.1 :: f252 .
r253 :- f250, f251, f252 .
utility( r253 , 0 ).
query( r253 ).
? :: c255 .
? :: c254 .
r256 :- f250, f251, not(f252), c255 .
utility( r256 , 0 ).
query( r256 ).
r257 :- f250, f251, not(f252), c254 .
utility( r257 , 0 ).
query( r257 ).
? :: c260 .
? :: c259 .
? :: c258 .
0.1 :: f261 .
r262 :- f250, not(f251), c260, f261 .
utility( r262 , 0 ).
query( r262 ).
? :: c264 .
? :: c263 .
r265 :- f250, not(f251), c260, not(f261), c264 .
utility( r265 , 0 ).
query( r265 ).
r266 :- f250, not(f251), c260, not(f261), c263 .
utility( r266 , 0 ).
query( r266 ).
0.1 :: f267 .
r268 :- f250, not(f251), c259, f267 .
utility( r268 , 0 ).
query( r268 ).
? :: c270 .
? :: c269 .
r271 :- f250, not(f251), c259, not(f267), c270 .
utility( r271 , 0 ).
query( r271 ).
r272 :- f250, not(f251), c259, not(f267), c269 .
utility( r272 , 0 ).
query( r272 ).
0.1 :: f273 .
r274 :- f250, not(f251), c258, f273 .
utility( r274 , 0 ).
query( r274 ).
? :: c276 .
? :: c275 .
r277 :- f250, not(f251), c258, not(f273), c276 .
utility( r277 , 0 ).
query( r277 ).
r278 :- f250, not(f251), c258, not(f273), c275 .
utility( r278 , 0 ).
query( r278 ).
? :: c281 .
? :: c280 .
? :: c279 .
0.1 :: f282 .
0.1 :: f283 .
r284 :- not(f250), c281, f282, f283 .
utility( r284 , 0 ).
query( r284 ).
? :: c286 .
? :: c285 .
r287 :- not(f250), c281, f282, not(f283), c286 .
utility( r287 , 0 ).
query( r287 ).
r288 :- not(f250), c281, f282, not(f283), c285 .
utility( r288 , 0 ).
query( r288 ).
? :: c290 .
? :: c289 .
0.1 :: f291 .
r292 :- not(f250), c281, not(f282), c290, f291 .
utility( r292 , 0 ).
query( r292 ).
? :: c293 .
r294 :- not(f250), c281, not(f282), c290, not(f291), c293 .
utility( r294 , 0 ).
query( r294 ).
0.1 :: f295 .
r296 :- not(f250), c281, not(f282), c289, f295 .
utility( r296 , 0 ).
query( r296 ).
? :: c298 .
? :: c297 .
r299 :- not(f250), c281, not(f282), c289, not(f295), c298 .
utility( r299 , 0 ).
query( r299 ).
r300 :- not(f250), c281, not(f282), c289, not(f295), c297 .
utility( r300 , 0 ).
query( r300 ).
0.1 :: f301 .
0.1 :: f302 .
r303 :- not(f250), c280, f301, f302 .
utility( r303 , 0 ).
query( r303 ).
? :: c304 .
r305 :- not(f250), c280, f301, not(f302), c304 .
utility( r305 , 0 ).
query( r305 ).
? :: c307 .
? :: c306 .
0.1 :: f308 .
r309 :- not(f250), c280, not(f301), c307, f308 .
utility( r309 , 0 ).
query( r309 ).
? :: c310 .
r311 :- not(f250), c280, not(f301), c307, not(f308), c310 .
utility( r311 , 0 ).
query( r311 ).
0.1 :: f312 .
r313 :- not(f250), c280, not(f301), c306, f312 .
utility( r313 , 0 ).
query( r313 ).
? :: c315 .
? :: c314 .
r316 :- not(f250), c280, not(f301), c306, not(f312), c315 .
utility( r316 , 0 ).
query( r316 ).
r317 :- not(f250), c280, not(f301), c306, not(f312), c314 .
utility( r317 , 0 ).
query( r317 ).
0.1 :: f318 .
0.1 :: f319 .
r320 :- not(f250), c279, f318, f319 .
utility( r320 , 0 ).
query( r320 ).
? :: c322 .
? :: c321 .
r323 :- not(f250), c279, f318, not(f319), c322 .
utility( r323 , 0 ).
query( r323 ).
r324 :- not(f250), c279, f318, not(f319), c321 .
utility( r324 , 0 ).
query( r324 ).
? :: c327 .
? :: c326 .
? :: c325 .
0.1 :: f328 .
r329 :- not(f250), c279, not(f318), c327, f328 .
utility( r329 , 0 ).
query( r329 ).
? :: c331 .
? :: c330 .
r332 :- not(f250), c279, not(f318), c327, not(f328), c331 .
utility( r332 , 0 ).
query( r332 ).
r333 :- not(f250), c279, not(f318), c327, not(f328), c330 .
utility( r333 , 0 ).
query( r333 ).
0.1 :: f334 .
r335 :- not(f250), c279, not(f318), c326, f334 .
utility( r335 , 0 ).
query( r335 ).
? :: c337 .
? :: c336 .
r338 :- not(f250), c279, not(f318), c326, not(f334), c337 .
utility( r338 , 0 ).
query( r338 ).
r339 :- not(f250), c279, not(f318), c326, not(f334), c336 .
utility( r339 , 0 ).
query( r339 ).
0.1 :: f340 .
r341 :- not(f250), c279, not(f318), c325, f340 .
utility( r341 , 0 ).
query( r341 ).
? :: c343 .
? :: c342 .
r344 :- not(f250), c279, not(f318), c325, not(f340), c343 .
utility( r344 , 0 ).
query( r344 ).
r345 :- not(f250), c279, not(f318), c325, not(f340), c342 .
utility( r345 , 0 ).
query( r345 ).
