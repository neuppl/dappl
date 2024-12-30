0.1 :: f107 .
0.1 :: f108 .
0.1 :: f109 .
r110 :- f107, f108, f109 .
utility( r110 , 0 ).
query( r110 ).
? :: c112 .
? :: c111 .
r113 :- f107, f108, not(f109), c112 .
utility( r113 , 0 ).
query( r113 ).
r114 :- f107, f108, not(f109), c111 .
utility( r114 , 1 ).
query( r114 ).
? :: c115 .
0.1 :: f116 .
r117 :- f107, not(f108), c115, f116 .
utility( r117 , 0 ).
query( r117 ).
? :: c119 .
? :: c118 .
r120 :- f107, not(f108), c115, not(f116), c119 .
utility( r120 , 0 ).
query( r120 ).
r121 :- f107, not(f108), c115, not(f116), c118 .
utility( r121 , 1 ).
query( r121 ).
? :: c122 .
0.1 :: f123 .
0.1 :: f124 .
r125 :- not(f107), c122, f123, f124 .
utility( r125 , 1 ).
query( r125 ).
? :: c127 .
? :: c126 .
r128 :- not(f107), c122, f123, not(f124), c127 .
utility( r128 , 0 ).
query( r128 ).
r129 :- not(f107), c122, f123, not(f124), c126 .
utility( r129 , 1 ).
query( r129 ).
? :: c130 .
0.1 :: f131 .
r132 :- not(f107), c122, not(f123), c130, f131 .
utility( r132 , 1 ).
query( r132 ).
? :: c134 .
? :: c133 .
r135 :- not(f107), c122, not(f123), c130, not(f131), c134 .
utility( r135 , 0 ).
query( r135 ).
r136 :- not(f107), c122, not(f123), c130, not(f131), c133 .
utility( r136 , 1 ).
query( r136 ).
