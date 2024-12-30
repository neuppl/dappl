0.1 :: f55 .
0.1 :: f56 .
0.1 :: f57 .
r58 :- f55, f56, f57 .
utility( r58 , 0 ).
query( r58 ).
? :: c59 .
r60 :- f55, f56, not(f57), c59 .
utility( r60 , 0 ).
query( r60 ).
? :: c63 .
? :: c62 .
? :: c61 .
0.1 :: f64 .
r65 :- f55, not(f56), c63, f64 .
utility( r65 , 0 ).
query( r65 ).
? :: c66 .
r67 :- f55, not(f56), c63, not(f64), c66 .
utility( r67 , 0 ).
query( r67 ).
0.1 :: f68 .
r69 :- f55, not(f56), c62, f68 .
utility( r69 , 0 ).
query( r69 ).
? :: c71 .
? :: c70 .
r72 :- f55, not(f56), c62, not(f68), c71 .
utility( r72 , 0 ).
query( r72 ).
r73 :- f55, not(f56), c62, not(f68), c70 .
utility( r73 , 0 ).
query( r73 ).
0.1 :: f74 .
r75 :- f55, not(f56), c61, f74 .
utility( r75 , 0 ).
query( r75 ).
? :: c77 .
? :: c76 .
r78 :- f55, not(f56), c61, not(f74), c77 .
utility( r78 , 0 ).
query( r78 ).
r79 :- f55, not(f56), c61, not(f74), c76 .
utility( r79 , 0 ).
query( r79 ).
? :: c82 .
? :: c81 .
? :: c80 .
0.1 :: f83 .
0.1 :: f84 .
r85 :- not(f55), c82, f83, f84 .
utility( r85 , 0 ).
query( r85 ).
? :: c86 .
r87 :- not(f55), c82, f83, not(f84), c86 .
utility( r87 , 0 ).
query( r87 ).
? :: c88 .
0.1 :: f89 .
r90 :- not(f55), c82, not(f83), c88, f89 .
utility( r90 , 0 ).
query( r90 ).
? :: c91 .
r92 :- not(f55), c82, not(f83), c88, not(f89), c91 .
utility( r92 , 0 ).
query( r92 ).
0.1 :: f93 .
0.1 :: f94 .
r95 :- not(f55), c81, f93, f94 .
utility( r95 , 0 ).
query( r95 ).
? :: c97 .
? :: c96 .
r98 :- not(f55), c81, f93, not(f94), c97 .
utility( r98 , 0 ).
query( r98 ).
r99 :- not(f55), c81, f93, not(f94), c96 .
utility( r99 , 0 ).
query( r99 ).
? :: c100 .
0.1 :: f101 .
r102 :- not(f55), c81, not(f93), c100, f101 .
utility( r102 , 0 ).
query( r102 ).
? :: c104 .
? :: c103 .
r105 :- not(f55), c81, not(f93), c100, not(f101), c104 .
utility( r105 , 0 ).
query( r105 ).
r106 :- not(f55), c81, not(f93), c100, not(f101), c103 .
utility( r106 , 0 ).
query( r106 ).
0.1 :: f107 .
0.1 :: f108 .
r109 :- not(f55), c80, f107, f108 .
utility( r109 , 0 ).
query( r109 ).
? :: c111 .
? :: c110 .
r112 :- not(f55), c80, f107, not(f108), c111 .
utility( r112 , 0 ).
query( r112 ).
r113 :- not(f55), c80, f107, not(f108), c110 .
utility( r113 , 0 ).
query( r113 ).
? :: c116 .
? :: c115 .
? :: c114 .
0.1 :: f117 .
r118 :- not(f55), c80, not(f107), c116, f117 .
utility( r118 , 0 ).
query( r118 ).
? :: c119 .
r120 :- not(f55), c80, not(f107), c116, not(f117), c119 .
utility( r120 , 0 ).
query( r120 ).
0.1 :: f121 .
r122 :- not(f55), c80, not(f107), c115, f121 .
utility( r122 , 0 ).
query( r122 ).
? :: c124 .
? :: c123 .
r125 :- not(f55), c80, not(f107), c115, not(f121), c124 .
utility( r125 , 0 ).
query( r125 ).
r126 :- not(f55), c80, not(f107), c115, not(f121), c123 .
utility( r126 , 0 ).
query( r126 ).
0.1 :: f127 .
r128 :- not(f55), c80, not(f107), c114, f127 .
utility( r128 , 0 ).
query( r128 ).
? :: c130 .
? :: c129 .
r131 :- not(f55), c80, not(f107), c114, not(f127), c130 .
utility( r131 , 0 ).
query( r131 ).
r132 :- not(f55), c80, not(f107), c114, not(f127), c129 .
utility( r132 , 0 ).
query( r132 ).
