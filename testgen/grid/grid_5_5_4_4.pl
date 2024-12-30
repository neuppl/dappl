0.1 :: f403 .
0.1 :: f404 .
0.1 :: f405 .
r406 :- f403, f404, f405 .
utility( r406 , 0 ).
query( r406 ).
? :: c408 .
? :: c407 .
r409 :- f403, f404, not(f405), c408 .
utility( r409 , 0 ).
query( r409 ).
0.1 :: f410 .
r411 :- f403, f404, not(f405), c407, f410 .
utility( r411 , 0 ).
query( r411 ).
? :: c412 .
r413 :- f403, f404, not(f405), c407, not(f410), c412 .
utility( r413 , 0 ).
query( r413 ).
? :: c415 .
? :: c414 .
0.1 :: f416 .
r417 :- f403, not(f404), c415, f416 .
utility( r417 , 0 ).
query( r417 ).
? :: c418 .
r419 :- f403, not(f404), c415, not(f416), c418 .
utility( r419 , 0 ).
query( r419 ).
0.1 :: f420 .
0.1 :: f421 .
r422 :- f403, not(f404), c414, f420, f421 .
utility( r422 , 0 ).
query( r422 ).
? :: c423 .
r424 :- f403, not(f404), c414, f420, not(f421), c423 .
utility( r424 , 0 ).
query( r424 ).
? :: c426 .
? :: c425 .
r427 :- f403, not(f404), c414, not(f420), c426 .
utility( r427 , 0 ).
query( r427 ).
0.1 :: f428 .
r429 :- f403, not(f404), c414, not(f420), c425, f428 .
utility( r429 , 0 ).
query( r429 ).
? :: c430 .
r431 :- f403, not(f404), c414, not(f420), c425, not(f428), c430 .
utility( r431 , 0 ).
query( r431 ).
? :: c433 .
? :: c432 .
0.1 :: f434 .
0.1 :: f435 .
r436 :- not(f403), c433, f434, f435 .
utility( r436 , 0 ).
query( r436 ).
? :: c437 .
r438 :- not(f403), c433, f434, not(f435), c437 .
utility( r438 , 0 ).
query( r438 ).
? :: c440 .
? :: c439 .
0.1 :: f441 .
r442 :- not(f403), c433, not(f434), c440, f441 .
utility( r442 , 0 ).
query( r442 ).
? :: c443 .
r444 :- not(f403), c433, not(f434), c440, not(f441), c443 .
utility( r444 , 0 ).
query( r444 ).
0.1 :: f445 .
r446 :- not(f403), c433, not(f434), c439, f445 .
utility( r446 , 0 ).
query( r446 ).
? :: c448 .
? :: c447 .
r449 :- not(f403), c433, not(f434), c439, not(f445), c448 .
utility( r449 , 0 ).
query( r449 ).
0.1 :: f450 .
r451 :- not(f403), c433, not(f434), c439, not(f445), c447, f450 .
utility( r451 , 0 ).
query( r451 ).
? :: c452 .
r453 :- not(f403), c433, not(f434), c439, not(f445), c447, not(f450), c452 .
utility( r453 , 0 ).
query( r453 ).
0.1 :: f454 .
0.1 :: f455 .
0.1 :: f456 .
r457 :- not(f403), c432, f454, f455, f456 .
utility( r457 , 0 ).
query( r457 ).
? :: c458 .
r459 :- not(f403), c432, f454, f455, not(f456), c458 .
utility( r459 , 0 ).
query( r459 ).
? :: c460 .
0.1 :: f461 .
r462 :- not(f403), c432, f454, not(f455), c460, f461 .
utility( r462 , 0 ).
query( r462 ).
? :: c463 .
r464 :- not(f403), c432, f454, not(f455), c460, not(f461), c463 .
utility( r464 , 0 ).
query( r464 ).
? :: c466 .
? :: c465 .
0.1 :: f467 .
0.1 :: f468 .
r469 :- not(f403), c432, not(f454), c466, f467, f468 .
utility( r469 , 0 ).
query( r469 ).
? :: c470 .
r471 :- not(f403), c432, not(f454), c466, f467, not(f468), c470 .
utility( r471 , 0 ).
query( r471 ).
? :: c472 .
0.1 :: f473 .
r474 :- not(f403), c432, not(f454), c466, not(f467), c472, f473 .
utility( r474 , 0 ).
query( r474 ).
? :: c475 .
r476 :- not(f403), c432, not(f454), c466, not(f467), c472, not(f473), c475 .
utility( r476 , 0 ).
query( r476 ).
0.1 :: f477 .
0.1 :: f478 .
r479 :- not(f403), c432, not(f454), c465, f477, f478 .
utility( r479 , 0 ).
query( r479 ).
? :: c480 .
r481 :- not(f403), c432, not(f454), c465, f477, not(f478), c480 .
utility( r481 , 0 ).
query( r481 ).
? :: c482 .
0.1 :: f483 .
r484 :- not(f403), c432, not(f454), c465, not(f477), c482, f483 .
utility( r484 , 0 ).
query( r484 ).
? :: c485 .
r486 :- not(f403), c432, not(f454), c465, not(f477), c482, not(f483), c485 .
utility( r486 , 0 ).
query( r486 ).
