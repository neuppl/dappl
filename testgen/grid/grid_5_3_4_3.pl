0.1 :: f314 .
0.1 :: f315 .
0.1 :: f316 .
0.1 :: f317 .
r318 :- f314, f315, f316, f317 .
utility( r318 , 0 ).
query( r318 ).
? :: c320 .
? :: c319 .
r321 :- f314, f315, f316, not(f317), c320 .
utility( r321 , 0 ).
query( r321 ).
r322 :- f314, f315, f316, not(f317), c319 .
utility( r322 , 0 ).
query( r322 ).
? :: c323 .
0.1 :: f324 .
r325 :- f314, f315, not(f316), c323, f324 .
utility( r325 , 0 ).
query( r325 ).
? :: c327 .
? :: c326 .
r328 :- f314, f315, not(f316), c323, not(f324), c327 .
utility( r328 , 0 ).
query( r328 ).
r329 :- f314, f315, not(f316), c323, not(f324), c326 .
utility( r329 , 0 ).
query( r329 ).
? :: c331 .
? :: c330 .
0.1 :: f332 .
0.1 :: f333 .
r334 :- f314, not(f315), c331, f332, f333 .
utility( r334 , 0 ).
query( r334 ).
? :: c336 .
? :: c335 .
r337 :- f314, not(f315), c331, f332, not(f333), c336 .
utility( r337 , 0 ).
query( r337 ).
r338 :- f314, not(f315), c331, f332, not(f333), c335 .
utility( r338 , 0 ).
query( r338 ).
? :: c340 .
? :: c339 .
0.1 :: f341 .
r342 :- f314, not(f315), c331, not(f332), c340, f341 .
utility( r342 , 0 ).
query( r342 ).
? :: c344 .
? :: c343 .
r345 :- f314, not(f315), c331, not(f332), c340, not(f341), c344 .
utility( r345 , 0 ).
query( r345 ).
r346 :- f314, not(f315), c331, not(f332), c340, not(f341), c343 .
utility( r346 , 0 ).
query( r346 ).
0.1 :: f347 .
r348 :- f314, not(f315), c331, not(f332), c339, f347 .
utility( r348 , 0 ).
query( r348 ).
? :: c350 .
? :: c349 .
r351 :- f314, not(f315), c331, not(f332), c339, not(f347), c350 .
utility( r351 , 0 ).
query( r351 ).
r352 :- f314, not(f315), c331, not(f332), c339, not(f347), c349 .
utility( r352 , 0 ).
query( r352 ).
0.1 :: f353 .
0.1 :: f354 .
r355 :- f314, not(f315), c330, f353, f354 .
utility( r355 , 0 ).
query( r355 ).
? :: c357 .
? :: c356 .
r358 :- f314, not(f315), c330, f353, not(f354), c357 .
utility( r358 , 0 ).
query( r358 ).
r359 :- f314, not(f315), c330, f353, not(f354), c356 .
utility( r359 , 0 ).
query( r359 ).
? :: c360 .
0.1 :: f361 .
r362 :- f314, not(f315), c330, not(f353), c360, f361 .
utility( r362 , 0 ).
query( r362 ).
? :: c364 .
? :: c363 .
r365 :- f314, not(f315), c330, not(f353), c360, not(f361), c364 .
utility( r365 , 0 ).
query( r365 ).
r366 :- f314, not(f315), c330, not(f353), c360, not(f361), c363 .
utility( r366 , 0 ).
query( r366 ).
? :: c368 .
? :: c367 .
0.1 :: f369 .
0.1 :: f370 .
0.1 :: f371 .
r372 :- not(f314), c368, f369, f370, f371 .
utility( r372 , 0 ).
query( r372 ).
? :: c374 .
? :: c373 .
r375 :- not(f314), c368, f369, f370, not(f371), c374 .
utility( r375 , 0 ).
query( r375 ).
r376 :- not(f314), c368, f369, f370, not(f371), c373 .
utility( r376 , 0 ).
query( r376 ).
? :: c378 .
? :: c377 .
0.1 :: f379 .
r380 :- not(f314), c368, f369, not(f370), c378, f379 .
utility( r380 , 0 ).
query( r380 ).
? :: c382 .
? :: c381 .
r383 :- not(f314), c368, f369, not(f370), c378, not(f379), c382 .
utility( r383 , 0 ).
query( r383 ).
r384 :- not(f314), c368, f369, not(f370), c378, not(f379), c381 .
utility( r384 , 0 ).
query( r384 ).
0.1 :: f385 .
r386 :- not(f314), c368, f369, not(f370), c377, f385 .
utility( r386 , 0 ).
query( r386 ).
? :: c388 .
? :: c387 .
r389 :- not(f314), c368, f369, not(f370), c377, not(f385), c388 .
utility( r389 , 0 ).
query( r389 ).
r390 :- not(f314), c368, f369, not(f370), c377, not(f385), c387 .
utility( r390 , 0 ).
query( r390 ).
? :: c392 .
? :: c391 .
0.1 :: f393 .
0.1 :: f394 .
r395 :- not(f314), c368, not(f369), c392, f393, f394 .
utility( r395 , 0 ).
query( r395 ).
? :: c397 .
? :: c396 .
r398 :- not(f314), c368, not(f369), c392, f393, not(f394), c397 .
utility( r398 , 0 ).
query( r398 ).
r399 :- not(f314), c368, not(f369), c392, f393, not(f394), c396 .
utility( r399 , 0 ).
query( r399 ).
? :: c401 .
? :: c400 .
0.1 :: f402 .
r403 :- not(f314), c368, not(f369), c392, not(f393), c401, f402 .
utility( r403 , 0 ).
query( r403 ).
? :: c405 .
? :: c404 .
r406 :- not(f314), c368, not(f369), c392, not(f393), c401, not(f402), c405 .
utility( r406 , 0 ).
query( r406 ).
r407 :- not(f314), c368, not(f369), c392, not(f393), c401, not(f402), c404 .
utility( r407 , 0 ).
query( r407 ).
0.1 :: f408 .
r409 :- not(f314), c368, not(f369), c392, not(f393), c400, f408 .
utility( r409 , 0 ).
query( r409 ).
? :: c411 .
? :: c410 .
r412 :- not(f314), c368, not(f369), c392, not(f393), c400, not(f408), c411 .
utility( r412 , 0 ).
query( r412 ).
r413 :- not(f314), c368, not(f369), c392, not(f393), c400, not(f408), c410 .
utility( r413 , 0 ).
query( r413 ).
0.1 :: f414 .
0.1 :: f415 .
r416 :- not(f314), c368, not(f369), c391, f414, f415 .
utility( r416 , 0 ).
query( r416 ).
? :: c418 .
? :: c417 .
r419 :- not(f314), c368, not(f369), c391, f414, not(f415), c418 .
utility( r419 , 0 ).
query( r419 ).
r420 :- not(f314), c368, not(f369), c391, f414, not(f415), c417 .
utility( r420 , 0 ).
query( r420 ).
? :: c421 .
0.1 :: f422 .
r423 :- not(f314), c368, not(f369), c391, not(f414), c421, f422 .
utility( r423 , 0 ).
query( r423 ).
? :: c425 .
? :: c424 .
r426 :- not(f314), c368, not(f369), c391, not(f414), c421, not(f422), c425 .
utility( r426 , 0 ).
query( r426 ).
r427 :- not(f314), c368, not(f369), c391, not(f414), c421, not(f422), c424 .
utility( r427 , 0 ).
query( r427 ).
0.1 :: f428 .
0.1 :: f429 .
0.1 :: f430 .
r431 :- not(f314), c367, f428, f429, f430 .
utility( r431 , 0 ).
query( r431 ).
? :: c434 .
? :: c433 .
? :: c432 .
r435 :- not(f314), c367, f428, f429, not(f430), c434 .
utility( r435 , 0 ).
query( r435 ).
r436 :- not(f314), c367, f428, f429, not(f430), c433 .
utility( r436 , 0 ).
query( r436 ).
r437 :- not(f314), c367, f428, f429, not(f430), c432 .
utility( r437 , 0 ).
query( r437 ).
? :: c438 .
0.1 :: f439 .
r440 :- not(f314), c367, f428, not(f429), c438, f439 .
utility( r440 , 0 ).
query( r440 ).
? :: c443 .
? :: c442 .
? :: c441 .
r444 :- not(f314), c367, f428, not(f429), c438, not(f439), c443 .
utility( r444 , 0 ).
query( r444 ).
r445 :- not(f314), c367, f428, not(f429), c438, not(f439), c442 .
utility( r445 , 0 ).
query( r445 ).
r446 :- not(f314), c367, f428, not(f429), c438, not(f439), c441 .
utility( r446 , 0 ).
query( r446 ).
? :: c448 .
? :: c447 .
0.1 :: f449 .
0.1 :: f450 .
r451 :- not(f314), c367, not(f428), c448, f449, f450 .
utility( r451 , 0 ).
query( r451 ).
? :: c454 .
? :: c453 .
? :: c452 .
r455 :- not(f314), c367, not(f428), c448, f449, not(f450), c454 .
utility( r455 , 0 ).
query( r455 ).
r456 :- not(f314), c367, not(f428), c448, f449, not(f450), c453 .
utility( r456 , 0 ).
query( r456 ).
r457 :- not(f314), c367, not(f428), c448, f449, not(f450), c452 .
utility( r457 , 0 ).
query( r457 ).
? :: c458 .
0.1 :: f459 .
r460 :- not(f314), c367, not(f428), c448, not(f449), c458, f459 .
utility( r460 , 0 ).
query( r460 ).
? :: c463 .
? :: c462 .
? :: c461 .
r464 :- not(f314), c367, not(f428), c448, not(f449), c458, not(f459), c463 .
utility( r464 , 0 ).
query( r464 ).
r465 :- not(f314), c367, not(f428), c448, not(f449), c458, not(f459), c462 .
utility( r465 , 0 ).
query( r465 ).
r466 :- not(f314), c367, not(f428), c448, not(f449), c458, not(f459), c461 .
utility( r466 , 0 ).
query( r466 ).
0.1 :: f467 .
0.1 :: f468 .
r469 :- not(f314), c367, not(f428), c447, f467, f468 .
utility( r469 , 0 ).
query( r469 ).
? :: c470 .
r471 :- not(f314), c367, not(f428), c447, f467, not(f468), c470 .
utility( r471 , 0 ).
query( r471 ).
? :: c472 .
0.1 :: f473 .
r474 :- not(f314), c367, not(f428), c447, not(f467), c472, f473 .
utility( r474 , 0 ).
query( r474 ).
? :: c475 .
r476 :- not(f314), c367, not(f428), c447, not(f467), c472, not(f473), c475 .
utility( r476 , 0 ).
query( r476 ).
