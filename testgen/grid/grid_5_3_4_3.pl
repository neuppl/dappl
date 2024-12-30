0.1 :: f290 .
0.1 :: f291 .
0.1 :: f292 .
0.1 :: f293 .
r294 :- f290, f291, f292, f293 .
utility( r294 , 0 ).
query( r294 ).
? :: c296 .
? :: c295 .
r297 :- f290, f291, f292, not(f293), c296 .
utility( r297 , 0 ).
query( r297 ).
r298 :- f290, f291, f292, not(f293), c295 .
utility( r298 , 0 ).
query( r298 ).
? :: c300 .
? :: c299 .
0.1 :: f301 .
r302 :- f290, f291, not(f292), c300, f301 .
utility( r302 , 0 ).
query( r302 ).
? :: c304 .
? :: c303 .
r305 :- f290, f291, not(f292), c300, not(f301), c304 .
utility( r305 , 0 ).
query( r305 ).
r306 :- f290, f291, not(f292), c300, not(f301), c303 .
utility( r306 , 0 ).
query( r306 ).
0.1 :: f307 .
r308 :- f290, f291, not(f292), c299, f307 .
utility( r308 , 0 ).
query( r308 ).
? :: c310 .
? :: c309 .
r311 :- f290, f291, not(f292), c299, not(f307), c310 .
utility( r311 , 0 ).
query( r311 ).
r312 :- f290, f291, not(f292), c299, not(f307), c309 .
utility( r312 , 0 ).
query( r312 ).
? :: c315 .
? :: c314 .
? :: c313 .
0.1 :: f316 .
0.1 :: f317 .
r318 :- f290, not(f291), c315, f316, f317 .
utility( r318 , 0 ).
query( r318 ).
? :: c320 .
? :: c319 .
r321 :- f290, not(f291), c315, f316, not(f317), c320 .
utility( r321 , 0 ).
query( r321 ).
r322 :- f290, not(f291), c315, f316, not(f317), c319 .
utility( r322 , 0 ).
query( r322 ).
? :: c324 .
? :: c323 .
0.1 :: f325 .
r326 :- f290, not(f291), c315, not(f316), c324, f325 .
utility( r326 , 0 ).
query( r326 ).
? :: c328 .
? :: c327 .
r329 :- f290, not(f291), c315, not(f316), c324, not(f325), c328 .
utility( r329 , 0 ).
query( r329 ).
r330 :- f290, not(f291), c315, not(f316), c324, not(f325), c327 .
utility( r330 , 0 ).
query( r330 ).
0.1 :: f331 .
r332 :- f290, not(f291), c315, not(f316), c323, f331 .
utility( r332 , 0 ).
query( r332 ).
? :: c334 .
? :: c333 .
r335 :- f290, not(f291), c315, not(f316), c323, not(f331), c334 .
utility( r335 , 0 ).
query( r335 ).
r336 :- f290, not(f291), c315, not(f316), c323, not(f331), c333 .
utility( r336 , 0 ).
query( r336 ).
0.1 :: f337 .
0.1 :: f338 .
r339 :- f290, not(f291), c314, f337, f338 .
utility( r339 , 0 ).
query( r339 ).
? :: c341 .
? :: c340 .
r342 :- f290, not(f291), c314, f337, not(f338), c341 .
utility( r342 , 0 ).
query( r342 ).
r343 :- f290, not(f291), c314, f337, not(f338), c340 .
utility( r343 , 0 ).
query( r343 ).
? :: c344 .
0.1 :: f345 .
r346 :- f290, not(f291), c314, not(f337), c344, f345 .
utility( r346 , 0 ).
query( r346 ).
? :: c348 .
? :: c347 .
r349 :- f290, not(f291), c314, not(f337), c344, not(f345), c348 .
utility( r349 , 0 ).
query( r349 ).
r350 :- f290, not(f291), c314, not(f337), c344, not(f345), c347 .
utility( r350 , 0 ).
query( r350 ).
0.1 :: f351 .
0.1 :: f352 .
r353 :- f290, not(f291), c313, f351, f352 .
utility( r353 , 0 ).
query( r353 ).
? :: c355 .
? :: c354 .
r356 :- f290, not(f291), c313, f351, not(f352), c355 .
utility( r356 , 0 ).
query( r356 ).
r357 :- f290, not(f291), c313, f351, not(f352), c354 .
utility( r357 , 0 ).
query( r357 ).
? :: c359 .
? :: c358 .
0.1 :: f360 .
r361 :- f290, not(f291), c313, not(f351), c359, f360 .
utility( r361 , 0 ).
query( r361 ).
? :: c363 .
? :: c362 .
r364 :- f290, not(f291), c313, not(f351), c359, not(f360), c363 .
utility( r364 , 0 ).
query( r364 ).
r365 :- f290, not(f291), c313, not(f351), c359, not(f360), c362 .
utility( r365 , 0 ).
query( r365 ).
0.1 :: f366 .
r367 :- f290, not(f291), c313, not(f351), c358, f366 .
utility( r367 , 0 ).
query( r367 ).
? :: c369 .
? :: c368 .
r370 :- f290, not(f291), c313, not(f351), c358, not(f366), c369 .
utility( r370 , 0 ).
query( r370 ).
r371 :- f290, not(f291), c313, not(f351), c358, not(f366), c368 .
utility( r371 , 0 ).
query( r371 ).
? :: c374 .
? :: c373 .
? :: c372 .
0.1 :: f375 .
0.1 :: f376 .
0.1 :: f377 .
r378 :- not(f290), c374, f375, f376, f377 .
utility( r378 , 0 ).
query( r378 ).
? :: c379 .
r380 :- not(f290), c374, f375, f376, not(f377), c379 .
utility( r380 , 0 ).
query( r380 ).
? :: c382 .
? :: c381 .
0.1 :: f383 .
r384 :- not(f290), c374, f375, not(f376), c382, f383 .
utility( r384 , 0 ).
query( r384 ).
? :: c385 .
r386 :- not(f290), c374, f375, not(f376), c382, not(f383), c385 .
utility( r386 , 0 ).
query( r386 ).
0.1 :: f387 .
r388 :- not(f290), c374, f375, not(f376), c381, f387 .
utility( r388 , 0 ).
query( r388 ).
? :: c391 .
? :: c390 .
? :: c389 .
r392 :- not(f290), c374, f375, not(f376), c381, not(f387), c391 .
utility( r392 , 0 ).
query( r392 ).
r393 :- not(f290), c374, f375, not(f376), c381, not(f387), c390 .
utility( r393 , 0 ).
query( r393 ).
r394 :- not(f290), c374, f375, not(f376), c381, not(f387), c389 .
utility( r394 , 0 ).
query( r394 ).
? :: c396 .
? :: c395 .
0.1 :: f397 .
0.1 :: f398 .
r399 :- not(f290), c374, not(f375), c396, f397, f398 .
utility( r399 , 0 ).
query( r399 ).
? :: c400 .
r401 :- not(f290), c374, not(f375), c396, f397, not(f398), c400 .
utility( r401 , 0 ).
query( r401 ).
? :: c402 .
0.1 :: f403 .
r404 :- not(f290), c374, not(f375), c396, not(f397), c402, f403 .
utility( r404 , 0 ).
query( r404 ).
? :: c405 .
r406 :- not(f290), c374, not(f375), c396, not(f397), c402, not(f403), c405 .
utility( r406 , 0 ).
query( r406 ).
0.1 :: f407 .
0.1 :: f408 .
r409 :- not(f290), c374, not(f375), c395, f407, f408 .
utility( r409 , 0 ).
query( r409 ).
? :: c410 .
r411 :- not(f290), c374, not(f375), c395, f407, not(f408), c410 .
utility( r411 , 0 ).
query( r411 ).
? :: c413 .
? :: c412 .
0.1 :: f414 .
r415 :- not(f290), c374, not(f375), c395, not(f407), c413, f414 .
utility( r415 , 0 ).
query( r415 ).
? :: c416 .
r417 :- not(f290), c374, not(f375), c395, not(f407), c413, not(f414), c416 .
utility( r417 , 0 ).
query( r417 ).
0.1 :: f418 .
r419 :- not(f290), c374, not(f375), c395, not(f407), c412, f418 .
utility( r419 , 0 ).
query( r419 ).
? :: c422 .
? :: c421 .
? :: c420 .
r423 :- not(f290), c374, not(f375), c395, not(f407), c412, not(f418), c422 .
utility( r423 , 0 ).
query( r423 ).
r424 :- not(f290), c374, not(f375), c395, not(f407), c412, not(f418), c421 .
utility( r424 , 0 ).
query( r424 ).
r425 :- not(f290), c374, not(f375), c395, not(f407), c412, not(f418), c420 .
utility( r425 , 0 ).
query( r425 ).
0.1 :: f426 .
r427 :- not(f290), c373, f426 .
utility( r427 , 0 ).
query( r427 ).
? :: c429 .
? :: c428 .
r430 :- not(f290), c373, not(f426), c429 .
utility( r430 , 0 ).
query( r430 ).
0.1 :: f431 .
0.1 :: f432 .
r433 :- not(f290), c373, not(f426), c428, f431, f432 .
utility( r433 , 0 ).
query( r433 ).
? :: c436 .
? :: c435 .
? :: c434 .
r437 :- not(f290), c373, not(f426), c428, f431, not(f432), c436 .
utility( r437 , 0 ).
query( r437 ).
r438 :- not(f290), c373, not(f426), c428, f431, not(f432), c435 .
utility( r438 , 0 ).
query( r438 ).
r439 :- not(f290), c373, not(f426), c428, f431, not(f432), c434 .
utility( r439 , 0 ).
query( r439 ).
? :: c440 .
0.1 :: f441 .
r442 :- not(f290), c373, not(f426), c428, not(f431), c440, f441 .
utility( r442 , 0 ).
query( r442 ).
? :: c445 .
? :: c444 .
? :: c443 .
r446 :- not(f290), c373, not(f426), c428, not(f431), c440, not(f441), c445 .
utility( r446 , 0 ).
query( r446 ).
r447 :- not(f290), c373, not(f426), c428, not(f431), c440, not(f441), c444 .
utility( r447 , 0 ).
query( r447 ).
r448 :- not(f290), c373, not(f426), c428, not(f431), c440, not(f441), c443 .
utility( r448 , 0 ).
query( r448 ).
0.1 :: f449 .
0.1 :: f450 .
0.1 :: f451 .
r452 :- not(f290), c372, f449, f450, f451 .
utility( r452 , 0 ).
query( r452 ).
? :: c454 .
? :: c453 .
r455 :- not(f290), c372, f449, f450, not(f451), c454 .
utility( r455 , 0 ).
query( r455 ).
r456 :- not(f290), c372, f449, f450, not(f451), c453 .
utility( r456 , 0 ).
query( r456 ).
? :: c458 .
? :: c457 .
0.1 :: f459 .
r460 :- not(f290), c372, f449, not(f450), c458, f459 .
utility( r460 , 0 ).
query( r460 ).
? :: c462 .
? :: c461 .
r463 :- not(f290), c372, f449, not(f450), c458, not(f459), c462 .
utility( r463 , 0 ).
query( r463 ).
r464 :- not(f290), c372, f449, not(f450), c458, not(f459), c461 .
utility( r464 , 0 ).
query( r464 ).
0.1 :: f465 .
r466 :- not(f290), c372, f449, not(f450), c457, f465 .
utility( r466 , 0 ).
query( r466 ).
? :: c468 .
? :: c467 .
r469 :- not(f290), c372, f449, not(f450), c457, not(f465), c468 .
utility( r469 , 0 ).
query( r469 ).
r470 :- not(f290), c372, f449, not(f450), c457, not(f465), c467 .
utility( r470 , 0 ).
query( r470 ).
? :: c473 .
? :: c472 .
? :: c471 .
0.1 :: f474 .
0.1 :: f475 .
r476 :- not(f290), c372, not(f449), c473, f474, f475 .
utility( r476 , 0 ).
query( r476 ).
? :: c478 .
? :: c477 .
r479 :- not(f290), c372, not(f449), c473, f474, not(f475), c478 .
utility( r479 , 0 ).
query( r479 ).
r480 :- not(f290), c372, not(f449), c473, f474, not(f475), c477 .
utility( r480 , 0 ).
query( r480 ).
? :: c482 .
? :: c481 .
0.1 :: f483 .
r484 :- not(f290), c372, not(f449), c473, not(f474), c482, f483 .
utility( r484 , 0 ).
query( r484 ).
? :: c486 .
? :: c485 .
r487 :- not(f290), c372, not(f449), c473, not(f474), c482, not(f483), c486 .
utility( r487 , 0 ).
query( r487 ).
r488 :- not(f290), c372, not(f449), c473, not(f474), c482, not(f483), c485 .
utility( r488 , 0 ).
query( r488 ).
0.1 :: f489 .
r490 :- not(f290), c372, not(f449), c473, not(f474), c481, f489 .
utility( r490 , 0 ).
query( r490 ).
? :: c492 .
? :: c491 .
r493 :- not(f290), c372, not(f449), c473, not(f474), c481, not(f489), c492 .
utility( r493 , 0 ).
query( r493 ).
r494 :- not(f290), c372, not(f449), c473, not(f474), c481, not(f489), c491 .
utility( r494 , 0 ).
query( r494 ).
0.1 :: f495 .
0.1 :: f496 .
r497 :- not(f290), c372, not(f449), c472, f495, f496 .
utility( r497 , 0 ).
query( r497 ).
? :: c499 .
? :: c498 .
r500 :- not(f290), c372, not(f449), c472, f495, not(f496), c499 .
utility( r500 , 0 ).
query( r500 ).
r501 :- not(f290), c372, not(f449), c472, f495, not(f496), c498 .
utility( r501 , 0 ).
query( r501 ).
? :: c502 .
0.1 :: f503 .
r504 :- not(f290), c372, not(f449), c472, not(f495), c502, f503 .
utility( r504 , 0 ).
query( r504 ).
? :: c506 .
? :: c505 .
r507 :- not(f290), c372, not(f449), c472, not(f495), c502, not(f503), c506 .
utility( r507 , 0 ).
query( r507 ).
r508 :- not(f290), c372, not(f449), c472, not(f495), c502, not(f503), c505 .
utility( r508 , 0 ).
query( r508 ).
0.1 :: f509 .
0.1 :: f510 .
r511 :- not(f290), c372, not(f449), c471, f509, f510 .
utility( r511 , 0 ).
query( r511 ).
? :: c513 .
? :: c512 .
r514 :- not(f290), c372, not(f449), c471, f509, not(f510), c513 .
utility( r514 , 0 ).
query( r514 ).
r515 :- not(f290), c372, not(f449), c471, f509, not(f510), c512 .
utility( r515 , 0 ).
query( r515 ).
? :: c517 .
? :: c516 .
0.1 :: f518 .
r519 :- not(f290), c372, not(f449), c471, not(f509), c517, f518 .
utility( r519 , 0 ).
query( r519 ).
? :: c521 .
? :: c520 .
r522 :- not(f290), c372, not(f449), c471, not(f509), c517, not(f518), c521 .
utility( r522 , 0 ).
query( r522 ).
r523 :- not(f290), c372, not(f449), c471, not(f509), c517, not(f518), c520 .
utility( r523 , 0 ).
query( r523 ).
0.1 :: f524 .
r525 :- not(f290), c372, not(f449), c471, not(f509), c516, f524 .
utility( r525 , 0 ).
query( r525 ).
? :: c527 .
? :: c526 .
r528 :- not(f290), c372, not(f449), c471, not(f509), c516, not(f524), c527 .
utility( r528 , 0 ).
query( r528 ).
r529 :- not(f290), c372, not(f449), c471, not(f509), c516, not(f524), c526 .
utility( r529 , 0 ).
query( r529 ).
