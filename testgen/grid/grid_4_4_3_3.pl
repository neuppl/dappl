0.1 :: f93 .
0.1 :: f94 .
0.1 :: f95 .
r96 :- f93, f94, f95 .
utility( r96 , 0 ).
query( r96 ).
? :: c98 .
? :: c97 .
r99 :- f93, f94, not(f95), c98 .
utility( r99 , 0 ).
query( r99 ).
r100 :- f93, f94, not(f95), c97 .
utility( r100 , 0 ).
query( r100 ).
? :: c102 .
? :: c101 .
0.1 :: f103 .
r104 :- f93, not(f94), c102, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c105 .
r106 :- f93, not(f94), c102, not(f103), c105 .
utility( r106 , 0 ).
query( r106 ).
0.1 :: f107 .
r108 :- f93, not(f94), c101, f107 .
utility( r108 , 0 ).
query( r108 ).
? :: c110 .
? :: c109 .
r111 :- f93, not(f94), c101, not(f107), c110 .
utility( r111 , 0 ).
query( r111 ).
r112 :- f93, not(f94), c101, not(f107), c109 .
utility( r112 , 0 ).
query( r112 ).
? :: c113 .
0.1 :: f114 .
0.1 :: f115 .
r116 :- not(f93), c113, f114, f115 .
utility( r116 , 0 ).
query( r116 ).
? :: c117 .
r118 :- not(f93), c113, f114, not(f115), c117 .
utility( r118 , 0 ).
query( r118 ).
? :: c120 .
? :: c119 .
0.1 :: f121 .
r122 :- not(f93), c113, not(f114), c120, f121 .
utility( r122 , 0 ).
query( r122 ).
? :: c123 .
r124 :- not(f93), c113, not(f114), c120, not(f121), c123 .
utility( r124 , 0 ).
query( r124 ).
0.1 :: f125 .
r126 :- not(f93), c113, not(f114), c119, f125 .
utility( r126 , 0 ).
query( r126 ).
? :: c128 .
? :: c127 .
r129 :- not(f93), c113, not(f114), c119, not(f125), c128 .
utility( r129 , 0 ).
query( r129 ).
r130 :- not(f93), c113, not(f114), c119, not(f125), c127 .
utility( r130 , 0 ).
query( r130 ).
