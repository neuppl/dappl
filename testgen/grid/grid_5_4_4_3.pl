0.1 :: f336 .
0.1 :: f337 .
0.1 :: f338 .
0.1 :: f339 .
r340 :- f336, f337, f338, f339 .
utility( r340 , 0 ).
query( r340 ).
? :: c342 .
? :: c341 .
r343 :- f336, f337, f338, not(f339), c342 .
utility( r343 , 0 ).
query( r343 ).
r344 :- f336, f337, f338, not(f339), c341 .
utility( r344 , 0 ).
query( r344 ).
? :: c346 .
? :: c345 .
0.1 :: f347 .
r348 :- f336, f337, not(f338), c346, f347 .
utility( r348 , 0 ).
query( r348 ).
? :: c350 .
? :: c349 .
r351 :- f336, f337, not(f338), c346, not(f347), c350 .
utility( r351 , 0 ).
query( r351 ).
r352 :- f336, f337, not(f338), c346, not(f347), c349 .
utility( r352 , 0 ).
query( r352 ).
0.1 :: f353 .
r354 :- f336, f337, not(f338), c345, f353 .
utility( r354 , 0 ).
query( r354 ).
? :: c356 .
? :: c355 .
r357 :- f336, f337, not(f338), c345, not(f353), c356 .
utility( r357 , 0 ).
query( r357 ).
r358 :- f336, f337, not(f338), c345, not(f353), c355 .
utility( r358 , 0 ).
query( r358 ).
? :: c359 .
0.1 :: f360 .
0.1 :: f361 .
r362 :- f336, not(f337), c359, f360, f361 .
utility( r362 , 0 ).
query( r362 ).
? :: c364 .
? :: c363 .
r365 :- f336, not(f337), c359, f360, not(f361), c364 .
utility( r365 , 0 ).
query( r365 ).
r366 :- f336, not(f337), c359, f360, not(f361), c363 .
utility( r366 , 0 ).
query( r366 ).
? :: c368 .
? :: c367 .
0.1 :: f369 .
r370 :- f336, not(f337), c359, not(f360), c368, f369 .
utility( r370 , 0 ).
query( r370 ).
? :: c372 .
? :: c371 .
r373 :- f336, not(f337), c359, not(f360), c368, not(f369), c372 .
utility( r373 , 0 ).
query( r373 ).
r374 :- f336, not(f337), c359, not(f360), c368, not(f369), c371 .
utility( r374 , 0 ).
query( r374 ).
0.1 :: f375 .
r376 :- f336, not(f337), c359, not(f360), c367, f375 .
utility( r376 , 0 ).
query( r376 ).
? :: c378 .
? :: c377 .
r379 :- f336, not(f337), c359, not(f360), c367, not(f375), c378 .
utility( r379 , 0 ).
query( r379 ).
r380 :- f336, not(f337), c359, not(f360), c367, not(f375), c377 .
utility( r380 , 0 ).
query( r380 ).
? :: c382 .
? :: c381 .
0.1 :: f383 .
0.1 :: f384 .
0.1 :: f385 .
r386 :- not(f336), c382, f383, f384, f385 .
utility( r386 , 0 ).
query( r386 ).
? :: c388 .
? :: c387 .
r389 :- not(f336), c382, f383, f384, not(f385), c388 .
utility( r389 , 0 ).
query( r389 ).
r390 :- not(f336), c382, f383, f384, not(f385), c387 .
utility( r390 , 0 ).
query( r390 ).
? :: c392 .
? :: c391 .
0.1 :: f393 .
r394 :- not(f336), c382, f383, not(f384), c392, f393 .
utility( r394 , 0 ).
query( r394 ).
? :: c396 .
? :: c395 .
r397 :- not(f336), c382, f383, not(f384), c392, not(f393), c396 .
utility( r397 , 0 ).
query( r397 ).
r398 :- not(f336), c382, f383, not(f384), c392, not(f393), c395 .
utility( r398 , 0 ).
query( r398 ).
0.1 :: f399 .
r400 :- not(f336), c382, f383, not(f384), c391, f399 .
utility( r400 , 0 ).
query( r400 ).
? :: c402 .
? :: c401 .
r403 :- not(f336), c382, f383, not(f384), c391, not(f399), c402 .
utility( r403 , 0 ).
query( r403 ).
r404 :- not(f336), c382, f383, not(f384), c391, not(f399), c401 .
utility( r404 , 0 ).
query( r404 ).
? :: c405 .
0.1 :: f406 .
0.1 :: f407 .
r408 :- not(f336), c382, not(f383), c405, f406, f407 .
utility( r408 , 0 ).
query( r408 ).
? :: c410 .
? :: c409 .
r411 :- not(f336), c382, not(f383), c405, f406, not(f407), c410 .
utility( r411 , 0 ).
query( r411 ).
r412 :- not(f336), c382, not(f383), c405, f406, not(f407), c409 .
utility( r412 , 0 ).
query( r412 ).
? :: c414 .
? :: c413 .
0.1 :: f415 .
r416 :- not(f336), c382, not(f383), c405, not(f406), c414, f415 .
utility( r416 , 0 ).
query( r416 ).
? :: c418 .
? :: c417 .
r419 :- not(f336), c382, not(f383), c405, not(f406), c414, not(f415), c418 .
utility( r419 , 0 ).
query( r419 ).
r420 :- not(f336), c382, not(f383), c405, not(f406), c414, not(f415), c417 .
utility( r420 , 0 ).
query( r420 ).
0.1 :: f421 .
r422 :- not(f336), c382, not(f383), c405, not(f406), c413, f421 .
utility( r422 , 0 ).
query( r422 ).
? :: c424 .
? :: c423 .
r425 :- not(f336), c382, not(f383), c405, not(f406), c413, not(f421), c424 .
utility( r425 , 0 ).
query( r425 ).
r426 :- not(f336), c382, not(f383), c405, not(f406), c413, not(f421), c423 .
utility( r426 , 0 ).
query( r426 ).
0.1 :: f427 .
0.1 :: f428 .
0.1 :: f429 .
r430 :- not(f336), c381, f427, f428, f429 .
utility( r430 , 0 ).
query( r430 ).
? :: c432 .
? :: c431 .
r433 :- not(f336), c381, f427, f428, not(f429), c432 .
utility( r433 , 0 ).
query( r433 ).
r434 :- not(f336), c381, f427, f428, not(f429), c431 .
utility( r434 , 0 ).
query( r434 ).
? :: c436 .
? :: c435 .
0.1 :: f437 .
r438 :- not(f336), c381, f427, not(f428), c436, f437 .
utility( r438 , 0 ).
query( r438 ).
? :: c440 .
? :: c439 .
r441 :- not(f336), c381, f427, not(f428), c436, not(f437), c440 .
utility( r441 , 0 ).
query( r441 ).
r442 :- not(f336), c381, f427, not(f428), c436, not(f437), c439 .
utility( r442 , 0 ).
query( r442 ).
0.1 :: f443 .
r444 :- not(f336), c381, f427, not(f428), c435, f443 .
utility( r444 , 0 ).
query( r444 ).
? :: c446 .
? :: c445 .
r447 :- not(f336), c381, f427, not(f428), c435, not(f443), c446 .
utility( r447 , 0 ).
query( r447 ).
r448 :- not(f336), c381, f427, not(f428), c435, not(f443), c445 .
utility( r448 , 0 ).
query( r448 ).
? :: c449 .
0.1 :: f450 .
0.1 :: f451 .
r452 :- not(f336), c381, not(f427), c449, f450, f451 .
utility( r452 , 0 ).
query( r452 ).
? :: c454 .
? :: c453 .
r455 :- not(f336), c381, not(f427), c449, f450, not(f451), c454 .
utility( r455 , 0 ).
query( r455 ).
r456 :- not(f336), c381, not(f427), c449, f450, not(f451), c453 .
utility( r456 , 0 ).
query( r456 ).
? :: c458 .
? :: c457 .
0.1 :: f459 .
r460 :- not(f336), c381, not(f427), c449, not(f450), c458, f459 .
utility( r460 , 0 ).
query( r460 ).
? :: c462 .
? :: c461 .
r463 :- not(f336), c381, not(f427), c449, not(f450), c458, not(f459), c462 .
utility( r463 , 0 ).
query( r463 ).
r464 :- not(f336), c381, not(f427), c449, not(f450), c458, not(f459), c461 .
utility( r464 , 0 ).
query( r464 ).
0.1 :: f465 .
r466 :- not(f336), c381, not(f427), c449, not(f450), c457, f465 .
utility( r466 , 0 ).
query( r466 ).
? :: c468 .
? :: c467 .
r469 :- not(f336), c381, not(f427), c449, not(f450), c457, not(f465), c468 .
utility( r469 , 0 ).
query( r469 ).
r470 :- not(f336), c381, not(f427), c449, not(f450), c457, not(f465), c467 .
utility( r470 , 0 ).
query( r470 ).
