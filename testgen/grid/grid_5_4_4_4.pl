0.1 :: f426 .
0.1 :: f427 .
0.1 :: f428 .
0.1 :: f429 .
r430 :- f426, f427, f428, f429 .
utility( r430 , 0 ).
query( r430 ).
? :: c431 .
r432 :- f426, f427, f428, not(f429), c431 .
utility( r432 , 0 ).
query( r432 ).
? :: c433 .
0.1 :: f434 .
r435 :- f426, f427, not(f428), c433, f434 .
utility( r435 , 0 ).
query( r435 ).
? :: c436 .
r437 :- f426, f427, not(f428), c433, not(f434), c436 .
utility( r437 , 0 ).
query( r437 ).
? :: c439 .
? :: c438 .
0.1 :: f440 .
0.1 :: f441 .
r442 :- f426, not(f427), c439, f440, f441 .
utility( r442 , 0 ).
query( r442 ).
? :: c443 .
r444 :- f426, not(f427), c439, f440, not(f441), c443 .
utility( r444 , 0 ).
query( r444 ).
? :: c445 .
0.1 :: f446 .
r447 :- f426, not(f427), c439, not(f440), c445, f446 .
utility( r447 , 0 ).
query( r447 ).
? :: c448 .
r449 :- f426, not(f427), c439, not(f440), c445, not(f446), c448 .
utility( r449 , 0 ).
query( r449 ).
0.1 :: f450 .
0.1 :: f451 .
r452 :- f426, not(f427), c438, f450, f451 .
utility( r452 , 0 ).
query( r452 ).
? :: c453 .
r454 :- f426, not(f427), c438, f450, not(f451), c453 .
utility( r454 , 0 ).
query( r454 ).
? :: c456 .
? :: c455 .
0.1 :: f457 .
r458 :- f426, not(f427), c438, not(f450), c456, f457 .
utility( r458 , 0 ).
query( r458 ).
? :: c459 .
r460 :- f426, not(f427), c438, not(f450), c456, not(f457), c459 .
utility( r460 , 0 ).
query( r460 ).
0.1 :: f461 .
r462 :- f426, not(f427), c438, not(f450), c455, f461 .
utility( r462 , 0 ).
query( r462 ).
? :: c463 .
r464 :- f426, not(f427), c438, not(f450), c455, not(f461), c463 .
utility( r464 , 0 ).
query( r464 ).
? :: c466 .
? :: c465 .
0.1 :: f467 .
0.1 :: f468 .
0.1 :: f469 .
r470 :- not(f426), c466, f467, f468, f469 .
utility( r470 , 0 ).
query( r470 ).
? :: c472 .
? :: c471 .
r473 :- not(f426), c466, f467, f468, not(f469), c472 .
utility( r473 , 0 ).
query( r473 ).
r474 :- not(f426), c466, f467, f468, not(f469), c471 .
utility( r474 , 0 ).
query( r474 ).
? :: c475 .
0.1 :: f476 .
r477 :- not(f426), c466, f467, not(f468), c475, f476 .
utility( r477 , 0 ).
query( r477 ).
? :: c479 .
? :: c478 .
r480 :- not(f426), c466, f467, not(f468), c475, not(f476), c479 .
utility( r480 , 0 ).
query( r480 ).
r481 :- not(f426), c466, f467, not(f468), c475, not(f476), c478 .
utility( r481 , 0 ).
query( r481 ).
? :: c483 .
? :: c482 .
0.1 :: f484 .
0.1 :: f485 .
r486 :- not(f426), c466, not(f467), c483, f484, f485 .
utility( r486 , 0 ).
query( r486 ).
? :: c487 .
r488 :- not(f426), c466, not(f467), c483, f484, not(f485), c487 .
utility( r488 , 0 ).
query( r488 ).
? :: c489 .
0.1 :: f490 .
r491 :- not(f426), c466, not(f467), c483, not(f484), c489, f490 .
utility( r491 , 0 ).
query( r491 ).
? :: c492 .
r493 :- not(f426), c466, not(f467), c483, not(f484), c489, not(f490), c492 .
utility( r493 , 0 ).
query( r493 ).
0.1 :: f494 .
0.1 :: f495 .
r496 :- not(f426), c466, not(f467), c482, f494, f495 .
utility( r496 , 0 ).
query( r496 ).
? :: c498 .
? :: c497 .
r499 :- not(f426), c466, not(f467), c482, f494, not(f495), c498 .
utility( r499 , 0 ).
query( r499 ).
r500 :- not(f426), c466, not(f467), c482, f494, not(f495), c497 .
utility( r500 , 0 ).
query( r500 ).
? :: c501 .
0.1 :: f502 .
r503 :- not(f426), c466, not(f467), c482, not(f494), c501, f502 .
utility( r503 , 0 ).
query( r503 ).
? :: c505 .
? :: c504 .
r506 :- not(f426), c466, not(f467), c482, not(f494), c501, not(f502), c505 .
utility( r506 , 0 ).
query( r506 ).
r507 :- not(f426), c466, not(f467), c482, not(f494), c501, not(f502), c504 .
utility( r507 , 0 ).
query( r507 ).
0.1 :: f508 .
0.1 :: f509 .
0.1 :: f510 .
r511 :- not(f426), c465, f508, f509, f510 .
utility( r511 , 0 ).
query( r511 ).
? :: c512 .
r513 :- not(f426), c465, f508, f509, not(f510), c512 .
utility( r513 , 0 ).
query( r513 ).
? :: c514 .
0.1 :: f515 .
r516 :- not(f426), c465, f508, not(f509), c514, f515 .
utility( r516 , 0 ).
query( r516 ).
? :: c517 .
r518 :- not(f426), c465, f508, not(f509), c514, not(f515), c517 .
utility( r518 , 0 ).
query( r518 ).
? :: c520 .
? :: c519 .
0.1 :: f521 .
0.1 :: f522 .
r523 :- not(f426), c465, not(f508), c520, f521, f522 .
utility( r523 , 0 ).
query( r523 ).
? :: c524 .
r525 :- not(f426), c465, not(f508), c520, f521, not(f522), c524 .
utility( r525 , 0 ).
query( r525 ).
? :: c526 .
0.1 :: f527 .
r528 :- not(f426), c465, not(f508), c520, not(f521), c526, f527 .
utility( r528 , 0 ).
query( r528 ).
? :: c529 .
r530 :- not(f426), c465, not(f508), c520, not(f521), c526, not(f527), c529 .
utility( r530 , 0 ).
query( r530 ).
0.1 :: f531 .
0.1 :: f532 .
r533 :- not(f426), c465, not(f508), c519, f531, f532 .
utility( r533 , 0 ).
query( r533 ).
? :: c534 .
r535 :- not(f426), c465, not(f508), c519, f531, not(f532), c534 .
utility( r535 , 0 ).
query( r535 ).
? :: c537 .
? :: c536 .
0.1 :: f538 .
r539 :- not(f426), c465, not(f508), c519, not(f531), c537, f538 .
utility( r539 , 0 ).
query( r539 ).
? :: c540 .
r541 :- not(f426), c465, not(f508), c519, not(f531), c537, not(f538), c540 .
utility( r541 , 0 ).
query( r541 ).
0.1 :: f542 .
r543 :- not(f426), c465, not(f508), c519, not(f531), c536, f542 .
utility( r543 , 0 ).
query( r543 ).
? :: c544 .
r545 :- not(f426), c465, not(f508), c519, not(f531), c536, not(f542), c544 .
utility( r545 , 0 ).
query( r545 ).
