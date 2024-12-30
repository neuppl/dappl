0.1 :: f85 .
0.1 :: f86 .
r87 :- f85, f86 .
utility( r87 , 0 ).
query( r87 ).
? :: c89 .
? :: c88 .
r90 :- f85, not(f86), c89 .
utility( r90 , 0 ).
query( r90 ).
0.1 :: f91 .
r92 :- f85, not(f86), c88, f91 .
utility( r92 , 0 ).
query( r92 ).
? :: c93 .
r94 :- f85, not(f86), c88, not(f91), c93 .
utility( r94 , 0 ).
query( r94 ).
? :: c96 .
? :: c95 .
0.1 :: f97 .
r98 :- not(f85), c96, f97 .
utility( r98 , 0 ).
query( r98 ).
? :: c100 .
? :: c99 .
r101 :- not(f85), c96, not(f97), c100 .
utility( r101 , 0 ).
query( r101 ).
0.1 :: f102 .
r103 :- not(f85), c96, not(f97), c99, f102 .
utility( r103 , 0 ).
query( r103 ).
? :: c104 .
r105 :- not(f85), c96, not(f97), c99, not(f102), c104 .
utility( r105 , 0 ).
query( r105 ).
0.1 :: f106 .
0.1 :: f107 .
r108 :- not(f85), c95, f106, f107 .
utility( r108 , 0 ).
query( r108 ).
? :: c111 .
? :: c110 .
? :: c109 .
r112 :- not(f85), c95, f106, not(f107), c111 .
utility( r112 , 0 ).
query( r112 ).
r113 :- not(f85), c95, f106, not(f107), c110 .
utility( r113 , 0 ).
query( r113 ).
r114 :- not(f85), c95, f106, not(f107), c109 .
utility( r114 , 0 ).
query( r114 ).
? :: c117 .
? :: c116 .
? :: c115 .
0.1 :: f118 .
r119 :- not(f85), c95, not(f106), c117, f118 .
utility( r119 , 0 ).
query( r119 ).
? :: c120 .
r121 :- not(f85), c95, not(f106), c117, not(f118), c120 .
utility( r121 , 0 ).
query( r121 ).
0.1 :: f122 .
r123 :- not(f85), c95, not(f106), c116, f122 .
utility( r123 , 0 ).
query( r123 ).
? :: c125 .
? :: c124 .
r126 :- not(f85), c95, not(f106), c116, not(f122), c125 .
utility( r126 , 0 ).
query( r126 ).
r127 :- not(f85), c95, not(f106), c116, not(f122), c124 .
utility( r127 , 0 ).
query( r127 ).
0.1 :: f128 .
r129 :- not(f85), c95, not(f106), c115, f128 .
utility( r129 , 0 ).
query( r129 ).
? :: c132 .
? :: c131 .
? :: c130 .
r133 :- not(f85), c95, not(f106), c115, not(f128), c132 .
utility( r133 , 0 ).
query( r133 ).
r134 :- not(f85), c95, not(f106), c115, not(f128), c131 .
utility( r134 , 0 ).
query( r134 ).
r135 :- not(f85), c95, not(f106), c115, not(f128), c130 .
utility( r135 , 0 ).
query( r135 ).
