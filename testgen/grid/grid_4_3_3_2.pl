0.1 :: f46 .
0.1 :: f47 .
0.1 :: f48 .
r49 :- f46, f47, f48 .
utility( r49 , 0 ).
query( r49 ).
? :: c51 .
? :: c50 .
r52 :- f46, f47, not(f48), c51 .
utility( r52 , 0 ).
query( r52 ).
r53 :- f46, f47, not(f48), c50 .
utility( r53 , 1 ).
query( r53 ).
? :: c55 .
? :: c54 .
0.1 :: f56 .
r57 :- f46, not(f47), c55, f56 .
utility( r57 , 0 ).
query( r57 ).
? :: c58 .
r59 :- f46, not(f47), c55, not(f56), c58 .
utility( r59 , 0 ).
query( r59 ).
0.1 :: f60 .
r61 :- f46, not(f47), c54, f60 .
utility( r61 , 1 ).
query( r61 ).
? :: c63 .
? :: c62 .
r64 :- f46, not(f47), c54, not(f60), c63 .
utility( r64 , 0 ).
query( r64 ).
r65 :- f46, not(f47), c54, not(f60), c62 .
utility( r65 , 1 ).
query( r65 ).
? :: c67 .
? :: c66 .
0.1 :: f68 .
0.1 :: f69 .
r70 :- not(f46), c67, f68, f69 .
utility( r70 , 0 ).
query( r70 ).
? :: c71 .
r72 :- not(f46), c67, f68, not(f69), c71 .
utility( r72 , 0 ).
query( r72 ).
? :: c74 .
? :: c73 .
0.1 :: f75 .
r76 :- not(f46), c67, not(f68), c74, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- not(f46), c67, not(f68), c74, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
0.1 :: f79 .
r80 :- not(f46), c67, not(f68), c73, f79 .
utility( r80 , 1 ).
query( r80 ).
? :: c82 .
? :: c81 .
r83 :- not(f46), c67, not(f68), c73, not(f79), c82 .
utility( r83 , 0 ).
query( r83 ).
r84 :- not(f46), c67, not(f68), c73, not(f79), c81 .
utility( r84 , 1 ).
query( r84 ).
0.1 :: f85 .
0.1 :: f86 .
r87 :- not(f46), c66, f85, f86 .
utility( r87 , 0 ).
query( r87 ).
? :: c88 .
r89 :- not(f46), c66, f85, not(f86), c88 .
utility( r89 , 0 ).
query( r89 ).
? :: c92 .
? :: c91 .
? :: c90 .
0.1 :: f93 .
r94 :- not(f46), c66, not(f85), c92, f93 .
utility( r94 , 1 ).
query( r94 ).
? :: c96 .
? :: c95 .
r97 :- not(f46), c66, not(f85), c92, not(f93), c96 .
utility( r97 , 0 ).
query( r97 ).
r98 :- not(f46), c66, not(f85), c92, not(f93), c95 .
utility( r98 , 1 ).
query( r98 ).
0.1 :: f99 .
r100 :- not(f46), c66, not(f85), c91, f99 .
utility( r100 , 0 ).
query( r100 ).
? :: c101 .
r102 :- not(f46), c66, not(f85), c91, not(f99), c101 .
utility( r102 , 0 ).
query( r102 ).
0.1 :: f103 .
r104 :- not(f46), c66, not(f85), c90, f103 .
utility( r104 , 1 ).
query( r104 ).
? :: c107 .
? :: c106 .
? :: c105 .
r108 :- not(f46), c66, not(f85), c90, not(f103), c107 .
utility( r108 , 1 ).
query( r108 ).
r109 :- not(f46), c66, not(f85), c90, not(f103), c106 .
utility( r109 , 0 ).
query( r109 ).
r110 :- not(f46), c66, not(f85), c90, not(f103), c105 .
utility( r110 , 0 ).
query( r110 ).
