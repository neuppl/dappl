0.1 :: f89 .
0.1 :: f90 .
r91 :- f89, f90 .
utility( r91 , 0 ).
query( r91 ).
? :: c93 .
? :: c92 .
r94 :- f89, not(f90), c93 .
utility( r94 , 0 ).
query( r94 ).
r95 :- f89, not(f90), c92 .
utility( r95 , 0 ).
query( r95 ).
? :: c97 .
? :: c96 .
0.1 :: f98 .
r99 :- not(f89), c97, f98 .
utility( r99 , 0 ).
query( r99 ).
? :: c101 .
? :: c100 .
r102 :- not(f89), c97, not(f98), c101 .
utility( r102 , 0 ).
query( r102 ).
r103 :- not(f89), c97, not(f98), c100 .
utility( r103 , 0 ).
query( r103 ).
0.1 :: f104 .
r105 :- not(f89), c96, f104 .
utility( r105 , 0 ).
query( r105 ).
? :: c107 .
? :: c106 .
r108 :- not(f89), c96, not(f104), c107 .
utility( r108 , 0 ).
query( r108 ).
r109 :- not(f89), c96, not(f104), c106 .
utility( r109 , 0 ).
query( r109 ).
