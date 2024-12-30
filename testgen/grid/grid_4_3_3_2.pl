0.1 :: f46 .
0.1 :: f47 .
0.1 :: f48 .
r49 :- f46, f47, f48 .
utility( r49 , 0 ).
query( r49 ).
? :: c50 .
r51 :- f46, f47, not(f48), c50 .
utility( r51 , 0 ).
query( r51 ).
? :: c53 .
? :: c52 .
0.1 :: f54 .
r55 :- f46, not(f47), c53, f54 .
utility( r55 , 0 ).
query( r55 ).
? :: c56 .
r57 :- f46, not(f47), c53, not(f54), c56 .
utility( r57 , 0 ).
query( r57 ).
0.1 :: f58 .
r59 :- f46, not(f47), c52, f58 .
utility( r59 , 1 ).
query( r59 ).
? :: c60 .
r61 :- f46, not(f47), c52, not(f58), c60 .
utility( r61 , 1 ).
query( r61 ).
? :: c64 .
? :: c63 .
? :: c62 .
0.1 :: f65 .
0.1 :: f66 .
r67 :- not(f46), c64, f65, f66 .
utility( r67 , 0 ).
query( r67 ).
? :: c68 .
r69 :- not(f46), c64, f65, not(f66), c68 .
utility( r69 , 0 ).
query( r69 ).
? :: c70 .
0.1 :: f71 .
r72 :- not(f46), c64, not(f65), c70, f71 .
utility( r72 , 0 ).
query( r72 ).
? :: c73 .
r74 :- not(f46), c64, not(f65), c70, not(f71), c73 .
utility( r74 , 0 ).
query( r74 ).
0.1 :: f75 .
r76 :- not(f46), c63, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c78 .
? :: c77 .
r79 :- not(f46), c63, not(f75), c78 .
utility( r79 , 0 ).
query( r79 ).
0.1 :: f80 .
r81 :- not(f46), c63, not(f75), c77, f80 .
utility( r81 , 1 ).
query( r81 ).
? :: c82 .
r83 :- not(f46), c63, not(f75), c77, not(f80), c82 .
utility( r83 , 1 ).
query( r83 ).
0.1 :: f84 .
0.1 :: f85 .
r86 :- not(f46), c62, f84, f85 .
utility( r86 , 0 ).
query( r86 ).
? :: c87 .
r88 :- not(f46), c62, f84, not(f85), c87 .
utility( r88 , 0 ).
query( r88 ).
? :: c90 .
? :: c89 .
0.1 :: f91 .
r92 :- not(f46), c62, not(f84), c90, f91 .
utility( r92 , 0 ).
query( r92 ).
? :: c93 .
r94 :- not(f46), c62, not(f84), c90, not(f91), c93 .
utility( r94 , 0 ).
query( r94 ).
0.1 :: f95 .
r96 :- not(f46), c62, not(f84), c89, f95 .
utility( r96 , 1 ).
query( r96 ).
? :: c97 .
r98 :- not(f46), c62, not(f84), c89, not(f95), c97 .
utility( r98 , 1 ).
query( r98 ).
