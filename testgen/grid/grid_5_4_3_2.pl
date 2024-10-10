0.1 :: f59 .
0.1 :: f60 .
0.1 :: f61 .
r62 :- f59, f60, f61 .
utility( r62 , 0 ).
query( r62 ).
? :: c63 .
r64 :- f59, f60, not(f61), c63 .
utility( r64 , 0 ).
query( r64 ).
? :: c65 .
0.1 :: f66 .
r67 :- f59, not(f60), c65, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c68 .
r69 :- f59, not(f60), c65, not(f66), c68 .
utility( r69 , 0 ).
query( r69 ).
? :: c72 .
? :: c71 .
? :: c70 .
0.1 :: f73 .
0.1 :: f74 .
r75 :- not(f59), c72, f73, f74 .
utility( r75 , 0 ).
query( r75 ).
? :: c77 .
? :: c76 .
r78 :- not(f59), c72, f73, not(f74), c77 .
utility( r78 , 0 ).
query( r78 ).
r79 :- not(f59), c72, f73, not(f74), c76 .
utility( r79 , 0 ).
query( r79 ).
? :: c80 .
0.1 :: f81 .
r82 :- not(f59), c72, not(f73), c80, f81 .
utility( r82 , 0 ).
query( r82 ).
? :: c84 .
? :: c83 .
r85 :- not(f59), c72, not(f73), c80, not(f81), c84 .
utility( r85 , 0 ).
query( r85 ).
r86 :- not(f59), c72, not(f73), c80, not(f81), c83 .
utility( r86 , 0 ).
query( r86 ).
0.1 :: f87 .
0.1 :: f88 .
r89 :- not(f59), c71, f87, f88 .
utility( r89 , 0 ).
query( r89 ).
? :: c90 .
r91 :- not(f59), c71, f87, not(f88), c90 .
utility( r91 , 0 ).
query( r91 ).
? :: c92 .
0.1 :: f93 .
r94 :- not(f59), c71, not(f87), c92, f93 .
utility( r94 , 0 ).
query( r94 ).
? :: c95 .
r96 :- not(f59), c71, not(f87), c92, not(f93), c95 .
utility( r96 , 0 ).
query( r96 ).
0.1 :: f97 .
0.1 :: f98 .
r99 :- not(f59), c70, f97, f98 .
utility( r99 , 0 ).
query( r99 ).
? :: c100 .
r101 :- not(f59), c70, f97, not(f98), c100 .
utility( r101 , 0 ).
query( r101 ).
? :: c103 .
? :: c102 .
0.1 :: f104 .
r105 :- not(f59), c70, not(f97), c103, f104 .
utility( r105 , 0 ).
query( r105 ).
? :: c107 .
? :: c106 .
r108 :- not(f59), c70, not(f97), c103, not(f104), c107 .
utility( r108 , 0 ).
query( r108 ).
r109 :- not(f59), c70, not(f97), c103, not(f104), c106 .
utility( r109 , 0 ).
query( r109 ).
0.1 :: f110 .
r111 :- not(f59), c70, not(f97), c102, f110 .
utility( r111 , 0 ).
query( r111 ).
? :: c112 .
r113 :- not(f59), c70, not(f97), c102, not(f110), c112 .
utility( r113 , 0 ).
query( r113 ).
