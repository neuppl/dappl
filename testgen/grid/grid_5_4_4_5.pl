0.1 :: f584 .
0.1 :: f585 .
0.1 :: f586 .
0.1 :: f587 .
r588 :- f584, f585, f586, f587 .
utility( r588 , 0 ).
query( r588 ).
? :: c590 .
? :: c589 .
r591 :- f584, f585, f586, not(f587), c590 .
utility( r591 , 0 ).
query( r591 ).
r592 :- f584, f585, f586, not(f587), c589 .
utility( r592 , 0 ).
query( r592 ).
? :: c594 .
? :: c593 .
0.1 :: f595 .
r596 :- f584, f585, not(f586), c594, f595 .
utility( r596 , 0 ).
query( r596 ).
? :: c598 .
? :: c597 .
r599 :- f584, f585, not(f586), c594, not(f595), c598 .
utility( r599 , 0 ).
query( r599 ).
r600 :- f584, f585, not(f586), c594, not(f595), c597 .
utility( r600 , 0 ).
query( r600 ).
0.1 :: f601 .
r602 :- f584, f585, not(f586), c593, f601 .
utility( r602 , 0 ).
query( r602 ).
? :: c604 .
? :: c603 .
r605 :- f584, f585, not(f586), c593, not(f601), c604 .
utility( r605 , 0 ).
query( r605 ).
r606 :- f584, f585, not(f586), c593, not(f601), c603 .
utility( r606 , 0 ).
query( r606 ).
? :: c608 .
? :: c607 .
0.1 :: f609 .
0.1 :: f610 .
r611 :- f584, not(f585), c608, f609, f610 .
utility( r611 , 0 ).
query( r611 ).
? :: c613 .
? :: c612 .
r614 :- f584, not(f585), c608, f609, not(f610), c613 .
utility( r614 , 0 ).
query( r614 ).
r615 :- f584, not(f585), c608, f609, not(f610), c612 .
utility( r615 , 0 ).
query( r615 ).
? :: c616 .
0.1 :: f617 .
r618 :- f584, not(f585), c608, not(f609), c616, f617 .
utility( r618 , 0 ).
query( r618 ).
? :: c620 .
? :: c619 .
r621 :- f584, not(f585), c608, not(f609), c616, not(f617), c620 .
utility( r621 , 0 ).
query( r621 ).
r622 :- f584, not(f585), c608, not(f609), c616, not(f617), c619 .
utility( r622 , 0 ).
query( r622 ).
0.1 :: f623 .
0.1 :: f624 .
r625 :- f584, not(f585), c607, f623, f624 .
utility( r625 , 0 ).
query( r625 ).
? :: c627 .
? :: c626 .
r628 :- f584, not(f585), c607, f623, not(f624), c627 .
utility( r628 , 0 ).
query( r628 ).
r629 :- f584, not(f585), c607, f623, not(f624), c626 .
utility( r629 , 0 ).
query( r629 ).
? :: c631 .
? :: c630 .
0.1 :: f632 .
r633 :- f584, not(f585), c607, not(f623), c631, f632 .
utility( r633 , 0 ).
query( r633 ).
? :: c635 .
? :: c634 .
r636 :- f584, not(f585), c607, not(f623), c631, not(f632), c635 .
utility( r636 , 0 ).
query( r636 ).
r637 :- f584, not(f585), c607, not(f623), c631, not(f632), c634 .
utility( r637 , 0 ).
query( r637 ).
0.1 :: f638 .
r639 :- f584, not(f585), c607, not(f623), c630, f638 .
utility( r639 , 0 ).
query( r639 ).
? :: c641 .
? :: c640 .
r642 :- f584, not(f585), c607, not(f623), c630, not(f638), c641 .
utility( r642 , 0 ).
query( r642 ).
r643 :- f584, not(f585), c607, not(f623), c630, not(f638), c640 .
utility( r643 , 0 ).
query( r643 ).
? :: c646 .
? :: c645 .
? :: c644 .
0.1 :: f647 .
0.1 :: f648 .
0.1 :: f649 .
r650 :- not(f584), c646, f647, f648, f649 .
utility( r650 , 0 ).
query( r650 ).
? :: c651 .
r652 :- not(f584), c646, f647, f648, not(f649), c651 .
utility( r652 , 0 ).
query( r652 ).
? :: c653 .
0.1 :: f654 .
r655 :- not(f584), c646, f647, not(f648), c653, f654 .
utility( r655 , 0 ).
query( r655 ).
? :: c656 .
r657 :- not(f584), c646, f647, not(f648), c653, not(f654), c656 .
utility( r657 , 0 ).
query( r657 ).
? :: c658 .
0.1 :: f659 .
0.1 :: f660 .
r661 :- not(f584), c646, not(f647), c658, f659, f660 .
utility( r661 , 0 ).
query( r661 ).
? :: c662 .
r663 :- not(f584), c646, not(f647), c658, f659, not(f660), c662 .
utility( r663 , 0 ).
query( r663 ).
? :: c664 .
0.1 :: f665 .
r666 :- not(f584), c646, not(f647), c658, not(f659), c664, f665 .
utility( r666 , 0 ).
query( r666 ).
? :: c667 .
r668 :- not(f584), c646, not(f647), c658, not(f659), c664, not(f665), c667 .
utility( r668 , 0 ).
query( r668 ).
0.1 :: f669 .
0.1 :: f670 .
0.1 :: f671 .
r672 :- not(f584), c645, f669, f670, f671 .
utility( r672 , 0 ).
query( r672 ).
? :: c675 .
? :: c674 .
? :: c673 .
r676 :- not(f584), c645, f669, f670, not(f671), c675 .
utility( r676 , 0 ).
query( r676 ).
r677 :- not(f584), c645, f669, f670, not(f671), c674 .
utility( r677 , 0 ).
query( r677 ).
r678 :- not(f584), c645, f669, f670, not(f671), c673 .
utility( r678 , 0 ).
query( r678 ).
? :: c679 .
0.1 :: f680 .
r681 :- not(f584), c645, f669, not(f670), c679, f680 .
utility( r681 , 0 ).
query( r681 ).
? :: c684 .
? :: c683 .
? :: c682 .
r685 :- not(f584), c645, f669, not(f670), c679, not(f680), c684 .
utility( r685 , 0 ).
query( r685 ).
r686 :- not(f584), c645, f669, not(f670), c679, not(f680), c683 .
utility( r686 , 0 ).
query( r686 ).
r687 :- not(f584), c645, f669, not(f670), c679, not(f680), c682 .
utility( r687 , 0 ).
query( r687 ).
? :: c688 .
0.1 :: f689 .
0.1 :: f690 .
r691 :- not(f584), c645, not(f669), c688, f689, f690 .
utility( r691 , 0 ).
query( r691 ).
? :: c694 .
? :: c693 .
? :: c692 .
r695 :- not(f584), c645, not(f669), c688, f689, not(f690), c694 .
utility( r695 , 0 ).
query( r695 ).
r696 :- not(f584), c645, not(f669), c688, f689, not(f690), c693 .
utility( r696 , 0 ).
query( r696 ).
r697 :- not(f584), c645, not(f669), c688, f689, not(f690), c692 .
utility( r697 , 0 ).
query( r697 ).
? :: c698 .
0.1 :: f699 .
r700 :- not(f584), c645, not(f669), c688, not(f689), c698, f699 .
utility( r700 , 0 ).
query( r700 ).
? :: c703 .
? :: c702 .
? :: c701 .
r704 :- not(f584), c645, not(f669), c688, not(f689), c698, not(f699), c703 .
utility( r704 , 0 ).
query( r704 ).
r705 :- not(f584), c645, not(f669), c688, not(f689), c698, not(f699), c702 .
utility( r705 , 0 ).
query( r705 ).
r706 :- not(f584), c645, not(f669), c688, not(f689), c698, not(f699), c701 .
utility( r706 , 0 ).
query( r706 ).
0.1 :: f707 .
0.1 :: f708 .
0.1 :: f709 .
r710 :- not(f584), c644, f707, f708, f709 .
utility( r710 , 0 ).
query( r710 ).
? :: c712 .
? :: c711 .
r713 :- not(f584), c644, f707, f708, not(f709), c712 .
utility( r713 , 0 ).
query( r713 ).
r714 :- not(f584), c644, f707, f708, not(f709), c711 .
utility( r714 , 0 ).
query( r714 ).
? :: c716 .
? :: c715 .
0.1 :: f717 .
r718 :- not(f584), c644, f707, not(f708), c716, f717 .
utility( r718 , 0 ).
query( r718 ).
? :: c720 .
? :: c719 .
r721 :- not(f584), c644, f707, not(f708), c716, not(f717), c720 .
utility( r721 , 0 ).
query( r721 ).
r722 :- not(f584), c644, f707, not(f708), c716, not(f717), c719 .
utility( r722 , 0 ).
query( r722 ).
0.1 :: f723 .
r724 :- not(f584), c644, f707, not(f708), c715, f723 .
utility( r724 , 0 ).
query( r724 ).
? :: c726 .
? :: c725 .
r727 :- not(f584), c644, f707, not(f708), c715, not(f723), c726 .
utility( r727 , 0 ).
query( r727 ).
r728 :- not(f584), c644, f707, not(f708), c715, not(f723), c725 .
utility( r728 , 0 ).
query( r728 ).
? :: c730 .
? :: c729 .
0.1 :: f731 .
0.1 :: f732 .
r733 :- not(f584), c644, not(f707), c730, f731, f732 .
utility( r733 , 0 ).
query( r733 ).
? :: c735 .
? :: c734 .
r736 :- not(f584), c644, not(f707), c730, f731, not(f732), c735 .
utility( r736 , 0 ).
query( r736 ).
r737 :- not(f584), c644, not(f707), c730, f731, not(f732), c734 .
utility( r737 , 0 ).
query( r737 ).
? :: c738 .
0.1 :: f739 .
r740 :- not(f584), c644, not(f707), c730, not(f731), c738, f739 .
utility( r740 , 0 ).
query( r740 ).
? :: c742 .
? :: c741 .
r743 :- not(f584), c644, not(f707), c730, not(f731), c738, not(f739), c742 .
utility( r743 , 0 ).
query( r743 ).
r744 :- not(f584), c644, not(f707), c730, not(f731), c738, not(f739), c741 .
utility( r744 , 0 ).
query( r744 ).
0.1 :: f745 .
0.1 :: f746 .
r747 :- not(f584), c644, not(f707), c729, f745, f746 .
utility( r747 , 0 ).
query( r747 ).
? :: c749 .
? :: c748 .
r750 :- not(f584), c644, not(f707), c729, f745, not(f746), c749 .
utility( r750 , 0 ).
query( r750 ).
r751 :- not(f584), c644, not(f707), c729, f745, not(f746), c748 .
utility( r751 , 0 ).
query( r751 ).
? :: c753 .
? :: c752 .
0.1 :: f754 .
r755 :- not(f584), c644, not(f707), c729, not(f745), c753, f754 .
utility( r755 , 0 ).
query( r755 ).
? :: c757 .
? :: c756 .
r758 :- not(f584), c644, not(f707), c729, not(f745), c753, not(f754), c757 .
utility( r758 , 0 ).
query( r758 ).
r759 :- not(f584), c644, not(f707), c729, not(f745), c753, not(f754), c756 .
utility( r759 , 0 ).
query( r759 ).
0.1 :: f760 .
r761 :- not(f584), c644, not(f707), c729, not(f745), c752, f760 .
utility( r761 , 0 ).
query( r761 ).
? :: c763 .
? :: c762 .
r764 :- not(f584), c644, not(f707), c729, not(f745), c752, not(f760), c763 .
utility( r764 , 0 ).
query( r764 ).
r765 :- not(f584), c644, not(f707), c729, not(f745), c752, not(f760), c762 .
utility( r765 , 0 ).
query( r765 ).
