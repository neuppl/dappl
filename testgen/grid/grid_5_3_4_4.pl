0.1 :: f530 .
0.1 :: f531 .
0.1 :: f532 .
0.1 :: f533 .
r534 :- f530, f531, f532, f533 .
utility( r534 , 0 ).
query( r534 ).
? :: c536 .
? :: c535 .
r537 :- f530, f531, f532, not(f533), c536 .
utility( r537 , 0 ).
query( r537 ).
r538 :- f530, f531, f532, not(f533), c535 .
utility( r538 , 0 ).
query( r538 ).
? :: c539 .
0.1 :: f540 .
r541 :- f530, f531, not(f532), c539, f540 .
utility( r541 , 0 ).
query( r541 ).
? :: c543 .
? :: c542 .
r544 :- f530, f531, not(f532), c539, not(f540), c543 .
utility( r544 , 0 ).
query( r544 ).
r545 :- f530, f531, not(f532), c539, not(f540), c542 .
utility( r545 , 0 ).
query( r545 ).
? :: c546 .
0.1 :: f547 .
0.1 :: f548 .
r549 :- f530, not(f531), c546, f547, f548 .
utility( r549 , 0 ).
query( r549 ).
? :: c551 .
? :: c550 .
r552 :- f530, not(f531), c546, f547, not(f548), c551 .
utility( r552 , 0 ).
query( r552 ).
r553 :- f530, not(f531), c546, f547, not(f548), c550 .
utility( r553 , 0 ).
query( r553 ).
? :: c554 .
0.1 :: f555 .
r556 :- f530, not(f531), c546, not(f547), c554, f555 .
utility( r556 , 0 ).
query( r556 ).
? :: c558 .
? :: c557 .
r559 :- f530, not(f531), c546, not(f547), c554, not(f555), c558 .
utility( r559 , 0 ).
query( r559 ).
r560 :- f530, not(f531), c546, not(f547), c554, not(f555), c557 .
utility( r560 , 0 ).
query( r560 ).
? :: c563 .
? :: c562 .
? :: c561 .
0.1 :: f564 .
0.1 :: f565 .
0.1 :: f566 .
r567 :- not(f530), c563, f564, f565, f566 .
utility( r567 , 0 ).
query( r567 ).
? :: c568 .
r569 :- not(f530), c563, f564, f565, not(f566), c568 .
utility( r569 , 0 ).
query( r569 ).
? :: c571 .
? :: c570 .
0.1 :: f572 .
r573 :- not(f530), c563, f564, not(f565), c571, f572 .
utility( r573 , 0 ).
query( r573 ).
? :: c574 .
r575 :- not(f530), c563, f564, not(f565), c571, not(f572), c574 .
utility( r575 , 0 ).
query( r575 ).
0.1 :: f576 .
r577 :- not(f530), c563, f564, not(f565), c570, f576 .
utility( r577 , 0 ).
query( r577 ).
? :: c578 .
r579 :- not(f530), c563, f564, not(f565), c570, not(f576), c578 .
utility( r579 , 0 ).
query( r579 ).
? :: c581 .
? :: c580 .
0.1 :: f582 .
0.1 :: f583 .
r584 :- not(f530), c563, not(f564), c581, f582, f583 .
utility( r584 , 0 ).
query( r584 ).
? :: c585 .
r586 :- not(f530), c563, not(f564), c581, f582, not(f583), c585 .
utility( r586 , 0 ).
query( r586 ).
? :: c588 .
? :: c587 .
0.1 :: f589 .
r590 :- not(f530), c563, not(f564), c581, not(f582), c588, f589 .
utility( r590 , 0 ).
query( r590 ).
? :: c591 .
r592 :- not(f530), c563, not(f564), c581, not(f582), c588, not(f589), c591 .
utility( r592 , 0 ).
query( r592 ).
0.1 :: f593 .
r594 :- not(f530), c563, not(f564), c581, not(f582), c587, f593 .
utility( r594 , 0 ).
query( r594 ).
? :: c595 .
r596 :- not(f530), c563, not(f564), c581, not(f582), c587, not(f593), c595 .
utility( r596 , 0 ).
query( r596 ).
0.1 :: f597 .
0.1 :: f598 .
r599 :- not(f530), c563, not(f564), c580, f597, f598 .
utility( r599 , 0 ).
query( r599 ).
? :: c600 .
r601 :- not(f530), c563, not(f564), c580, f597, not(f598), c600 .
utility( r601 , 0 ).
query( r601 ).
? :: c603 .
? :: c602 .
0.1 :: f604 .
r605 :- not(f530), c563, not(f564), c580, not(f597), c603, f604 .
utility( r605 , 0 ).
query( r605 ).
? :: c606 .
r607 :- not(f530), c563, not(f564), c580, not(f597), c603, not(f604), c606 .
utility( r607 , 0 ).
query( r607 ).
0.1 :: f608 .
r609 :- not(f530), c563, not(f564), c580, not(f597), c602, f608 .
utility( r609 , 0 ).
query( r609 ).
? :: c610 .
r611 :- not(f530), c563, not(f564), c580, not(f597), c602, not(f608), c610 .
utility( r611 , 0 ).
query( r611 ).
0.1 :: f612 .
0.1 :: f613 .
0.1 :: f614 .
r615 :- not(f530), c562, f612, f613, f614 .
utility( r615 , 0 ).
query( r615 ).
? :: c617 .
? :: c616 .
r618 :- not(f530), c562, f612, f613, not(f614), c617 .
utility( r618 , 0 ).
query( r618 ).
r619 :- not(f530), c562, f612, f613, not(f614), c616 .
utility( r619 , 0 ).
query( r619 ).
? :: c620 .
0.1 :: f621 .
r622 :- not(f530), c562, f612, not(f613), c620, f621 .
utility( r622 , 0 ).
query( r622 ).
? :: c624 .
? :: c623 .
r625 :- not(f530), c562, f612, not(f613), c620, not(f621), c624 .
utility( r625 , 0 ).
query( r625 ).
r626 :- not(f530), c562, f612, not(f613), c620, not(f621), c623 .
utility( r626 , 0 ).
query( r626 ).
? :: c627 .
0.1 :: f628 .
0.1 :: f629 .
r630 :- not(f530), c562, not(f612), c627, f628, f629 .
utility( r630 , 0 ).
query( r630 ).
? :: c632 .
? :: c631 .
r633 :- not(f530), c562, not(f612), c627, f628, not(f629), c632 .
utility( r633 , 0 ).
query( r633 ).
r634 :- not(f530), c562, not(f612), c627, f628, not(f629), c631 .
utility( r634 , 0 ).
query( r634 ).
? :: c635 .
0.1 :: f636 .
r637 :- not(f530), c562, not(f612), c627, not(f628), c635, f636 .
utility( r637 , 0 ).
query( r637 ).
? :: c639 .
? :: c638 .
r640 :- not(f530), c562, not(f612), c627, not(f628), c635, not(f636), c639 .
utility( r640 , 0 ).
query( r640 ).
r641 :- not(f530), c562, not(f612), c627, not(f628), c635, not(f636), c638 .
utility( r641 , 0 ).
query( r641 ).
0.1 :: f642 .
0.1 :: f643 .
0.1 :: f644 .
r645 :- not(f530), c561, f642, f643, f644 .
utility( r645 , 1 ).
query( r645 ).
? :: c647 .
? :: c646 .
r648 :- not(f530), c561, f642, f643, not(f644), c647 .
utility( r648 , 0 ).
query( r648 ).
r649 :- not(f530), c561, f642, f643, not(f644), c646 .
utility( r649 , 1 ).
query( r649 ).
? :: c652 .
? :: c651 .
? :: c650 .
r653 :- not(f530), c561, f642, not(f643), c652 .
utility( r653 , 0 ).
query( r653 ).
0.1 :: f654 .
r655 :- not(f530), c561, f642, not(f643), c651, f654 .
utility( r655 , 0 ).
query( r655 ).
? :: c656 .
r657 :- not(f530), c561, f642, not(f643), c651, not(f654), c656 .
utility( r657 , 0 ).
query( r657 ).
0.1 :: f658 .
r659 :- not(f530), c561, f642, not(f643), c650, f658 .
utility( r659 , 0 ).
query( r659 ).
? :: c661 .
? :: c660 .
r662 :- not(f530), c561, f642, not(f643), c650, not(f658), c661 .
utility( r662 , 0 ).
query( r662 ).
r663 :- not(f530), c561, f642, not(f643), c650, not(f658), c660 .
utility( r663 , 1 ).
query( r663 ).
? :: c666 .
? :: c665 .
? :: c664 .
0.1 :: f667 .
0.1 :: f668 .
r669 :- not(f530), c561, not(f642), c666, f667, f668 .
utility( r669 , 0 ).
query( r669 ).
? :: c671 .
? :: c670 .
r672 :- not(f530), c561, not(f642), c666, f667, not(f668), c671 .
utility( r672 , 0 ).
query( r672 ).
r673 :- not(f530), c561, not(f642), c666, f667, not(f668), c670 .
utility( r673 , 0 ).
query( r673 ).
? :: c675 .
? :: c674 .
0.1 :: f676 .
r677 :- not(f530), c561, not(f642), c666, not(f667), c675, f676 .
utility( r677 , 0 ).
query( r677 ).
? :: c679 .
? :: c678 .
r680 :- not(f530), c561, not(f642), c666, not(f667), c675, not(f676), c679 .
utility( r680 , 0 ).
query( r680 ).
r681 :- not(f530), c561, not(f642), c666, not(f667), c675, not(f676), c678 .
utility( r681 , 0 ).
query( r681 ).
r682 :- not(f530), c561, not(f642), c666, not(f667), c674 .
utility( r682 , 0 ).
query( r682 ).
0.1 :: f683 .
0.1 :: f684 .
r685 :- not(f530), c561, not(f642), c665, f683, f684 .
utility( r685 , 0 ).
query( r685 ).
? :: c686 .
r687 :- not(f530), c561, not(f642), c665, f683, not(f684), c686 .
utility( r687 , 0 ).
query( r687 ).
? :: c688 .
0.1 :: f689 .
r690 :- not(f530), c561, not(f642), c665, not(f683), c688, f689 .
utility( r690 , 0 ).
query( r690 ).
? :: c691 .
r692 :- not(f530), c561, not(f642), c665, not(f683), c688, not(f689), c691 .
utility( r692 , 0 ).
query( r692 ).
0.1 :: f693 .
0.1 :: f694 .
r695 :- not(f530), c561, not(f642), c664, f693, f694 .
utility( r695 , 0 ).
query( r695 ).
? :: c697 .
? :: c696 .
r698 :- not(f530), c561, not(f642), c664, f693, not(f694), c697 .
utility( r698 , 0 ).
query( r698 ).
r699 :- not(f530), c561, not(f642), c664, f693, not(f694), c696 .
utility( r699 , 1 ).
query( r699 ).
? :: c702 .
? :: c701 .
? :: c700 .
r703 :- not(f530), c561, not(f642), c664, not(f693), c702 .
utility( r703 , 0 ).
query( r703 ).
0.1 :: f704 .
r705 :- not(f530), c561, not(f642), c664, not(f693), c701, f704 .
utility( r705 , 0 ).
query( r705 ).
? :: c706 .
r707 :- not(f530), c561, not(f642), c664, not(f693), c701, not(f704), c706 .
utility( r707 , 0 ).
query( r707 ).
0.1 :: f708 .
r709 :- not(f530), c561, not(f642), c664, not(f693), c700, f708 .
utility( r709 , 1 ).
query( r709 ).
? :: c711 .
? :: c710 .
r712 :- not(f530), c561, not(f642), c664, not(f693), c700, not(f708), c711 .
utility( r712 , 0 ).
query( r712 ).
r713 :- not(f530), c561, not(f642), c664, not(f693), c700, not(f708), c710 .
utility( r713 , 1 ).
query( r713 ).
