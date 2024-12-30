0.1 :: f77 .
0.1 :: f78 .
0.1 :: f79 .
0.1 :: f80 .
r81 :- f77, f78, f79, f80 .
utility( r81 , 0 ).
query( r81 ).
? :: c83 .
? :: c82 .
r84 :- f77, f78, f79, not(f80), c83 .
utility( r84 , 1 ).
query( r84 ).
r85 :- f77, f78, f79, not(f80), c82 .
utility( r85 , 0 ).
query( r85 ).
? :: c86 .
0.1 :: f87 .
r88 :- f77, f78, not(f79), c86, f87 .
utility( r88 , 0 ).
query( r88 ).
? :: c90 .
? :: c89 .
r91 :- f77, f78, not(f79), c86, not(f87), c90 .
utility( r91 , 1 ).
query( r91 ).
r92 :- f77, f78, not(f79), c86, not(f87), c89 .
utility( r92 , 0 ).
query( r92 ).
? :: c93 .
0.1 :: f94 .
0.1 :: f95 .
r96 :- f77, not(f78), c93, f94, f95 .
utility( r96 , 1 ).
query( r96 ).
? :: c98 .
? :: c97 .
r99 :- f77, not(f78), c93, f94, not(f95), c98 .
utility( r99 , 1 ).
query( r99 ).
r100 :- f77, not(f78), c93, f94, not(f95), c97 .
utility( r100 , 0 ).
query( r100 ).
? :: c101 .
0.1 :: f102 .
r103 :- f77, not(f78), c93, not(f94), c101, f102 .
utility( r103 , 1 ).
query( r103 ).
? :: c105 .
? :: c104 .
r106 :- f77, not(f78), c93, not(f94), c101, not(f102), c105 .
utility( r106 , 1 ).
query( r106 ).
r107 :- f77, not(f78), c93, not(f94), c101, not(f102), c104 .
utility( r107 , 0 ).
query( r107 ).
? :: c108 .
0.1 :: f109 .
0.1 :: f110 .
0.1 :: f111 .
r112 :- not(f77), c108, f109, f110, f111 .
utility( r112 , 1 ).
query( r112 ).
? :: c114 .
? :: c113 .
r115 :- not(f77), c108, f109, f110, not(f111), c114 .
utility( r115 , 1 ).
query( r115 ).
r116 :- not(f77), c108, f109, f110, not(f111), c113 .
utility( r116 , 0 ).
query( r116 ).
? :: c117 .
0.1 :: f118 .
r119 :- not(f77), c108, f109, not(f110), c117, f118 .
utility( r119 , 0 ).
query( r119 ).
? :: c121 .
? :: c120 .
r122 :- not(f77), c108, f109, not(f110), c117, not(f118), c121 .
utility( r122 , 1 ).
query( r122 ).
r123 :- not(f77), c108, f109, not(f110), c117, not(f118), c120 .
utility( r123 , 0 ).
query( r123 ).
? :: c124 .
0.1 :: f125 .
0.1 :: f126 .
r127 :- not(f77), c108, not(f109), c124, f125, f126 .
utility( r127 , 0 ).
query( r127 ).
? :: c129 .
? :: c128 .
r130 :- not(f77), c108, not(f109), c124, f125, not(f126), c129 .
utility( r130 , 1 ).
query( r130 ).
r131 :- not(f77), c108, not(f109), c124, f125, not(f126), c128 .
utility( r131 , 0 ).
query( r131 ).
? :: c132 .
0.1 :: f133 .
r134 :- not(f77), c108, not(f109), c124, not(f125), c132, f133 .
utility( r134 , 0 ).
query( r134 ).
? :: c136 .
? :: c135 .
r137 :- not(f77), c108, not(f109), c124, not(f125), c132, not(f133), c136 .
utility( r137 , 1 ).
query( r137 ).
r138 :- not(f77), c108, not(f109), c124, not(f125), c132, not(f133), c135 .
utility( r138 , 0 ).
query( r138 ).
