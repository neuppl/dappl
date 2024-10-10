0.1 :: f248 .
0.1 :: f249 .
0.1 :: f250 .
r251 :- f248, f249, f250 .
utility( r251 , 0 ).
query( r251 ).
? :: c253 .
? :: c252 .
r254 :- f248, f249, not(f250), c253 .
utility( r254 , 0 ).
query( r254 ).
r255 :- f248, f249, not(f250), c252 .
utility( r255 , 0 ).
query( r255 ).
? :: c257 .
? :: c256 .
0.1 :: f258 .
r259 :- f248, not(f249), c257, f258 .
utility( r259 , 0 ).
query( r259 ).
? :: c261 .
? :: c260 .
r262 :- f248, not(f249), c257, not(f258), c261 .
utility( r262 , 0 ).
query( r262 ).
r263 :- f248, not(f249), c257, not(f258), c260 .
utility( r263 , 0 ).
query( r263 ).
0.1 :: f264 .
r265 :- f248, not(f249), c256, f264 .
utility( r265 , 0 ).
query( r265 ).
? :: c267 .
? :: c266 .
r268 :- f248, not(f249), c256, not(f264), c267 .
utility( r268 , 0 ).
query( r268 ).
r269 :- f248, not(f249), c256, not(f264), c266 .
utility( r269 , 0 ).
query( r269 ).
? :: c270 .
0.1 :: f271 .
0.1 :: f272 .
r273 :- not(f248), c270, f271, f272 .
utility( r273 , 0 ).
query( r273 ).
? :: c275 .
? :: c274 .
r276 :- not(f248), c270, f271, not(f272), c275 .
utility( r276 , 0 ).
query( r276 ).
r277 :- not(f248), c270, f271, not(f272), c274 .
utility( r277 , 0 ).
query( r277 ).
? :: c279 .
? :: c278 .
0.1 :: f280 .
r281 :- not(f248), c270, not(f271), c279, f280 .
utility( r281 , 0 ).
query( r281 ).
? :: c283 .
? :: c282 .
r284 :- not(f248), c270, not(f271), c279, not(f280), c283 .
utility( r284 , 0 ).
query( r284 ).
r285 :- not(f248), c270, not(f271), c279, not(f280), c282 .
utility( r285 , 0 ).
query( r285 ).
0.1 :: f286 .
r287 :- not(f248), c270, not(f271), c278, f286 .
utility( r287 , 0 ).
query( r287 ).
? :: c289 .
? :: c288 .
r290 :- not(f248), c270, not(f271), c278, not(f286), c289 .
utility( r290 , 0 ).
query( r290 ).
r291 :- not(f248), c270, not(f271), c278, not(f286), c288 .
utility( r291 , 0 ).
query( r291 ).
