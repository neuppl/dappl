0.1 :: f93 .
0.1 :: f94 .
0.1 :: f95 .
r96 :- f93, f94, f95 .
utility( r96 , 1 ).
query( r96 ).
? :: c97 .
r98 :- f93, f94, not(f95), c97 .
utility( r98 , 1 ).
query( r98 ).
? :: c100 .
? :: c99 .
0.1 :: f101 .
r102 :- f93, not(f94), c100, f101 .
utility( r102 , 0 ).
query( r102 ).
? :: c103 .
r104 :- f93, not(f94), c100, not(f101), c103 .
utility( r104 , 0 ).
query( r104 ).
0.1 :: f105 .
r106 :- f93, not(f94), c99, f105 .
utility( r106 , 1 ).
query( r106 ).
? :: c107 .
r108 :- f93, not(f94), c99, not(f105), c107 .
utility( r108 , 1 ).
query( r108 ).
? :: c109 .
0.1 :: f110 .
0.1 :: f111 .
r112 :- not(f93), c109, f110, f111 .
utility( r112 , 0 ).
query( r112 ).
? :: c113 .
r114 :- not(f93), c109, f110, not(f111), c113 .
utility( r114 , 0 ).
query( r114 ).
? :: c116 .
? :: c115 .
0.1 :: f117 .
r118 :- not(f93), c109, not(f110), c116, f117 .
utility( r118 , 0 ).
query( r118 ).
? :: c119 .
r120 :- not(f93), c109, not(f110), c116, not(f117), c119 .
utility( r120 , 0 ).
query( r120 ).
0.1 :: f121 .
r122 :- not(f93), c109, not(f110), c115, f121 .
utility( r122 , 1 ).
query( r122 ).
? :: c123 .
r124 :- not(f93), c109, not(f110), c115, not(f121), c123 .
utility( r124 , 1 ).
query( r124 ).
