0.1 :: f80 .
0.1 :: f81 .
0.1 :: f82 .
r83 :- f80, f81, f82 .
utility( r83 , 1 ).
query( r83 ).
? :: c84 .
r85 :- f80, f81, not(f82), c84 .
utility( r85 , 1 ).
query( r85 ).
? :: c87 .
? :: c86 .
0.1 :: f88 .
r89 :- f80, not(f81), c87, f88 .
utility( r89 , 1 ).
query( r89 ).
? :: c90 .
r91 :- f80, not(f81), c87, not(f88), c90 .
utility( r91 , 1 ).
query( r91 ).
0.1 :: f92 .
r93 :- f80, not(f81), c86, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c95 .
? :: c94 .
r96 :- f80, not(f81), c86, not(f92), c95 .
utility( r96 , 1 ).
query( r96 ).
r97 :- f80, not(f81), c86, not(f92), c94 .
utility( r97 , 0 ).
query( r97 ).
? :: c98 .
0.1 :: f99 .
0.1 :: f100 .
r101 :- not(f80), c98, f99, f100 .
utility( r101 , 1 ).
query( r101 ).
? :: c103 .
? :: c102 .
r104 :- not(f80), c98, f99, not(f100), c103 .
utility( r104 , 1 ).
query( r104 ).
r105 :- not(f80), c98, f99, not(f100), c102 .
utility( r105 , 0 ).
query( r105 ).
? :: c107 .
? :: c106 .
0.1 :: f108 .
r109 :- not(f80), c98, not(f99), c107, f108 .
utility( r109 , 1 ).
query( r109 ).
? :: c110 .
r111 :- not(f80), c98, not(f99), c107, not(f108), c110 .
utility( r111 , 1 ).
query( r111 ).
0.1 :: f112 .
r113 :- not(f80), c98, not(f99), c106, f112 .
utility( r113 , 1 ).
query( r113 ).
? :: c115 .
? :: c114 .
r116 :- not(f80), c98, not(f99), c106, not(f112), c115 .
utility( r116 , 1 ).
query( r116 ).
r117 :- not(f80), c98, not(f99), c106, not(f112), c114 .
utility( r117 , 0 ).
query( r117 ).
