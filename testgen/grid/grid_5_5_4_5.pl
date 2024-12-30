0.1 :: f487 .
0.1 :: f488 .
0.1 :: f489 .
0.1 :: f490 .
r491 :- f487, f488, f489, f490 .
utility( r491 , 0 ).
query( r491 ).
? :: c492 .
r493 :- f487, f488, f489, not(f490), c492 .
utility( r493 , 0 ).
query( r493 ).
? :: c495 .
? :: c494 .
0.1 :: f496 .
r497 :- f487, f488, not(f489), c495, f496 .
utility( r497 , 0 ).
query( r497 ).
? :: c498 .
r499 :- f487, f488, not(f489), c495, not(f496), c498 .
utility( r499 , 0 ).
query( r499 ).
0.1 :: f500 .
r501 :- f487, f488, not(f489), c494, f500 .
utility( r501 , 0 ).
query( r501 ).
? :: c503 .
? :: c502 .
r504 :- f487, f488, not(f489), c494, not(f500), c503 .
utility( r504 , 0 ).
query( r504 ).
r505 :- f487, f488, not(f489), c494, not(f500), c502 .
utility( r505 , 0 ).
query( r505 ).
? :: c506 .
0.1 :: f507 .
0.1 :: f508 .
r509 :- f487, not(f488), c506, f507, f508 .
utility( r509 , 0 ).
query( r509 ).
? :: c510 .
r511 :- f487, not(f488), c506, f507, not(f508), c510 .
utility( r511 , 0 ).
query( r511 ).
? :: c513 .
? :: c512 .
0.1 :: f514 .
r515 :- f487, not(f488), c506, not(f507), c513, f514 .
utility( r515 , 0 ).
query( r515 ).
? :: c516 .
r517 :- f487, not(f488), c506, not(f507), c513, not(f514), c516 .
utility( r517 , 0 ).
query( r517 ).
0.1 :: f518 .
r519 :- f487, not(f488), c506, not(f507), c512, f518 .
utility( r519 , 0 ).
query( r519 ).
? :: c521 .
? :: c520 .
r522 :- f487, not(f488), c506, not(f507), c512, not(f518), c521 .
utility( r522 , 0 ).
query( r522 ).
r523 :- f487, not(f488), c506, not(f507), c512, not(f518), c520 .
utility( r523 , 0 ).
query( r523 ).
? :: c526 .
? :: c525 .
? :: c524 .
0.1 :: f527 .
0.1 :: f528 .
0.1 :: f529 .
r530 :- not(f487), c526, f527, f528, f529 .
utility( r530 , 0 ).
query( r530 ).
? :: c531 .
r532 :- not(f487), c526, f527, f528, not(f529), c531 .
utility( r532 , 0 ).
query( r532 ).
? :: c533 .
0.1 :: f534 .
r535 :- not(f487), c526, f527, not(f528), c533, f534 .
utility( r535 , 0 ).
query( r535 ).
? :: c536 .
r537 :- not(f487), c526, f527, not(f528), c533, not(f534), c536 .
utility( r537 , 0 ).
query( r537 ).
? :: c539 .
? :: c538 .
0.1 :: f540 .
0.1 :: f541 .
r542 :- not(f487), c526, not(f527), c539, f540, f541 .
utility( r542 , 0 ).
query( r542 ).
? :: c543 .
r544 :- not(f487), c526, not(f527), c539, f540, not(f541), c543 .
utility( r544 , 0 ).
query( r544 ).
? :: c545 .
0.1 :: f546 .
r547 :- not(f487), c526, not(f527), c539, not(f540), c545, f546 .
utility( r547 , 0 ).
query( r547 ).
? :: c548 .
r549 :- not(f487), c526, not(f527), c539, not(f540), c545, not(f546), c548 .
utility( r549 , 0 ).
query( r549 ).
0.1 :: f550 .
0.1 :: f551 .
r552 :- not(f487), c526, not(f527), c538, f550, f551 .
utility( r552 , 0 ).
query( r552 ).
? :: c553 .
r554 :- not(f487), c526, not(f527), c538, f550, not(f551), c553 .
utility( r554 , 0 ).
query( r554 ).
? :: c555 .
0.1 :: f556 .
r557 :- not(f487), c526, not(f527), c538, not(f550), c555, f556 .
utility( r557 , 0 ).
query( r557 ).
? :: c558 .
r559 :- not(f487), c526, not(f527), c538, not(f550), c555, not(f556), c558 .
utility( r559 , 0 ).
query( r559 ).
0.1 :: f560 .
0.1 :: f561 .
0.1 :: f562 .
r563 :- not(f487), c525, f560, f561, f562 .
utility( r563 , 0 ).
query( r563 ).
? :: c565 .
? :: c564 .
r566 :- not(f487), c525, f560, f561, not(f562), c565 .
utility( r566 , 0 ).
query( r566 ).
r567 :- not(f487), c525, f560, f561, not(f562), c564 .
utility( r567 , 0 ).
query( r567 ).
? :: c569 .
? :: c568 .
0.1 :: f570 .
r571 :- not(f487), c525, f560, not(f561), c569, f570 .
utility( r571 , 0 ).
query( r571 ).
? :: c572 .
r573 :- not(f487), c525, f560, not(f561), c569, not(f570), c572 .
utility( r573 , 0 ).
query( r573 ).
0.1 :: f574 .
r575 :- not(f487), c525, f560, not(f561), c568, f574 .
utility( r575 , 0 ).
query( r575 ).
? :: c577 .
? :: c576 .
r578 :- not(f487), c525, f560, not(f561), c568, not(f574), c577 .
utility( r578 , 0 ).
query( r578 ).
r579 :- not(f487), c525, f560, not(f561), c568, not(f574), c576 .
utility( r579 , 0 ).
query( r579 ).
? :: c580 .
0.1 :: f581 .
0.1 :: f582 .
r583 :- not(f487), c525, not(f560), c580, f581, f582 .
utility( r583 , 0 ).
query( r583 ).
? :: c585 .
? :: c584 .
r586 :- not(f487), c525, not(f560), c580, f581, not(f582), c585 .
utility( r586 , 0 ).
query( r586 ).
r587 :- not(f487), c525, not(f560), c580, f581, not(f582), c584 .
utility( r587 , 0 ).
query( r587 ).
? :: c589 .
? :: c588 .
0.1 :: f590 .
r591 :- not(f487), c525, not(f560), c580, not(f581), c589, f590 .
utility( r591 , 0 ).
query( r591 ).
? :: c592 .
r593 :- not(f487), c525, not(f560), c580, not(f581), c589, not(f590), c592 .
utility( r593 , 0 ).
query( r593 ).
0.1 :: f594 .
r595 :- not(f487), c525, not(f560), c580, not(f581), c588, f594 .
utility( r595 , 0 ).
query( r595 ).
? :: c597 .
? :: c596 .
r598 :- not(f487), c525, not(f560), c580, not(f581), c588, not(f594), c597 .
utility( r598 , 0 ).
query( r598 ).
r599 :- not(f487), c525, not(f560), c580, not(f581), c588, not(f594), c596 .
utility( r599 , 0 ).
query( r599 ).
0.1 :: f600 .
0.1 :: f601 .
0.1 :: f602 .
r603 :- not(f487), c524, f600, f601, f602 .
utility( r603 , 0 ).
query( r603 ).
? :: c604 .
r605 :- not(f487), c524, f600, f601, not(f602), c604 .
utility( r605 , 0 ).
query( r605 ).
? :: c607 .
? :: c606 .
0.1 :: f608 .
r609 :- not(f487), c524, f600, not(f601), c607, f608 .
utility( r609 , 0 ).
query( r609 ).
? :: c610 .
r611 :- not(f487), c524, f600, not(f601), c607, not(f608), c610 .
utility( r611 , 0 ).
query( r611 ).
0.1 :: f612 .
r613 :- not(f487), c524, f600, not(f601), c606, f612 .
utility( r613 , 0 ).
query( r613 ).
? :: c614 .
r615 :- not(f487), c524, f600, not(f601), c606, not(f612), c614 .
utility( r615 , 0 ).
query( r615 ).
? :: c618 .
? :: c617 .
? :: c616 .
0.1 :: f619 .
0.1 :: f620 .
r621 :- not(f487), c524, not(f600), c618, f619, f620 .
utility( r621 , 0 ).
query( r621 ).
? :: c623 .
? :: c622 .
r624 :- not(f487), c524, not(f600), c618, f619, not(f620), c623 .
utility( r624 , 0 ).
query( r624 ).
r625 :- not(f487), c524, not(f600), c618, f619, not(f620), c622 .
utility( r625 , 0 ).
query( r625 ).
? :: c626 .
0.1 :: f627 .
r628 :- not(f487), c524, not(f600), c618, not(f619), c626, f627 .
utility( r628 , 0 ).
query( r628 ).
? :: c630 .
? :: c629 .
r631 :- not(f487), c524, not(f600), c618, not(f619), c626, not(f627), c630 .
utility( r631 , 0 ).
query( r631 ).
r632 :- not(f487), c524, not(f600), c618, not(f619), c626, not(f627), c629 .
utility( r632 , 0 ).
query( r632 ).
0.1 :: f633 .
0.1 :: f634 .
r635 :- not(f487), c524, not(f600), c617, f633, f634 .
utility( r635 , 0 ).
query( r635 ).
? :: c636 .
r637 :- not(f487), c524, not(f600), c617, f633, not(f634), c636 .
utility( r637 , 0 ).
query( r637 ).
? :: c639 .
? :: c638 .
0.1 :: f640 .
r641 :- not(f487), c524, not(f600), c617, not(f633), c639, f640 .
utility( r641 , 0 ).
query( r641 ).
? :: c642 .
r643 :- not(f487), c524, not(f600), c617, not(f633), c639, not(f640), c642 .
utility( r643 , 0 ).
query( r643 ).
0.1 :: f644 .
r645 :- not(f487), c524, not(f600), c617, not(f633), c638, f644 .
utility( r645 , 0 ).
query( r645 ).
? :: c646 .
r647 :- not(f487), c524, not(f600), c617, not(f633), c638, not(f644), c646 .
utility( r647 , 0 ).
query( r647 ).
0.1 :: f648 .
0.1 :: f649 .
r650 :- not(f487), c524, not(f600), c616, f648, f649 .
utility( r650 , 0 ).
query( r650 ).
? :: c651 .
r652 :- not(f487), c524, not(f600), c616, f648, not(f649), c651 .
utility( r652 , 0 ).
query( r652 ).
? :: c654 .
? :: c653 .
0.1 :: f655 .
r656 :- not(f487), c524, not(f600), c616, not(f648), c654, f655 .
utility( r656 , 0 ).
query( r656 ).
? :: c657 .
r658 :- not(f487), c524, not(f600), c616, not(f648), c654, not(f655), c657 .
utility( r658 , 0 ).
query( r658 ).
0.1 :: f659 .
r660 :- not(f487), c524, not(f600), c616, not(f648), c653, f659 .
utility( r660 , 0 ).
query( r660 ).
? :: c662 .
? :: c661 .
r663 :- not(f487), c524, not(f600), c616, not(f648), c653, not(f659), c662 .
utility( r663 , 0 ).
query( r663 ).
r664 :- not(f487), c524, not(f600), c616, not(f648), c653, not(f659), c661 .
utility( r664 , 0 ).
query( r664 ).
