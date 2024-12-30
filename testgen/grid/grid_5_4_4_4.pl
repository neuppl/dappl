0.1 :: f471 .
0.1 :: f472 .
0.1 :: f473 .
0.1 :: f474 .
r475 :- f471, f472, f473, f474 .
utility( r475 , 0 ).
query( r475 ).
? :: c477 .
? :: c476 .
r478 :- f471, f472, f473, not(f474), c477 .
utility( r478 , 0 ).
query( r478 ).
r479 :- f471, f472, f473, not(f474), c476 .
utility( r479 , 0 ).
query( r479 ).
? :: c480 .
0.1 :: f481 .
r482 :- f471, f472, not(f473), c480, f481 .
utility( r482 , 0 ).
query( r482 ).
? :: c484 .
? :: c483 .
r485 :- f471, f472, not(f473), c480, not(f481), c484 .
utility( r485 , 0 ).
query( r485 ).
r486 :- f471, f472, not(f473), c480, not(f481), c483 .
utility( r486 , 0 ).
query( r486 ).
? :: c487 .
0.1 :: f488 .
0.1 :: f489 .
r490 :- f471, not(f472), c487, f488, f489 .
utility( r490 , 0 ).
query( r490 ).
? :: c492 .
? :: c491 .
r493 :- f471, not(f472), c487, f488, not(f489), c492 .
utility( r493 , 0 ).
query( r493 ).
r494 :- f471, not(f472), c487, f488, not(f489), c491 .
utility( r494 , 0 ).
query( r494 ).
? :: c495 .
0.1 :: f496 .
r497 :- f471, not(f472), c487, not(f488), c495, f496 .
utility( r497 , 0 ).
query( r497 ).
? :: c499 .
? :: c498 .
r500 :- f471, not(f472), c487, not(f488), c495, not(f496), c499 .
utility( r500 , 0 ).
query( r500 ).
r501 :- f471, not(f472), c487, not(f488), c495, not(f496), c498 .
utility( r501 , 0 ).
query( r501 ).
? :: c503 .
? :: c502 .
0.1 :: f504 .
0.1 :: f505 .
0.1 :: f506 .
r507 :- not(f471), c503, f504, f505, f506 .
utility( r507 , 0 ).
query( r507 ).
? :: c509 .
? :: c508 .
r510 :- not(f471), c503, f504, f505, not(f506), c509 .
utility( r510 , 0 ).
query( r510 ).
r511 :- not(f471), c503, f504, f505, not(f506), c508 .
utility( r511 , 0 ).
query( r511 ).
? :: c513 .
? :: c512 .
0.1 :: f514 .
r515 :- not(f471), c503, f504, not(f505), c513, f514 .
utility( r515 , 0 ).
query( r515 ).
? :: c518 .
? :: c517 .
? :: c516 .
r519 :- not(f471), c503, f504, not(f505), c513, not(f514), c518 .
utility( r519 , 0 ).
query( r519 ).
r520 :- not(f471), c503, f504, not(f505), c513, not(f514), c517 .
utility( r520 , 0 ).
query( r520 ).
r521 :- not(f471), c503, f504, not(f505), c513, not(f514), c516 .
utility( r521 , 0 ).
query( r521 ).
0.1 :: f522 .
r523 :- not(f471), c503, f504, not(f505), c512, f522 .
utility( r523 , 0 ).
query( r523 ).
? :: c525 .
? :: c524 .
r526 :- not(f471), c503, f504, not(f505), c512, not(f522), c525 .
utility( r526 , 0 ).
query( r526 ).
r527 :- not(f471), c503, f504, not(f505), c512, not(f522), c524 .
utility( r527 , 0 ).
query( r527 ).
? :: c528 .
0.1 :: f529 .
0.1 :: f530 .
r531 :- not(f471), c503, not(f504), c528, f529, f530 .
utility( r531 , 0 ).
query( r531 ).
? :: c534 .
? :: c533 .
? :: c532 .
r535 :- not(f471), c503, not(f504), c528, f529, not(f530), c534 .
utility( r535 , 0 ).
query( r535 ).
r536 :- not(f471), c503, not(f504), c528, f529, not(f530), c533 .
utility( r536 , 0 ).
query( r536 ).
r537 :- not(f471), c503, not(f504), c528, f529, not(f530), c532 .
utility( r537 , 0 ).
query( r537 ).
? :: c539 .
? :: c538 .
0.1 :: f540 .
r541 :- not(f471), c503, not(f504), c528, not(f529), c539, f540 .
utility( r541 , 0 ).
query( r541 ).
? :: c544 .
? :: c543 .
? :: c542 .
r545 :- not(f471), c503, not(f504), c528, not(f529), c539, not(f540), c544 .
utility( r545 , 0 ).
query( r545 ).
r546 :- not(f471), c503, not(f504), c528, not(f529), c539, not(f540), c543 .
utility( r546 , 0 ).
query( r546 ).
r547 :- not(f471), c503, not(f504), c528, not(f529), c539, not(f540), c542 .
utility( r547 , 0 ).
query( r547 ).
0.1 :: f548 .
r549 :- not(f471), c503, not(f504), c528, not(f529), c538, f548 .
utility( r549 , 0 ).
query( r549 ).
? :: c551 .
? :: c550 .
r552 :- not(f471), c503, not(f504), c528, not(f529), c538, not(f548), c551 .
utility( r552 , 0 ).
query( r552 ).
r553 :- not(f471), c503, not(f504), c528, not(f529), c538, not(f548), c550 .
utility( r553 , 0 ).
query( r553 ).
0.1 :: f554 .
0.1 :: f555 .
0.1 :: f556 .
r557 :- not(f471), c502, f554, f555, f556 .
utility( r557 , 0 ).
query( r557 ).
? :: c559 .
? :: c558 .
r560 :- not(f471), c502, f554, f555, not(f556), c559 .
utility( r560 , 0 ).
query( r560 ).
r561 :- not(f471), c502, f554, f555, not(f556), c558 .
utility( r561 , 0 ).
query( r561 ).
? :: c562 .
0.1 :: f563 .
r564 :- not(f471), c502, f554, not(f555), c562, f563 .
utility( r564 , 0 ).
query( r564 ).
? :: c566 .
? :: c565 .
r567 :- not(f471), c502, f554, not(f555), c562, not(f563), c566 .
utility( r567 , 0 ).
query( r567 ).
r568 :- not(f471), c502, f554, not(f555), c562, not(f563), c565 .
utility( r568 , 0 ).
query( r568 ).
? :: c569 .
0.1 :: f570 .
0.1 :: f571 .
r572 :- not(f471), c502, not(f554), c569, f570, f571 .
utility( r572 , 0 ).
query( r572 ).
? :: c574 .
? :: c573 .
r575 :- not(f471), c502, not(f554), c569, f570, not(f571), c574 .
utility( r575 , 0 ).
query( r575 ).
r576 :- not(f471), c502, not(f554), c569, f570, not(f571), c573 .
utility( r576 , 0 ).
query( r576 ).
? :: c577 .
0.1 :: f578 .
r579 :- not(f471), c502, not(f554), c569, not(f570), c577, f578 .
utility( r579 , 0 ).
query( r579 ).
? :: c581 .
? :: c580 .
r582 :- not(f471), c502, not(f554), c569, not(f570), c577, not(f578), c581 .
utility( r582 , 0 ).
query( r582 ).
r583 :- not(f471), c502, not(f554), c569, not(f570), c577, not(f578), c580 .
utility( r583 , 0 ).
query( r583 ).
