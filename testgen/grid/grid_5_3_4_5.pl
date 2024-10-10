0.1 :: f565 .
0.1 :: f566 .
0.1 :: f567 .
r568 :- f565, f566, f567 .
utility( r568 , 0 ).
query( r568 ).
? :: c569 .
r570 :- f565, f566, not(f567), c569 .
utility( r570 , 0 ).
query( r570 ).
? :: c573 .
? :: c572 .
? :: c571 .
0.1 :: f574 .
r575 :- f565, not(f566), c573, f574 .
utility( r575 , 0 ).
query( r575 ).
? :: c577 .
? :: c576 .
0.1 :: f578 .
r579 :- f565, not(f566), c573, not(f574), c577, f578 .
utility( r579 , 0 ).
query( r579 ).
? :: c581 .
? :: c580 .
r582 :- f565, not(f566), c573, not(f574), c577, not(f578), c581 .
utility( r582 , 0 ).
query( r582 ).
r583 :- f565, not(f566), c573, not(f574), c577, not(f578), c580 .
utility( r583 , 0 ).
query( r583 ).
r584 :- f565, not(f566), c573, not(f574), c576 .
utility( r584 , 0 ).
query( r584 ).
0.1 :: f585 .
r586 :- f565, not(f566), c572, f585 .
utility( r586 , 0 ).
query( r586 ).
? :: c587 .
r588 :- f565, not(f566), c572, not(f585), c587 .
utility( r588 , 0 ).
query( r588 ).
0.1 :: f589 .
r590 :- f565, not(f566), c571, f589 .
utility( r590 , 1 ).
query( r590 ).
? :: c593 .
? :: c592 .
? :: c591 .
r594 :- f565, not(f566), c571, not(f589), c593 .
utility( r594 , 0 ).
query( r594 ).
r595 :- f565, not(f566), c571, not(f589), c592 .
utility( r595 , 0 ).
query( r595 ).
r596 :- f565, not(f566), c571, not(f589), c591 .
utility( r596 , 1 ).
query( r596 ).
? :: c599 .
? :: c598 .
? :: c597 .
0.1 :: f600 .
0.1 :: f601 .
0.1 :: f602 .
r603 :- not(f565), c599, f600, f601, f602 .
utility( r603 , 0 ).
query( r603 ).
? :: c604 .
r605 :- not(f565), c599, f600, f601, not(f602), c604 .
utility( r605 , 0 ).
query( r605 ).
? :: c607 .
? :: c606 .
0.1 :: f608 .
r609 :- not(f565), c599, f600, not(f601), c607, f608 .
utility( r609 , 0 ).
query( r609 ).
? :: c610 .
r611 :- not(f565), c599, f600, not(f601), c607, not(f608), c610 .
utility( r611 , 0 ).
query( r611 ).
0.1 :: f612 .
r613 :- not(f565), c599, f600, not(f601), c606, f612 .
utility( r613 , 0 ).
query( r613 ).
? :: c614 .
r615 :- not(f565), c599, f600, not(f601), c606, not(f612), c614 .
utility( r615 , 0 ).
query( r615 ).
? :: c617 .
? :: c616 .
0.1 :: f618 .
0.1 :: f619 .
r620 :- not(f565), c599, not(f600), c617, f618, f619 .
utility( r620 , 0 ).
query( r620 ).
? :: c621 .
r622 :- not(f565), c599, not(f600), c617, f618, not(f619), c621 .
utility( r622 , 0 ).
query( r622 ).
? :: c624 .
? :: c623 .
0.1 :: f625 .
r626 :- not(f565), c599, not(f600), c617, not(f618), c624, f625 .
utility( r626 , 0 ).
query( r626 ).
? :: c627 .
r628 :- not(f565), c599, not(f600), c617, not(f618), c624, not(f625), c627 .
utility( r628 , 0 ).
query( r628 ).
0.1 :: f629 .
r630 :- not(f565), c599, not(f600), c617, not(f618), c623, f629 .
utility( r630 , 0 ).
query( r630 ).
? :: c631 .
r632 :- not(f565), c599, not(f600), c617, not(f618), c623, not(f629), c631 .
utility( r632 , 0 ).
query( r632 ).
0.1 :: f633 .
0.1 :: f634 .
r635 :- not(f565), c599, not(f600), c616, f633, f634 .
utility( r635 , 0 ).
query( r635 ).
? :: c636 .
r637 :- not(f565), c599, not(f600), c616, f633, not(f634), c636 .
utility( r637 , 0 ).
query( r637 ).
? :: c639 .
? :: c638 .
0.1 :: f640 .
r641 :- not(f565), c599, not(f600), c616, not(f633), c639, f640 .
utility( r641 , 0 ).
query( r641 ).
? :: c642 .
r643 :- not(f565), c599, not(f600), c616, not(f633), c639, not(f640), c642 .
utility( r643 , 0 ).
query( r643 ).
0.1 :: f644 .
r645 :- not(f565), c599, not(f600), c616, not(f633), c638, f644 .
utility( r645 , 0 ).
query( r645 ).
? :: c646 .
r647 :- not(f565), c599, not(f600), c616, not(f633), c638, not(f644), c646 .
utility( r647 , 0 ).
query( r647 ).
0.1 :: f648 .
0.1 :: f649 .
0.1 :: f650 .
r651 :- not(f565), c598, f648, f649, f650 .
utility( r651 , 0 ).
query( r651 ).
? :: c652 .
r653 :- not(f565), c598, f648, f649, not(f650), c652 .
utility( r653 , 0 ).
query( r653 ).
? :: c654 .
0.1 :: f655 .
r656 :- not(f565), c598, f648, not(f649), c654, f655 .
utility( r656 , 0 ).
query( r656 ).
? :: c657 .
r658 :- not(f565), c598, f648, not(f649), c654, not(f655), c657 .
utility( r658 , 0 ).
query( r658 ).
? :: c659 .
0.1 :: f660 .
0.1 :: f661 .
r662 :- not(f565), c598, not(f648), c659, f660, f661 .
utility( r662 , 0 ).
query( r662 ).
? :: c663 .
r664 :- not(f565), c598, not(f648), c659, f660, not(f661), c663 .
utility( r664 , 0 ).
query( r664 ).
? :: c665 .
0.1 :: f666 .
r667 :- not(f565), c598, not(f648), c659, not(f660), c665, f666 .
utility( r667 , 0 ).
query( r667 ).
? :: c668 .
r669 :- not(f565), c598, not(f648), c659, not(f660), c665, not(f666), c668 .
utility( r669 , 0 ).
query( r669 ).
0.1 :: f670 .
0.1 :: f671 .
r672 :- not(f565), c597, f670, f671 .
utility( r672 , 0 ).
query( r672 ).
? :: c674 .
? :: c673 .
0.1 :: f675 .
r676 :- not(f565), c597, f670, not(f671), c674, f675 .
utility( r676 , 0 ).
query( r676 ).
? :: c678 .
? :: c677 .
r679 :- not(f565), c597, f670, not(f671), c674, not(f675), c678 .
utility( r679 , 0 ).
query( r679 ).
r680 :- not(f565), c597, f670, not(f671), c674, not(f675), c677 .
utility( r680 , 0 ).
query( r680 ).
r681 :- not(f565), c597, f670, not(f671), c673 .
utility( r681 , 0 ).
query( r681 ).
? :: c684 .
? :: c683 .
? :: c682 .
0.1 :: f685 .
0.1 :: f686 .
r687 :- not(f565), c597, not(f670), c684, f685, f686 .
utility( r687 , 0 ).
query( r687 ).
? :: c689 .
? :: c688 .
r690 :- not(f565), c597, not(f670), c684, f685, not(f686), c689 .
utility( r690 , 0 ).
query( r690 ).
r691 :- not(f565), c597, not(f670), c684, f685, not(f686), c688 .
utility( r691 , 0 ).
query( r691 ).
? :: c693 .
? :: c692 .
0.1 :: f694 .
r695 :- not(f565), c597, not(f670), c684, not(f685), c693, f694 .
utility( r695 , 0 ).
query( r695 ).
? :: c697 .
? :: c696 .
r698 :- not(f565), c597, not(f670), c684, not(f685), c693, not(f694), c697 .
utility( r698 , 0 ).
query( r698 ).
r699 :- not(f565), c597, not(f670), c684, not(f685), c693, not(f694), c696 .
utility( r699 , 0 ).
query( r699 ).
r700 :- not(f565), c597, not(f670), c684, not(f685), c692 .
utility( r700 , 0 ).
query( r700 ).
0.1 :: f701 .
r702 :- not(f565), c597, not(f670), c683, f701 .
utility( r702 , 0 ).
query( r702 ).
? :: c703 .
r704 :- not(f565), c597, not(f670), c683, not(f701), c703 .
utility( r704 , 0 ).
query( r704 ).
0.1 :: f705 .
r706 :- not(f565), c597, not(f670), c682, f705 .
utility( r706 , 0 ).
query( r706 ).
? :: c709 .
? :: c708 .
? :: c707 .
r710 :- not(f565), c597, not(f670), c682, not(f705), c709 .
utility( r710 , 0 ).
query( r710 ).
r711 :- not(f565), c597, not(f670), c682, not(f705), c708 .
utility( r711 , 0 ).
query( r711 ).
r712 :- not(f565), c597, not(f670), c682, not(f705), c707 .
utility( r712 , 1 ).
query( r712 ).
