0.1 :: f69 .
0.1 :: f70 .
0.1 :: f71 .
r72 :- f69, f70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c74 .
? :: c73 .
r75 :- f69, f70, not(f71), c74 .
utility( r75 , 0 ).
query( r75 ).
r76 :- f69, f70, not(f71), c73 .
utility( r76 , 0 ).
query( r76 ).
? :: c78 .
? :: c77 .
0.1 :: f79 .
r80 :- f69, not(f70), c78, f79 .
utility( r80 , 0 ).
query( r80 ).
? :: c82 .
? :: c81 .
r83 :- f69, not(f70), c78, not(f79), c82 .
utility( r83 , 0 ).
query( r83 ).
r84 :- f69, not(f70), c78, not(f79), c81 .
utility( r84 , 0 ).
query( r84 ).
0.1 :: f85 .
r86 :- f69, not(f70), c77, f85 .
utility( r86 , 0 ).
query( r86 ).
? :: c88 .
? :: c87 .
r89 :- f69, not(f70), c77, not(f85), c88 .
utility( r89 , 0 ).
query( r89 ).
r90 :- f69, not(f70), c77, not(f85), c87 .
utility( r90 , 0 ).
query( r90 ).
? :: c91 .
0.1 :: f92 .
0.1 :: f93 .
r94 :- not(f69), c91, f92, f93 .
utility( r94 , 0 ).
query( r94 ).
? :: c96 .
? :: c95 .
r97 :- not(f69), c91, f92, not(f93), c96 .
utility( r97 , 0 ).
query( r97 ).
r98 :- not(f69), c91, f92, not(f93), c95 .
utility( r98 , 0 ).
query( r98 ).
? :: c100 .
? :: c99 .
0.1 :: f101 .
r102 :- not(f69), c91, not(f92), c100, f101 .
utility( r102 , 0 ).
query( r102 ).
? :: c104 .
? :: c103 .
r105 :- not(f69), c91, not(f92), c100, not(f101), c104 .
utility( r105 , 0 ).
query( r105 ).
r106 :- not(f69), c91, not(f92), c100, not(f101), c103 .
utility( r106 , 0 ).
query( r106 ).
0.1 :: f107 .
r108 :- not(f69), c91, not(f92), c99, f107 .
utility( r108 , 0 ).
query( r108 ).
? :: c110 .
? :: c109 .
r111 :- not(f69), c91, not(f92), c99, not(f107), c110 .
utility( r111 , 0 ).
query( r111 ).
r112 :- not(f69), c91, not(f92), c99, not(f107), c109 .
utility( r112 , 0 ).
query( r112 ).
