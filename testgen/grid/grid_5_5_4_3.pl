0.1 :: f266 .
0.1 :: f267 .
0.1 :: f268 .
0.1 :: f269 .
r270 :- f266, f267, f268, f269 .
utility( r270 , 0 ).
query( r270 ).
? :: c271 .
r272 :- f266, f267, f268, not(f269), c271 .
utility( r272 , 0 ).
query( r272 ).
? :: c273 .
0.1 :: f274 .
r275 :- f266, f267, not(f268), c273, f274 .
utility( r275 , 0 ).
query( r275 ).
? :: c276 .
r277 :- f266, f267, not(f268), c273, not(f274), c276 .
utility( r277 , 0 ).
query( r277 ).
? :: c279 .
? :: c278 .
0.1 :: f280 .
0.1 :: f281 .
r282 :- f266, not(f267), c279, f280, f281 .
utility( r282 , 0 ).
query( r282 ).
? :: c283 .
r284 :- f266, not(f267), c279, f280, not(f281), c283 .
utility( r284 , 0 ).
query( r284 ).
? :: c285 .
0.1 :: f286 .
r287 :- f266, not(f267), c279, not(f280), c285, f286 .
utility( r287 , 0 ).
query( r287 ).
? :: c288 .
r289 :- f266, not(f267), c279, not(f280), c285, not(f286), c288 .
utility( r289 , 0 ).
query( r289 ).
0.1 :: f290 .
0.1 :: f291 .
r292 :- f266, not(f267), c278, f290, f291 .
utility( r292 , 1 ).
query( r292 ).
? :: c295 .
? :: c294 .
? :: c293 .
r296 :- f266, not(f267), c278, f290, not(f291), c295 .
utility( r296 , 0 ).
query( r296 ).
r297 :- f266, not(f267), c278, f290, not(f291), c294 .
utility( r297 , 0 ).
query( r297 ).
r298 :- f266, not(f267), c278, f290, not(f291), c293 .
utility( r298 , 1 ).
query( r298 ).
? :: c299 .
0.1 :: f300 .
r301 :- f266, not(f267), c278, not(f290), c299, f300 .
utility( r301 , 0 ).
query( r301 ).
? :: c304 .
? :: c303 .
? :: c302 .
r305 :- f266, not(f267), c278, not(f290), c299, not(f300), c304 .
utility( r305 , 0 ).
query( r305 ).
r306 :- f266, not(f267), c278, not(f290), c299, not(f300), c303 .
utility( r306 , 0 ).
query( r306 ).
r307 :- f266, not(f267), c278, not(f290), c299, not(f300), c302 .
utility( r307 , 1 ).
query( r307 ).
? :: c309 .
? :: c308 .
0.1 :: f310 .
0.1 :: f311 .
0.1 :: f312 .
r313 :- not(f266), c309, f310, f311, f312 .
utility( r313 , 0 ).
query( r313 ).
? :: c314 .
r315 :- not(f266), c309, f310, f311, not(f312), c314 .
utility( r315 , 0 ).
query( r315 ).
? :: c316 .
0.1 :: f317 .
r318 :- not(f266), c309, f310, not(f311), c316, f317 .
utility( r318 , 0 ).
query( r318 ).
? :: c319 .
r320 :- not(f266), c309, f310, not(f311), c316, not(f317), c319 .
utility( r320 , 0 ).
query( r320 ).
? :: c322 .
? :: c321 .
0.1 :: f323 .
0.1 :: f324 .
r325 :- not(f266), c309, not(f310), c322, f323, f324 .
utility( r325 , 0 ).
query( r325 ).
? :: c326 .
r327 :- not(f266), c309, not(f310), c322, f323, not(f324), c326 .
utility( r327 , 0 ).
query( r327 ).
? :: c328 .
0.1 :: f329 .
r330 :- not(f266), c309, not(f310), c322, not(f323), c328, f329 .
utility( r330 , 0 ).
query( r330 ).
? :: c331 .
r332 :- not(f266), c309, not(f310), c322, not(f323), c328, not(f329), c331 .
utility( r332 , 0 ).
query( r332 ).
0.1 :: f333 .
0.1 :: f334 .
r335 :- not(f266), c309, not(f310), c321, f333, f334 .
utility( r335 , 1 ).
query( r335 ).
? :: c338 .
? :: c337 .
? :: c336 .
r339 :- not(f266), c309, not(f310), c321, f333, not(f334), c338 .
utility( r339 , 0 ).
query( r339 ).
r340 :- not(f266), c309, not(f310), c321, f333, not(f334), c337 .
utility( r340 , 0 ).
query( r340 ).
r341 :- not(f266), c309, not(f310), c321, f333, not(f334), c336 .
utility( r341 , 1 ).
query( r341 ).
? :: c342 .
0.1 :: f343 .
r344 :- not(f266), c309, not(f310), c321, not(f333), c342, f343 .
utility( r344 , 0 ).
query( r344 ).
? :: c347 .
? :: c346 .
? :: c345 .
r348 :- not(f266), c309, not(f310), c321, not(f333), c342, not(f343), c347 .
utility( r348 , 0 ).
query( r348 ).
r349 :- not(f266), c309, not(f310), c321, not(f333), c342, not(f343), c346 .
utility( r349 , 0 ).
query( r349 ).
r350 :- not(f266), c309, not(f310), c321, not(f333), c342, not(f343), c345 .
utility( r350 , 1 ).
query( r350 ).
0.1 :: f351 .
0.1 :: f352 .
0.1 :: f353 .
r354 :- not(f266), c308, f351, f352, f353 .
utility( r354 , 0 ).
query( r354 ).
? :: c356 .
? :: c355 .
r357 :- not(f266), c308, f351, f352, not(f353), c356 .
utility( r357 , 0 ).
query( r357 ).
r358 :- not(f266), c308, f351, f352, not(f353), c355 .
utility( r358 , 1 ).
query( r358 ).
? :: c359 .
0.1 :: f360 .
r361 :- not(f266), c308, f351, not(f352), c359, f360 .
utility( r361 , 0 ).
query( r361 ).
? :: c363 .
? :: c362 .
r364 :- not(f266), c308, f351, not(f352), c359, not(f360), c363 .
utility( r364 , 0 ).
query( r364 ).
r365 :- not(f266), c308, f351, not(f352), c359, not(f360), c362 .
utility( r365 , 1 ).
query( r365 ).
? :: c367 .
? :: c366 .
0.1 :: f368 .
0.1 :: f369 .
r370 :- not(f266), c308, not(f351), c367, f368, f369 .
utility( r370 , 0 ).
query( r370 ).
? :: c372 .
? :: c371 .
r373 :- not(f266), c308, not(f351), c367, f368, not(f369), c372 .
utility( r373 , 0 ).
query( r373 ).
r374 :- not(f266), c308, not(f351), c367, f368, not(f369), c371 .
utility( r374 , 1 ).
query( r374 ).
? :: c375 .
0.1 :: f376 .
r377 :- not(f266), c308, not(f351), c367, not(f368), c375, f376 .
utility( r377 , 1 ).
query( r377 ).
? :: c379 .
? :: c378 .
r380 :- not(f266), c308, not(f351), c367, not(f368), c375, not(f376), c379 .
utility( r380 , 0 ).
query( r380 ).
r381 :- not(f266), c308, not(f351), c367, not(f368), c375, not(f376), c378 .
utility( r381 , 1 ).
query( r381 ).
0.1 :: f382 .
0.1 :: f383 .
r384 :- not(f266), c308, not(f351), c366, f382, f383 .
utility( r384 , 0 ).
query( r384 ).
? :: c386 .
? :: c385 .
r387 :- not(f266), c308, not(f351), c366, f382, not(f383), c386 .
utility( r387 , 0 ).
query( r387 ).
r388 :- not(f266), c308, not(f351), c366, f382, not(f383), c385 .
utility( r388 , 1 ).
query( r388 ).
? :: c390 .
? :: c389 .
0.1 :: f391 .
r392 :- not(f266), c308, not(f351), c366, not(f382), c390, f391 .
utility( r392 , 0 ).
query( r392 ).
? :: c394 .
? :: c393 .
r395 :- not(f266), c308, not(f351), c366, not(f382), c390, not(f391), c394 .
utility( r395 , 0 ).
query( r395 ).
r396 :- not(f266), c308, not(f351), c366, not(f382), c390, not(f391), c393 .
utility( r396 , 1 ).
query( r396 ).
0.1 :: f397 .
r398 :- not(f266), c308, not(f351), c366, not(f382), c389, f397 .
utility( r398 , 1 ).
query( r398 ).
? :: c400 .
? :: c399 .
r401 :- not(f266), c308, not(f351), c366, not(f382), c389, not(f397), c400 .
utility( r401 , 1 ).
query( r401 ).
r402 :- not(f266), c308, not(f351), c366, not(f382), c389, not(f397), c399 .
utility( r402 , 0 ).
query( r402 ).
