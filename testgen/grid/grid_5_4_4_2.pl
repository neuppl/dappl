0.1 :: f225 .
0.1 :: f226 .
0.1 :: f227 .
r228 :- f225, f226, f227 .
utility( r228 , 0 ).
query( r228 ).
? :: c229 .
r230 :- f225, f226, not(f227), c229 .
utility( r230 , 0 ).
query( r230 ).
? :: c232 .
? :: c231 .
0.1 :: f233 .
r234 :- f225, not(f226), c232, f233 .
utility( r234 , 0 ).
query( r234 ).
? :: c235 .
r236 :- f225, not(f226), c232, not(f233), c235 .
utility( r236 , 0 ).
query( r236 ).
0.1 :: f237 .
0.1 :: f238 .
r239 :- f225, not(f226), c231, f237, f238 .
utility( r239 , 0 ).
query( r239 ).
? :: c241 .
? :: c240 .
r242 :- f225, not(f226), c231, f237, not(f238), c241 .
utility( r242 , 0 ).
query( r242 ).
r243 :- f225, not(f226), c231, f237, not(f238), c240 .
utility( r243 , 0 ).
query( r243 ).
? :: c245 .
? :: c244 .
r246 :- f225, not(f226), c231, not(f237), c245 .
utility( r246 , 0 ).
query( r246 ).
0.1 :: f247 .
r248 :- f225, not(f226), c231, not(f237), c244, f247 .
utility( r248 , 0 ).
query( r248 ).
? :: c250 .
? :: c249 .
r251 :- f225, not(f226), c231, not(f237), c244, not(f247), c250 .
utility( r251 , 0 ).
query( r251 ).
r252 :- f225, not(f226), c231, not(f237), c244, not(f247), c249 .
utility( r252 , 0 ).
query( r252 ).
? :: c254 .
? :: c253 .
0.1 :: f255 .
0.1 :: f256 .
0.1 :: f257 .
r258 :- not(f225), c254, f255, f256, f257 .
utility( r258 , 0 ).
query( r258 ).
? :: c261 .
? :: c260 .
? :: c259 .
r262 :- not(f225), c254, f255, f256, not(f257), c261 .
utility( r262 , 0 ).
query( r262 ).
r263 :- not(f225), c254, f255, f256, not(f257), c260 .
utility( r263 , 0 ).
query( r263 ).
r264 :- not(f225), c254, f255, f256, not(f257), c259 .
utility( r264 , 0 ).
query( r264 ).
? :: c266 .
? :: c265 .
0.1 :: f267 .
r268 :- not(f225), c254, f255, not(f256), c266, f267 .
utility( r268 , 0 ).
query( r268 ).
? :: c269 .
r270 :- not(f225), c254, f255, not(f256), c266, not(f267), c269 .
utility( r270 , 0 ).
query( r270 ).
0.1 :: f271 .
r272 :- not(f225), c254, f255, not(f256), c265, f271 .
utility( r272 , 0 ).
query( r272 ).
? :: c275 .
? :: c274 .
? :: c273 .
r276 :- not(f225), c254, f255, not(f256), c265, not(f271), c275 .
utility( r276 , 0 ).
query( r276 ).
r277 :- not(f225), c254, f255, not(f256), c265, not(f271), c274 .
utility( r277 , 0 ).
query( r277 ).
r278 :- not(f225), c254, f255, not(f256), c265, not(f271), c273 .
utility( r278 , 0 ).
query( r278 ).
? :: c280 .
? :: c279 .
0.1 :: f281 .
0.1 :: f282 .
r283 :- not(f225), c254, not(f255), c280, f281, f282 .
utility( r283 , 0 ).
query( r283 ).
? :: c284 .
r285 :- not(f225), c254, not(f255), c280, f281, not(f282), c284 .
utility( r285 , 0 ).
query( r285 ).
? :: c286 .
0.1 :: f287 .
r288 :- not(f225), c254, not(f255), c280, not(f281), c286, f287 .
utility( r288 , 0 ).
query( r288 ).
? :: c289 .
r290 :- not(f225), c254, not(f255), c280, not(f281), c286, not(f287), c289 .
utility( r290 , 0 ).
query( r290 ).
0.1 :: f291 .
0.1 :: f292 .
r293 :- not(f225), c254, not(f255), c279, f291, f292 .
utility( r293 , 0 ).
query( r293 ).
? :: c296 .
? :: c295 .
? :: c294 .
r297 :- not(f225), c254, not(f255), c279, f291, not(f292), c296 .
utility( r297 , 0 ).
query( r297 ).
r298 :- not(f225), c254, not(f255), c279, f291, not(f292), c295 .
utility( r298 , 0 ).
query( r298 ).
r299 :- not(f225), c254, not(f255), c279, f291, not(f292), c294 .
utility( r299 , 0 ).
query( r299 ).
? :: c301 .
? :: c300 .
0.1 :: f302 .
r303 :- not(f225), c254, not(f255), c279, not(f291), c301, f302 .
utility( r303 , 0 ).
query( r303 ).
? :: c304 .
r305 :- not(f225), c254, not(f255), c279, not(f291), c301, not(f302), c304 .
utility( r305 , 0 ).
query( r305 ).
0.1 :: f306 .
r307 :- not(f225), c254, not(f255), c279, not(f291), c300, f306 .
utility( r307 , 0 ).
query( r307 ).
? :: c310 .
? :: c309 .
? :: c308 .
r311 :- not(f225), c254, not(f255), c279, not(f291), c300, not(f306), c310 .
utility( r311 , 0 ).
query( r311 ).
r312 :- not(f225), c254, not(f255), c279, not(f291), c300, not(f306), c309 .
utility( r312 , 0 ).
query( r312 ).
r313 :- not(f225), c254, not(f255), c279, not(f291), c300, not(f306), c308 .
utility( r313 , 0 ).
query( r313 ).
0.1 :: f314 .
0.1 :: f315 .
r316 :- not(f225), c253, f314, f315 .
utility( r316 , 0 ).
query( r316 ).
? :: c317 .
r318 :- not(f225), c253, f314, not(f315), c317 .
utility( r318 , 0 ).
query( r318 ).
? :: c320 .
? :: c319 .
0.1 :: f321 .
r322 :- not(f225), c253, not(f314), c320, f321 .
utility( r322 , 0 ).
query( r322 ).
? :: c323 .
r324 :- not(f225), c253, not(f314), c320, not(f321), c323 .
utility( r324 , 0 ).
query( r324 ).
0.1 :: f325 .
r326 :- not(f225), c253, not(f314), c319, f325 .
utility( r326 , 0 ).
query( r326 ).
? :: c328 .
? :: c327 .
r329 :- not(f225), c253, not(f314), c319, not(f325), c328 .
utility( r329 , 0 ).
query( r329 ).
0.1 :: f330 .
r331 :- not(f225), c253, not(f314), c319, not(f325), c327, f330 .
utility( r331 , 0 ).
query( r331 ).
? :: c333 .
? :: c332 .
r334 :- not(f225), c253, not(f314), c319, not(f325), c327, not(f330), c333 .
utility( r334 , 0 ).
query( r334 ).
r335 :- not(f225), c253, not(f314), c319, not(f325), c327, not(f330), c332 .
utility( r335 , 0 ).
query( r335 ).
