0.1 :: f356 .
0.1 :: f357 .
0.1 :: f358 .
r359 :- f356, f357, f358 .
utility( r359 , 1 ).
query( r359 ).
? :: c360 .
r361 :- f356, f357, not(f358), c360 .
utility( r361 , 1 ).
query( r361 ).
? :: c364 .
? :: c363 .
? :: c362 .
0.1 :: f365 .
r366 :- f356, not(f357), c364, f365 .
utility( r366 , 0 ).
query( r366 ).
? :: c368 .
? :: c367 .
r369 :- f356, not(f357), c364, not(f365), c368 .
utility( r369 , 0 ).
query( r369 ).
0.1 :: f370 .
r371 :- f356, not(f357), c364, not(f365), c367, f370 .
utility( r371 , 0 ).
query( r371 ).
? :: c372 .
r373 :- f356, not(f357), c364, not(f365), c367, not(f370), c372 .
utility( r373 , 0 ).
query( r373 ).
0.1 :: f374 .
r375 :- f356, not(f357), c363, f374 .
utility( r375 , 1 ).
query( r375 ).
? :: c376 .
r377 :- f356, not(f357), c363, not(f374), c376 .
utility( r377 , 1 ).
query( r377 ).
0.1 :: f378 .
0.1 :: f379 .
r380 :- f356, not(f357), c362, f378, f379 .
utility( r380 , 0 ).
query( r380 ).
? :: c381 .
r382 :- f356, not(f357), c362, f378, not(f379), c381 .
utility( r382 , 0 ).
query( r382 ).
? :: c385 .
? :: c384 .
? :: c383 .
0.1 :: f386 .
r387 :- f356, not(f357), c362, not(f378), c385, f386 .
utility( r387 , 0 ).
query( r387 ).
? :: c388 .
r389 :- f356, not(f357), c362, not(f378), c385, not(f386), c388 .
utility( r389 , 0 ).
query( r389 ).
r390 :- f356, not(f357), c362, not(f378), c384 .
utility( r390 , 1 ).
query( r390 ).
0.1 :: f391 .
r392 :- f356, not(f357), c362, not(f378), c383, f391 .
utility( r392 , 0 ).
query( r392 ).
? :: c394 .
? :: c393 .
r395 :- f356, not(f357), c362, not(f378), c383, not(f391), c394 .
utility( r395 , 0 ).
query( r395 ).
r396 :- f356, not(f357), c362, not(f378), c383, not(f391), c393 .
utility( r396 , 0 ).
query( r396 ).
? :: c398 .
? :: c397 .
0.1 :: f399 .
0.1 :: f400 .
r401 :- not(f356), c398, f399, f400 .
utility( r401 , 1 ).
query( r401 ).
? :: c402 .
r403 :- not(f356), c398, f399, not(f400), c402 .
utility( r403 , 1 ).
query( r403 ).
? :: c404 .
0.1 :: f405 .
r406 :- not(f356), c398, not(f399), c404, f405 .
utility( r406 , 1 ).
query( r406 ).
? :: c407 .
r408 :- not(f356), c398, not(f399), c404, not(f405), c407 .
utility( r408 , 1 ).
query( r408 ).
0.1 :: f409 .
0.1 :: f410 .
0.1 :: f411 .
r412 :- not(f356), c397, f409, f410, f411 .
utility( r412 , 0 ).
query( r412 ).
? :: c413 .
r414 :- not(f356), c397, f409, f410, not(f411), c413 .
utility( r414 , 0 ).
query( r414 ).
? :: c417 .
? :: c416 .
? :: c415 .
0.1 :: f418 .
r419 :- not(f356), c397, f409, not(f410), c417, f418 .
utility( r419 , 0 ).
query( r419 ).
? :: c420 .
r421 :- not(f356), c397, f409, not(f410), c417, not(f418), c420 .
utility( r421 , 0 ).
query( r421 ).
r422 :- not(f356), c397, f409, not(f410), c416 .
utility( r422 , 1 ).
query( r422 ).
0.1 :: f423 .
r424 :- not(f356), c397, f409, not(f410), c415, f423 .
utility( r424 , 0 ).
query( r424 ).
? :: c426 .
? :: c425 .
r427 :- not(f356), c397, f409, not(f410), c415, not(f423), c426 .
utility( r427 , 0 ).
query( r427 ).
r428 :- not(f356), c397, f409, not(f410), c415, not(f423), c425 .
utility( r428 , 0 ).
query( r428 ).
? :: c431 .
? :: c430 .
? :: c429 .
0.1 :: f432 .
0.1 :: f433 .
r434 :- not(f356), c397, not(f409), c431, f432, f433 .
utility( r434 , 0 ).
query( r434 ).
? :: c435 .
r436 :- not(f356), c397, not(f409), c431, f432, not(f433), c435 .
utility( r436 , 0 ).
query( r436 ).
? :: c438 .
? :: c437 .
r439 :- not(f356), c397, not(f409), c431, not(f432), c438 .
utility( r439 , 0 ).
query( r439 ).
0.1 :: f440 .
r441 :- not(f356), c397, not(f409), c431, not(f432), c437, f440 .
utility( r441 , 0 ).
query( r441 ).
? :: c442 .
r443 :- not(f356), c397, not(f409), c431, not(f432), c437, not(f440), c442 .
utility( r443 , 0 ).
query( r443 ).
0.1 :: f444 .
r445 :- not(f356), c397, not(f409), c430, f444 .
utility( r445 , 1 ).
query( r445 ).
? :: c446 .
r447 :- not(f356), c397, not(f409), c430, not(f444), c446 .
utility( r447 , 1 ).
query( r447 ).
0.1 :: f448 .
0.1 :: f449 .
r450 :- not(f356), c397, not(f409), c429, f448, f449 .
utility( r450 , 0 ).
query( r450 ).
? :: c451 .
r452 :- not(f356), c397, not(f409), c429, f448, not(f449), c451 .
utility( r452 , 0 ).
query( r452 ).
? :: c455 .
? :: c454 .
? :: c453 .
0.1 :: f456 .
r457 :- not(f356), c397, not(f409), c429, not(f448), c455, f456 .
utility( r457 , 0 ).
query( r457 ).
? :: c458 .
r459 :- not(f356), c397, not(f409), c429, not(f448), c455, not(f456), c458 .
utility( r459 , 0 ).
query( r459 ).
r460 :- not(f356), c397, not(f409), c429, not(f448), c454 .
utility( r460 , 1 ).
query( r460 ).
0.1 :: f461 .
r462 :- not(f356), c397, not(f409), c429, not(f448), c453, f461 .
utility( r462 , 0 ).
query( r462 ).
? :: c464 .
? :: c463 .
r465 :- not(f356), c397, not(f409), c429, not(f448), c453, not(f461), c464 .
utility( r465 , 0 ).
query( r465 ).
r466 :- not(f356), c397, not(f409), c429, not(f448), c453, not(f461), c463 .
utility( r466 , 0 ).
query( r466 ).
