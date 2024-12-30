0.1 :: f714 .
0.1 :: f715 .
0.1 :: f716 .
0.1 :: f717 .
r718 :- f714, f715, f716, f717 .
utility( r718 , 0 ).
query( r718 ).
? :: c719 .
r720 :- f714, f715, f716, not(f717), c719 .
utility( r720 , 0 ).
query( r720 ).
? :: c721 .
0.1 :: f722 .
r723 :- f714, f715, not(f716), c721, f722 .
utility( r723 , 0 ).
query( r723 ).
? :: c724 .
r725 :- f714, f715, not(f716), c721, not(f722), c724 .
utility( r725 , 0 ).
query( r725 ).
? :: c727 .
? :: c726 .
0.1 :: f728 .
0.1 :: f729 .
r730 :- f714, not(f715), c727, f728, f729 .
utility( r730 , 0 ).
query( r730 ).
? :: c732 .
? :: c731 .
r733 :- f714, not(f715), c727, f728, not(f729), c732 .
utility( r733 , 0 ).
query( r733 ).
r734 :- f714, not(f715), c727, f728, not(f729), c731 .
utility( r734 , 0 ).
query( r734 ).
? :: c736 .
? :: c735 .
0.1 :: f737 .
r738 :- f714, not(f715), c727, not(f728), c736, f737 .
utility( r738 , 0 ).
query( r738 ).
? :: c741 .
? :: c740 .
? :: c739 .
r742 :- f714, not(f715), c727, not(f728), c736, not(f737), c741 .
utility( r742 , 0 ).
query( r742 ).
r743 :- f714, not(f715), c727, not(f728), c736, not(f737), c740 .
utility( r743 , 0 ).
query( r743 ).
r744 :- f714, not(f715), c727, not(f728), c736, not(f737), c739 .
utility( r744 , 0 ).
query( r744 ).
0.1 :: f745 .
r746 :- f714, not(f715), c727, not(f728), c735, f745 .
utility( r746 , 0 ).
query( r746 ).
? :: c748 .
? :: c747 .
r749 :- f714, not(f715), c727, not(f728), c735, not(f745), c748 .
utility( r749 , 0 ).
query( r749 ).
r750 :- f714, not(f715), c727, not(f728), c735, not(f745), c747 .
utility( r750 , 0 ).
query( r750 ).
0.1 :: f751 .
0.1 :: f752 .
r753 :- f714, not(f715), c726, f751, f752 .
utility( r753 , 0 ).
query( r753 ).
? :: c754 .
r755 :- f714, not(f715), c726, f751, not(f752), c754 .
utility( r755 , 0 ).
query( r755 ).
? :: c756 .
0.1 :: f757 .
r758 :- f714, not(f715), c726, not(f751), c756, f757 .
utility( r758 , 0 ).
query( r758 ).
? :: c759 .
r760 :- f714, not(f715), c726, not(f751), c756, not(f757), c759 .
utility( r760 , 0 ).
query( r760 ).
? :: c761 .
0.1 :: f762 .
0.1 :: f763 .
0.1 :: f764 .
r765 :- not(f714), c761, f762, f763, f764 .
utility( r765 , 0 ).
query( r765 ).
? :: c766 .
r767 :- not(f714), c761, f762, f763, not(f764), c766 .
utility( r767 , 0 ).
query( r767 ).
? :: c768 .
0.1 :: f769 .
r770 :- not(f714), c761, f762, not(f763), c768, f769 .
utility( r770 , 0 ).
query( r770 ).
? :: c771 .
r772 :- not(f714), c761, f762, not(f763), c768, not(f769), c771 .
utility( r772 , 0 ).
query( r772 ).
? :: c774 .
? :: c773 .
0.1 :: f775 .
0.1 :: f776 .
r777 :- not(f714), c761, not(f762), c774, f775, f776 .
utility( r777 , 0 ).
query( r777 ).
? :: c780 .
? :: c779 .
? :: c778 .
r781 :- not(f714), c761, not(f762), c774, f775, not(f776), c780 .
utility( r781 , 0 ).
query( r781 ).
r782 :- not(f714), c761, not(f762), c774, f775, not(f776), c779 .
utility( r782 , 0 ).
query( r782 ).
r783 :- not(f714), c761, not(f762), c774, f775, not(f776), c778 .
utility( r783 , 0 ).
query( r783 ).
? :: c785 .
? :: c784 .
0.1 :: f786 .
r787 :- not(f714), c761, not(f762), c774, not(f775), c785, f786 .
utility( r787 , 0 ).
query( r787 ).
? :: c790 .
? :: c789 .
? :: c788 .
r791 :- not(f714), c761, not(f762), c774, not(f775), c785, not(f786), c790 .
utility( r791 , 0 ).
query( r791 ).
r792 :- not(f714), c761, not(f762), c774, not(f775), c785, not(f786), c789 .
utility( r792 , 0 ).
query( r792 ).
r793 :- not(f714), c761, not(f762), c774, not(f775), c785, not(f786), c788 .
utility( r793 , 0 ).
query( r793 ).
0.1 :: f794 .
r795 :- not(f714), c761, not(f762), c774, not(f775), c784, f794 .
utility( r795 , 0 ).
query( r795 ).
? :: c797 .
? :: c796 .
r798 :- not(f714), c761, not(f762), c774, not(f775), c784, not(f794), c797 .
utility( r798 , 0 ).
query( r798 ).
r799 :- not(f714), c761, not(f762), c774, not(f775), c784, not(f794), c796 .
utility( r799 , 0 ).
query( r799 ).
0.1 :: f800 .
0.1 :: f801 .
r802 :- not(f714), c761, not(f762), c773, f800, f801 .
utility( r802 , 0 ).
query( r802 ).
? :: c803 .
r804 :- not(f714), c761, not(f762), c773, f800, not(f801), c803 .
utility( r804 , 0 ).
query( r804 ).
? :: c805 .
0.1 :: f806 .
r807 :- not(f714), c761, not(f762), c773, not(f800), c805, f806 .
utility( r807 , 0 ).
query( r807 ).
? :: c808 .
r809 :- not(f714), c761, not(f762), c773, not(f800), c805, not(f806), c808 .
utility( r809 , 0 ).
query( r809 ).
