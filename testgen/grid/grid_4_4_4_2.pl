0.1 :: f87 .
0.1 :: f88 .
0.1 :: f89 .
0.1 :: f90 .
r91 :- f87, f88, f89, f90 .
utility( r91 , 1 ).
query( r91 ).
? :: c93 .
? :: c92 .
r94 :- f87, f88, f89, not(f90), c93 .
utility( r94 , 1 ).
query( r94 ).
r95 :- f87, f88, f89, not(f90), c92 .
utility( r95 , 0 ).
query( r95 ).
? :: c97 .
? :: c96 .
0.1 :: f98 .
r99 :- f87, f88, not(f89), c97, f98 .
utility( r99 , 0 ).
query( r99 ).
? :: c101 .
? :: c100 .
r102 :- f87, f88, not(f89), c97, not(f98), c101 .
utility( r102 , 1 ).
query( r102 ).
r103 :- f87, f88, not(f89), c97, not(f98), c100 .
utility( r103 , 0 ).
query( r103 ).
0.1 :: f104 .
r105 :- f87, f88, not(f89), c96, f104 .
utility( r105 , 0 ).
query( r105 ).
? :: c106 .
r107 :- f87, f88, not(f89), c96, not(f104), c106 .
utility( r107 , 0 ).
query( r107 ).
? :: c108 .
0.1 :: f109 .
0.1 :: f110 .
r111 :- f87, not(f88), c108, f109, f110 .
utility( r111 , 1 ).
query( r111 ).
? :: c113 .
? :: c112 .
r114 :- f87, not(f88), c108, f109, not(f110), c113 .
utility( r114 , 1 ).
query( r114 ).
r115 :- f87, not(f88), c108, f109, not(f110), c112 .
utility( r115 , 0 ).
query( r115 ).
? :: c117 .
? :: c116 .
0.1 :: f118 .
r119 :- f87, not(f88), c108, not(f109), c117, f118 .
utility( r119 , 1 ).
query( r119 ).
? :: c121 .
? :: c120 .
r122 :- f87, not(f88), c108, not(f109), c117, not(f118), c121 .
utility( r122 , 1 ).
query( r122 ).
r123 :- f87, not(f88), c108, not(f109), c117, not(f118), c120 .
utility( r123 , 0 ).
query( r123 ).
0.1 :: f124 .
r125 :- f87, not(f88), c108, not(f109), c116, f124 .
utility( r125 , 0 ).
query( r125 ).
? :: c126 .
r127 :- f87, not(f88), c108, not(f109), c116, not(f124), c126 .
utility( r127 , 0 ).
query( r127 ).
? :: c129 .
? :: c128 .
r130 :- not(f87), c129 .
utility( r130 , 0 ).
query( r130 ).
0.1 :: f131 .
0.1 :: f132 .
0.1 :: f133 .
r134 :- not(f87), c128, f131, f132, f133 .
utility( r134 , 0 ).
query( r134 ).
? :: c135 .
r136 :- not(f87), c128, f131, f132, not(f133), c135 .
utility( r136 , 0 ).
query( r136 ).
? :: c138 .
? :: c137 .
0.1 :: f139 .
r140 :- not(f87), c128, f131, not(f132), c138, f139 .
utility( r140 , 0 ).
query( r140 ).
? :: c142 .
? :: c141 .
r143 :- not(f87), c128, f131, not(f132), c138, not(f139), c142 .
utility( r143 , 1 ).
query( r143 ).
r144 :- not(f87), c128, f131, not(f132), c138, not(f139), c141 .
utility( r144 , 0 ).
query( r144 ).
0.1 :: f145 .
r146 :- not(f87), c128, f131, not(f132), c137, f145 .
utility( r146 , 0 ).
query( r146 ).
? :: c147 .
r148 :- not(f87), c128, f131, not(f132), c137, not(f145), c147 .
utility( r148 , 0 ).
query( r148 ).
? :: c149 .
0.1 :: f150 .
0.1 :: f151 .
r152 :- not(f87), c128, not(f131), c149, f150, f151 .
utility( r152 , 0 ).
query( r152 ).
? :: c153 .
r154 :- not(f87), c128, not(f131), c149, f150, not(f151), c153 .
utility( r154 , 0 ).
query( r154 ).
? :: c156 .
? :: c155 .
0.1 :: f157 .
r158 :- not(f87), c128, not(f131), c149, not(f150), c156, f157 .
utility( r158 , 1 ).
query( r158 ).
? :: c160 .
? :: c159 .
r161 :- not(f87), c128, not(f131), c149, not(f150), c156, not(f157), c160 .
utility( r161 , 1 ).
query( r161 ).
r162 :- not(f87), c128, not(f131), c149, not(f150), c156, not(f157), c159 .
utility( r162 , 0 ).
query( r162 ).
0.1 :: f163 .
r164 :- not(f87), c128, not(f131), c149, not(f150), c155, f163 .
utility( r164 , 0 ).
query( r164 ).
? :: c165 .
r166 :- not(f87), c128, not(f131), c149, not(f150), c155, not(f163), c165 .
utility( r166 , 0 ).
query( r166 ).
