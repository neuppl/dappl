0.1 :: f255 .
0.1 :: f256 .
0.1 :: f257 .
0.1 :: f258 .
r259 :- f255, f256, f257, f258 .
utility( r259 , 1 ).
query( r259 ).
? :: c261 .
? :: c260 .
r262 :- f255, f256, f257, not(f258), c261 .
utility( r262 , 1 ).
query( r262 ).
r263 :- f255, f256, f257, not(f258), c260 .
utility( r263 , 0 ).
query( r263 ).
? :: c264 .
0.1 :: f265 .
r266 :- f255, f256, not(f257), c264, f265 .
utility( r266 , 0 ).
query( r266 ).
? :: c268 .
? :: c267 .
r269 :- f255, f256, not(f257), c264, not(f265), c268 .
utility( r269 , 1 ).
query( r269 ).
r270 :- f255, f256, not(f257), c264, not(f265), c267 .
utility( r270 , 0 ).
query( r270 ).
? :: c272 .
? :: c271 .
0.1 :: f273 .
0.1 :: f274 .
r275 :- f255, not(f256), c272, f273, f274 .
utility( r275 , 1 ).
query( r275 ).
? :: c277 .
? :: c276 .
r278 :- f255, not(f256), c272, f273, not(f274), c277 .
utility( r278 , 1 ).
query( r278 ).
r279 :- f255, not(f256), c272, f273, not(f274), c276 .
utility( r279 , 0 ).
query( r279 ).
? :: c280 .
0.1 :: f281 .
r282 :- f255, not(f256), c272, not(f273), c280, f281 .
utility( r282 , 0 ).
query( r282 ).
? :: c284 .
? :: c283 .
r285 :- f255, not(f256), c272, not(f273), c280, not(f281), c284 .
utility( r285 , 1 ).
query( r285 ).
r286 :- f255, not(f256), c272, not(f273), c280, not(f281), c283 .
utility( r286 , 0 ).
query( r286 ).
0.1 :: f287 .
0.1 :: f288 .
r289 :- f255, not(f256), c271, f287, f288 .
utility( r289 , 0 ).
query( r289 ).
? :: c291 .
? :: c290 .
r292 :- f255, not(f256), c271, f287, not(f288), c291 .
utility( r292 , 1 ).
query( r292 ).
r293 :- f255, not(f256), c271, f287, not(f288), c290 .
utility( r293 , 0 ).
query( r293 ).
? :: c294 .
0.1 :: f295 .
r296 :- f255, not(f256), c271, not(f287), c294, f295 .
utility( r296 , 0 ).
query( r296 ).
? :: c298 .
? :: c297 .
r299 :- f255, not(f256), c271, not(f287), c294, not(f295), c298 .
utility( r299 , 1 ).
query( r299 ).
r300 :- f255, not(f256), c271, not(f287), c294, not(f295), c297 .
utility( r300 , 0 ).
query( r300 ).
? :: c302 .
? :: c301 .
0.1 :: f303 .
0.1 :: f304 .
0.1 :: f305 .
r306 :- not(f255), c302, f303, f304, f305 .
utility( r306 , 0 ).
query( r306 ).
? :: c309 .
? :: c308 .
? :: c307 .
r310 :- not(f255), c302, f303, f304, not(f305), c309 .
utility( r310 , 0 ).
query( r310 ).
r311 :- not(f255), c302, f303, f304, not(f305), c308 .
utility( r311 , 1 ).
query( r311 ).
r312 :- not(f255), c302, f303, f304, not(f305), c307 .
utility( r312 , 0 ).
query( r312 ).
? :: c313 .
0.1 :: f314 .
r315 :- not(f255), c302, f303, not(f304), c313, f314 .
utility( r315 , 1 ).
query( r315 ).
? :: c318 .
? :: c317 .
? :: c316 .
r319 :- not(f255), c302, f303, not(f304), c313, not(f314), c318 .
utility( r319 , 0 ).
query( r319 ).
r320 :- not(f255), c302, f303, not(f304), c313, not(f314), c317 .
utility( r320 , 1 ).
query( r320 ).
r321 :- not(f255), c302, f303, not(f304), c313, not(f314), c316 .
utility( r321 , 0 ).
query( r321 ).
? :: c323 .
? :: c322 .
0.1 :: f324 .
r325 :- not(f255), c302, not(f303), c323, f324 .
utility( r325 , 0 ).
query( r325 ).
? :: c326 .
r327 :- not(f255), c302, not(f303), c323, not(f324), c326 .
utility( r327 , 0 ).
query( r327 ).
0.1 :: f328 .
0.1 :: f329 .
r330 :- not(f255), c302, not(f303), c322, f328, f329 .
utility( r330 , 1 ).
query( r330 ).
? :: c333 .
? :: c332 .
? :: c331 .
r334 :- not(f255), c302, not(f303), c322, f328, not(f329), c333 .
utility( r334 , 0 ).
query( r334 ).
r335 :- not(f255), c302, not(f303), c322, f328, not(f329), c332 .
utility( r335 , 1 ).
query( r335 ).
r336 :- not(f255), c302, not(f303), c322, f328, not(f329), c331 .
utility( r336 , 0 ).
query( r336 ).
? :: c337 .
0.1 :: f338 .
r339 :- not(f255), c302, not(f303), c322, not(f328), c337, f338 .
utility( r339 , 1 ).
query( r339 ).
? :: c342 .
? :: c341 .
? :: c340 .
r343 :- not(f255), c302, not(f303), c322, not(f328), c337, not(f338), c342 .
utility( r343 , 0 ).
query( r343 ).
r344 :- not(f255), c302, not(f303), c322, not(f328), c337, not(f338), c341 .
utility( r344 , 1 ).
query( r344 ).
r345 :- not(f255), c302, not(f303), c322, not(f328), c337, not(f338), c340 .
utility( r345 , 0 ).
query( r345 ).
0.1 :: f346 .
0.1 :: f347 .
0.1 :: f348 .
r349 :- not(f255), c301, f346, f347, f348 .
utility( r349 , 1 ).
query( r349 ).
? :: c351 .
? :: c350 .
r352 :- not(f255), c301, f346, f347, not(f348), c351 .
utility( r352 , 1 ).
query( r352 ).
r353 :- not(f255), c301, f346, f347, not(f348), c350 .
utility( r353 , 0 ).
query( r353 ).
? :: c354 .
0.1 :: f355 .
r356 :- not(f255), c301, f346, not(f347), c354, f355 .
utility( r356 , 0 ).
query( r356 ).
? :: c358 .
? :: c357 .
r359 :- not(f255), c301, f346, not(f347), c354, not(f355), c358 .
utility( r359 , 1 ).
query( r359 ).
r360 :- not(f255), c301, f346, not(f347), c354, not(f355), c357 .
utility( r360 , 0 ).
query( r360 ).
? :: c362 .
? :: c361 .
0.1 :: f363 .
0.1 :: f364 .
r365 :- not(f255), c301, not(f346), c362, f363, f364 .
utility( r365 , 0 ).
query( r365 ).
? :: c367 .
? :: c366 .
r368 :- not(f255), c301, not(f346), c362, f363, not(f364), c367 .
utility( r368 , 1 ).
query( r368 ).
r369 :- not(f255), c301, not(f346), c362, f363, not(f364), c366 .
utility( r369 , 0 ).
query( r369 ).
? :: c370 .
0.1 :: f371 .
r372 :- not(f255), c301, not(f346), c362, not(f363), c370, f371 .
utility( r372 , 0 ).
query( r372 ).
? :: c374 .
? :: c373 .
r375 :- not(f255), c301, not(f346), c362, not(f363), c370, not(f371), c374 .
utility( r375 , 1 ).
query( r375 ).
r376 :- not(f255), c301, not(f346), c362, not(f363), c370, not(f371), c373 .
utility( r376 , 0 ).
query( r376 ).
0.1 :: f377 .
0.1 :: f378 .
r379 :- not(f255), c301, not(f346), c361, f377, f378 .
utility( r379 , 1 ).
query( r379 ).
? :: c381 .
? :: c380 .
r382 :- not(f255), c301, not(f346), c361, f377, not(f378), c381 .
utility( r382 , 1 ).
query( r382 ).
r383 :- not(f255), c301, not(f346), c361, f377, not(f378), c380 .
utility( r383 , 0 ).
query( r383 ).
? :: c384 .
0.1 :: f385 .
r386 :- not(f255), c301, not(f346), c361, not(f377), c384, f385 .
utility( r386 , 0 ).
query( r386 ).
? :: c388 .
? :: c387 .
r389 :- not(f255), c301, not(f346), c361, not(f377), c384, not(f385), c388 .
utility( r389 , 1 ).
query( r389 ).
r390 :- not(f255), c301, not(f346), c361, not(f377), c384, not(f385), c387 .
utility( r390 , 0 ).
query( r390 ).
