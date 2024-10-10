0.1 :: f65 .
0.1 :: f66 .
0.1 :: f67 .
0.1 :: f68 .
r69 :- f65, f66, f67, f68 .
utility( r69 , 1 ).
query( r69 ).
? :: c70 .
r71 :- f65, f66, f67, not(f68), c70 .
utility( r71 , 1 ).
query( r71 ).
? :: c72 .
0.1 :: f73 .
r74 :- f65, f66, not(f67), c72, f73 .
utility( r74 , 1 ).
query( r74 ).
? :: c75 .
r76 :- f65, f66, not(f67), c72, not(f73), c75 .
utility( r76 , 1 ).
query( r76 ).
? :: c77 .
0.1 :: f78 .
0.1 :: f79 .
r80 :- f65, not(f66), c77, f78, f79 .
utility( r80 , 1 ).
query( r80 ).
? :: c81 .
r82 :- f65, not(f66), c77, f78, not(f79), c81 .
utility( r82 , 1 ).
query( r82 ).
? :: c83 .
0.1 :: f84 .
r85 :- f65, not(f66), c77, not(f78), c83, f84 .
utility( r85 , 1 ).
query( r85 ).
? :: c86 .
r87 :- f65, not(f66), c77, not(f78), c83, not(f84), c86 .
utility( r87 , 1 ).
query( r87 ).
? :: c88 .
0.1 :: f89 .
0.1 :: f90 .
0.1 :: f91 .
r92 :- not(f65), c88, f89, f90, f91 .
utility( r92 , 1 ).
query( r92 ).
? :: c93 .
r94 :- not(f65), c88, f89, f90, not(f91), c93 .
utility( r94 , 1 ).
query( r94 ).
? :: c95 .
0.1 :: f96 .
r97 :- not(f65), c88, f89, not(f90), c95, f96 .
utility( r97 , 1 ).
query( r97 ).
? :: c98 .
r99 :- not(f65), c88, f89, not(f90), c95, not(f96), c98 .
utility( r99 , 1 ).
query( r99 ).
? :: c100 .
0.1 :: f101 .
0.1 :: f102 .
r103 :- not(f65), c88, not(f89), c100, f101, f102 .
utility( r103 , 1 ).
query( r103 ).
? :: c104 .
r105 :- not(f65), c88, not(f89), c100, f101, not(f102), c104 .
utility( r105 , 1 ).
query( r105 ).
? :: c106 .
0.1 :: f107 .
r108 :- not(f65), c88, not(f89), c100, not(f101), c106, f107 .
utility( r108 , 1 ).
query( r108 ).
? :: c109 .
r110 :- not(f65), c88, not(f89), c100, not(f101), c106, not(f107), c109 .
utility( r110 , 1 ).
query( r110 ).
