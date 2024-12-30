0.1 :: f26 .
0.1 :: f27 .
0.1 :: f28 .
r29 :- f26, f27, f28 .
utility( r29 , 0 ).
query( r29 ).
? :: c30 .
r31 :- f26, f27, not(f28), c30 .
utility( r31 , 0 ).
query( r31 ).
? :: c33 .
? :: c32 .
0.1 :: f34 .
r35 :- f26, not(f27), c33, f34 .
utility( r35 , 0 ).
query( r35 ).
? :: c36 .
r37 :- f26, not(f27), c33, not(f34), c36 .
utility( r37 , 0 ).
query( r37 ).
0.1 :: f38 .
r39 :- f26, not(f27), c32, f38 .
utility( r39 , 0 ).
query( r39 ).
? :: c40 .
r41 :- f26, not(f27), c32, not(f38), c40 .
utility( r41 , 0 ).
query( r41 ).
? :: c43 .
? :: c42 .
0.1 :: f44 .
0.1 :: f45 .
r46 :- not(f26), c43, f44, f45 .
utility( r46 , 0 ).
query( r46 ).
? :: c47 .
r48 :- not(f26), c43, f44, not(f45), c47 .
utility( r48 , 0 ).
query( r48 ).
? :: c50 .
? :: c49 .
0.1 :: f51 .
r52 :- not(f26), c43, not(f44), c50, f51 .
utility( r52 , 0 ).
query( r52 ).
? :: c53 .
r54 :- not(f26), c43, not(f44), c50, not(f51), c53 .
utility( r54 , 0 ).
query( r54 ).
0.1 :: f55 .
r56 :- not(f26), c43, not(f44), c49, f55 .
utility( r56 , 0 ).
query( r56 ).
? :: c57 .
r58 :- not(f26), c43, not(f44), c49, not(f55), c57 .
utility( r58 , 0 ).
query( r58 ).
0.1 :: f59 .
0.1 :: f60 .
r61 :- not(f26), c42, f59, f60 .
utility( r61 , 0 ).
query( r61 ).
? :: c63 .
? :: c62 .
r64 :- not(f26), c42, f59, not(f60), c63 .
utility( r64 , 0 ).
query( r64 ).
r65 :- not(f26), c42, f59, not(f60), c62 .
utility( r65 , 0 ).
query( r65 ).
? :: c68 .
? :: c67 .
? :: c66 .
0.1 :: f69 .
r70 :- not(f26), c42, not(f59), c68, f69 .
utility( r70 , 0 ).
query( r70 ).
? :: c72 .
? :: c71 .
r73 :- not(f26), c42, not(f59), c68, not(f69), c72 .
utility( r73 , 0 ).
query( r73 ).
r74 :- not(f26), c42, not(f59), c68, not(f69), c71 .
utility( r74 , 0 ).
query( r74 ).
0.1 :: f75 .
r76 :- not(f26), c42, not(f59), c67, f75 .
utility( r76 , 0 ).
query( r76 ).
? :: c77 .
r78 :- not(f26), c42, not(f59), c67, not(f75), c77 .
utility( r78 , 0 ).
query( r78 ).
0.1 :: f79 .
r80 :- not(f26), c42, not(f59), c66, f79 .
utility( r80 , 0 ).
query( r80 ).
? :: c82 .
? :: c81 .
r83 :- not(f26), c42, not(f59), c66, not(f79), c82 .
utility( r83 , 0 ).
query( r83 ).
r84 :- not(f26), c42, not(f59), c66, not(f79), c81 .
utility( r84 , 0 ).
query( r84 ).
