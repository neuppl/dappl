0.1 :: f477 .
0.1 :: f478 .
0.1 :: f479 .
0.1 :: f480 .
r481 :- f477, f478, f479, f480 .
utility( r481 , 0 ).
query( r481 ).
? :: c482 .
r483 :- f477, f478, f479, not(f480), c482 .
utility( r483 , 0 ).
query( r483 ).
? :: c484 .
0.1 :: f485 .
r486 :- f477, f478, not(f479), c484, f485 .
utility( r486 , 0 ).
query( r486 ).
? :: c487 .
r488 :- f477, f478, not(f479), c484, not(f485), c487 .
utility( r488 , 0 ).
query( r488 ).
? :: c489 .
0.1 :: f490 .
0.1 :: f491 .
r492 :- f477, not(f478), c489, f490, f491 .
utility( r492 , 0 ).
query( r492 ).
? :: c493 .
r494 :- f477, not(f478), c489, f490, not(f491), c493 .
utility( r494 , 0 ).
query( r494 ).
? :: c495 .
0.1 :: f496 .
r497 :- f477, not(f478), c489, not(f490), c495, f496 .
utility( r497 , 0 ).
query( r497 ).
? :: c498 .
r499 :- f477, not(f478), c489, not(f490), c495, not(f496), c498 .
utility( r499 , 0 ).
query( r499 ).
? :: c501 .
? :: c500 .
0.1 :: f502 .
0.1 :: f503 .
0.1 :: f504 .
r505 :- not(f477), c501, f502, f503, f504 .
utility( r505 , 0 ).
query( r505 ).
? :: c506 .
r507 :- not(f477), c501, f502, f503, not(f504), c506 .
utility( r507 , 0 ).
query( r507 ).
? :: c508 .
0.1 :: f509 .
r510 :- not(f477), c501, f502, not(f503), c508, f509 .
utility( r510 , 0 ).
query( r510 ).
? :: c511 .
r512 :- not(f477), c501, f502, not(f503), c508, not(f509), c511 .
utility( r512 , 0 ).
query( r512 ).
? :: c513 .
0.1 :: f514 .
0.1 :: f515 .
r516 :- not(f477), c501, not(f502), c513, f514, f515 .
utility( r516 , 0 ).
query( r516 ).
? :: c517 .
r518 :- not(f477), c501, not(f502), c513, f514, not(f515), c517 .
utility( r518 , 0 ).
query( r518 ).
? :: c519 .
0.1 :: f520 .
r521 :- not(f477), c501, not(f502), c513, not(f514), c519, f520 .
utility( r521 , 0 ).
query( r521 ).
? :: c522 .
r523 :- not(f477), c501, not(f502), c513, not(f514), c519, not(f520), c522 .
utility( r523 , 0 ).
query( r523 ).
r524 :- not(f477), c500 .
utility( r524 , 0 ).
query( r524 ).
