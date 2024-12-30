0.1 :: f99 .
0.1 :: f100 .
0.1 :: f101 .
r102 :- f99, f100, f101 .
utility( r102 , 0 ).
query( r102 ).
? :: c104 .
? :: c103 .
r105 :- f99, f100, not(f101), c104 .
utility( r105 , 0 ).
query( r105 ).
r106 :- f99, f100, not(f101), c103 .
utility( r106 , 0 ).
query( r106 ).
? :: c108 .
? :: c107 .
0.1 :: f109 .
r110 :- f99, not(f100), c108, f109 .
utility( r110 , 0 ).
query( r110 ).
? :: c112 .
? :: c111 .
r113 :- f99, not(f100), c108, not(f109), c112 .
utility( r113 , 0 ).
query( r113 ).
r114 :- f99, not(f100), c108, not(f109), c111 .
utility( r114 , 0 ).
query( r114 ).
0.1 :: f115 .
r116 :- f99, not(f100), c107, f115 .
utility( r116 , 1 ).
query( r116 ).
? :: c117 .
r118 :- f99, not(f100), c107, not(f115), c117 .
utility( r118 , 1 ).
query( r118 ).
? :: c119 .
0.1 :: f120 .
0.1 :: f121 .
r122 :- not(f99), c119, f120, f121 .
utility( r122 , 1 ).
query( r122 ).
? :: c123 .
r124 :- not(f99), c119, f120, not(f121), c123 .
utility( r124 , 1 ).
query( r124 ).
? :: c126 .
? :: c125 .
0.1 :: f127 .
r128 :- not(f99), c119, not(f120), c126, f127 .
utility( r128 , 0 ).
query( r128 ).
? :: c130 .
? :: c129 .
r131 :- not(f99), c119, not(f120), c126, not(f127), c130 .
utility( r131 , 0 ).
query( r131 ).
r132 :- not(f99), c119, not(f120), c126, not(f127), c129 .
utility( r132 , 0 ).
query( r132 ).
0.1 :: f133 .
r134 :- not(f99), c119, not(f120), c125, f133 .
utility( r134 , 1 ).
query( r134 ).
? :: c135 .
r136 :- not(f99), c119, not(f120), c125, not(f133), c135 .
utility( r136 , 1 ).
query( r136 ).
