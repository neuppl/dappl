0.1 :: f85 .
0.1 :: f86 .
0.1 :: f87 .
r88 :- f85, f86, f87 .
utility( r88 , 0 ).
query( r88 ).
? :: c89 .
r90 :- f85, f86, not(f87), c89 .
utility( r90 , 0 ).
query( r90 ).
? :: c91 .
0.1 :: f92 .
r93 :- f85, not(f86), c91, f92 .
utility( r93 , 0 ).
query( r93 ).
? :: c94 .
r95 :- f85, not(f86), c91, not(f92), c94 .
utility( r95 , 0 ).
query( r95 ).
? :: c96 .
0.1 :: f97 .
0.1 :: f98 .
r99 :- not(f85), c96, f97, f98 .
utility( r99 , 0 ).
query( r99 ).
? :: c100 .
r101 :- not(f85), c96, f97, not(f98), c100 .
utility( r101 , 0 ).
query( r101 ).
? :: c102 .
0.1 :: f103 .
r104 :- not(f85), c96, not(f97), c102, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c105 .
r106 :- not(f85), c96, not(f97), c102, not(f103), c105 .
utility( r106 , 0 ).
query( r106 ).
