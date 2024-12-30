0.1 :: f86 .
0.1 :: f87 .
0.1 :: f88 .
0.1 :: f89 .
r90 :- f86, f87, f88, f89 .
utility( r90 , 1 ).
query( r90 ).
? :: c91 .
r92 :- f86, f87, f88, not(f89), c91 .
utility( r92 , 1 ).
query( r92 ).
? :: c93 .
0.1 :: f94 .
r95 :- f86, f87, not(f88), c93, f94 .
utility( r95 , 1 ).
query( r95 ).
? :: c96 .
r97 :- f86, f87, not(f88), c93, not(f94), c96 .
utility( r97 , 1 ).
query( r97 ).
? :: c98 .
0.1 :: f99 .
0.1 :: f100 .
r101 :- f86, not(f87), c98, f99, f100 .
utility( r101 , 1 ).
query( r101 ).
? :: c102 .
r103 :- f86, not(f87), c98, f99, not(f100), c102 .
utility( r103 , 1 ).
query( r103 ).
? :: c104 .
0.1 :: f105 .
r106 :- f86, not(f87), c98, not(f99), c104, f105 .
utility( r106 , 1 ).
query( r106 ).
? :: c107 .
r108 :- f86, not(f87), c98, not(f99), c104, not(f105), c107 .
utility( r108 , 1 ).
query( r108 ).
? :: c109 .
0.1 :: f110 .
0.1 :: f111 .
0.1 :: f112 .
r113 :- not(f86), c109, f110, f111, f112 .
utility( r113 , 1 ).
query( r113 ).
? :: c114 .
r115 :- not(f86), c109, f110, f111, not(f112), c114 .
utility( r115 , 1 ).
query( r115 ).
? :: c116 .
0.1 :: f117 .
r118 :- not(f86), c109, f110, not(f111), c116, f117 .
utility( r118 , 1 ).
query( r118 ).
? :: c119 .
r120 :- not(f86), c109, f110, not(f111), c116, not(f117), c119 .
utility( r120 , 1 ).
query( r120 ).
? :: c121 .
0.1 :: f122 .
0.1 :: f123 .
r124 :- not(f86), c109, not(f110), c121, f122, f123 .
utility( r124 , 1 ).
query( r124 ).
? :: c125 .
r126 :- not(f86), c109, not(f110), c121, f122, not(f123), c125 .
utility( r126 , 1 ).
query( r126 ).
? :: c127 .
0.1 :: f128 .
r129 :- not(f86), c109, not(f110), c121, not(f122), c127, f128 .
utility( r129 , 1 ).
query( r129 ).
? :: c130 .
r131 :- not(f86), c109, not(f110), c121, not(f122), c127, not(f128), c130 .
utility( r131 , 1 ).
query( r131 ).
