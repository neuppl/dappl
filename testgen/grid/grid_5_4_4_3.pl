0.1 :: f348 .
0.1 :: f349 .
0.1 :: f350 .
0.1 :: f351 .
r352 :- f348, f349, f350, f351 .
utility( r352 , 0 ).
query( r352 ).
? :: c354 .
? :: c353 .
r355 :- f348, f349, f350, not(f351), c354 .
utility( r355 , 0 ).
query( r355 ).
r356 :- f348, f349, f350, not(f351), c353 .
utility( r356 , 0 ).
query( r356 ).
? :: c358 .
? :: c357 .
0.1 :: f359 .
r360 :- f348, f349, not(f350), c358, f359 .
utility( r360 , 0 ).
query( r360 ).
? :: c361 .
r362 :- f348, f349, not(f350), c358, not(f359), c361 .
utility( r362 , 0 ).
query( r362 ).
0.1 :: f363 .
r364 :- f348, f349, not(f350), c357, f363 .
utility( r364 , 0 ).
query( r364 ).
? :: c366 .
? :: c365 .
r367 :- f348, f349, not(f350), c357, not(f363), c366 .
utility( r367 , 0 ).
query( r367 ).
r368 :- f348, f349, not(f350), c357, not(f363), c365 .
utility( r368 , 0 ).
query( r368 ).
? :: c369 .
0.1 :: f370 .
0.1 :: f371 .
r372 :- f348, not(f349), c369, f370, f371 .
utility( r372 , 0 ).
query( r372 ).
? :: c373 .
r374 :- f348, not(f349), c369, f370, not(f371), c373 .
utility( r374 , 0 ).
query( r374 ).
? :: c376 .
? :: c375 .
0.1 :: f377 .
r378 :- f348, not(f349), c369, not(f370), c376, f377 .
utility( r378 , 0 ).
query( r378 ).
? :: c379 .
r380 :- f348, not(f349), c369, not(f370), c376, not(f377), c379 .
utility( r380 , 0 ).
query( r380 ).
0.1 :: f381 .
r382 :- f348, not(f349), c369, not(f370), c375, f381 .
utility( r382 , 0 ).
query( r382 ).
? :: c384 .
? :: c383 .
r385 :- f348, not(f349), c369, not(f370), c375, not(f381), c384 .
utility( r385 , 0 ).
query( r385 ).
r386 :- f348, not(f349), c369, not(f370), c375, not(f381), c383 .
utility( r386 , 0 ).
query( r386 ).
? :: c387 .
0.1 :: f388 .
0.1 :: f389 .
0.1 :: f390 .
r391 :- not(f348), c387, f388, f389, f390 .
utility( r391 , 0 ).
query( r391 ).
? :: c393 .
? :: c392 .
r394 :- not(f348), c387, f388, f389, not(f390), c393 .
utility( r394 , 0 ).
query( r394 ).
r395 :- not(f348), c387, f388, f389, not(f390), c392 .
utility( r395 , 0 ).
query( r395 ).
? :: c397 .
? :: c396 .
0.1 :: f398 .
r399 :- not(f348), c387, f388, not(f389), c397, f398 .
utility( r399 , 0 ).
query( r399 ).
? :: c400 .
r401 :- not(f348), c387, f388, not(f389), c397, not(f398), c400 .
utility( r401 , 0 ).
query( r401 ).
0.1 :: f402 .
r403 :- not(f348), c387, f388, not(f389), c396, f402 .
utility( r403 , 0 ).
query( r403 ).
? :: c405 .
? :: c404 .
r406 :- not(f348), c387, f388, not(f389), c396, not(f402), c405 .
utility( r406 , 0 ).
query( r406 ).
r407 :- not(f348), c387, f388, not(f389), c396, not(f402), c404 .
utility( r407 , 0 ).
query( r407 ).
? :: c408 .
0.1 :: f409 .
0.1 :: f410 .
r411 :- not(f348), c387, not(f388), c408, f409, f410 .
utility( r411 , 0 ).
query( r411 ).
? :: c412 .
r413 :- not(f348), c387, not(f388), c408, f409, not(f410), c412 .
utility( r413 , 0 ).
query( r413 ).
? :: c415 .
? :: c414 .
0.1 :: f416 .
r417 :- not(f348), c387, not(f388), c408, not(f409), c415, f416 .
utility( r417 , 0 ).
query( r417 ).
? :: c418 .
r419 :- not(f348), c387, not(f388), c408, not(f409), c415, not(f416), c418 .
utility( r419 , 0 ).
query( r419 ).
0.1 :: f420 .
r421 :- not(f348), c387, not(f388), c408, not(f409), c414, f420 .
utility( r421 , 0 ).
query( r421 ).
? :: c423 .
? :: c422 .
r424 :- not(f348), c387, not(f388), c408, not(f409), c414, not(f420), c423 .
utility( r424 , 0 ).
query( r424 ).
r425 :- not(f348), c387, not(f388), c408, not(f409), c414, not(f420), c422 .
utility( r425 , 0 ).
query( r425 ).
