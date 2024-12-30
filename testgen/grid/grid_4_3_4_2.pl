0.1 :: f113 .
0.1 :: f114 .
0.1 :: f115 .
r116 :- f113, f114, f115 .
utility( r116 , 1 ).
query( r116 ).
? :: c117 .
r118 :- f113, f114, not(f115), c117 .
utility( r118 , 1 ).
query( r118 ).
? :: c119 .
0.1 :: f120 .
r121 :- f113, not(f114), c119, f120 .
utility( r121 , 1 ).
query( r121 ).
? :: c122 .
r123 :- f113, not(f114), c119, not(f120), c122 .
utility( r123 , 1 ).
query( r123 ).
? :: c125 .
? :: c124 .
0.1 :: f126 .
0.1 :: f127 .
r128 :- not(f113), c125, f126, f127 .
utility( r128 , 1 ).
query( r128 ).
? :: c129 .
r130 :- not(f113), c125, f126, not(f127), c129 .
utility( r130 , 1 ).
query( r130 ).
? :: c131 .
0.1 :: f132 .
r133 :- not(f113), c125, not(f126), c131, f132 .
utility( r133 , 1 ).
query( r133 ).
? :: c134 .
r135 :- not(f113), c125, not(f126), c131, not(f132), c134 .
utility( r135 , 1 ).
query( r135 ).
0.1 :: f136 .
0.1 :: f137 .
0.1 :: f138 .
r139 :- not(f113), c124, f136, f137, f138 .
utility( r139 , 0 ).
query( r139 ).
? :: c141 .
? :: c140 .
r142 :- not(f113), c124, f136, f137, not(f138), c141 .
utility( r142 , 0 ).
query( r142 ).
r143 :- not(f113), c124, f136, f137, not(f138), c140 .
utility( r143 , 0 ).
query( r143 ).
? :: c144 .
0.1 :: f145 .
r146 :- not(f113), c124, f136, not(f137), c144, f145 .
utility( r146 , 0 ).
query( r146 ).
? :: c148 .
? :: c147 .
r149 :- not(f113), c124, f136, not(f137), c144, not(f145), c148 .
utility( r149 , 0 ).
query( r149 ).
r150 :- not(f113), c124, f136, not(f137), c144, not(f145), c147 .
utility( r150 , 0 ).
query( r150 ).
? :: c151 .
0.1 :: f152 .
0.1 :: f153 .
r154 :- not(f113), c124, not(f136), c151, f152, f153 .
utility( r154 , 0 ).
query( r154 ).
? :: c156 .
? :: c155 .
r157 :- not(f113), c124, not(f136), c151, f152, not(f153), c156 .
utility( r157 , 0 ).
query( r157 ).
r158 :- not(f113), c124, not(f136), c151, f152, not(f153), c155 .
utility( r158 , 0 ).
query( r158 ).
? :: c159 .
0.1 :: f160 .
r161 :- not(f113), c124, not(f136), c151, not(f152), c159, f160 .
utility( r161 , 0 ).
query( r161 ).
? :: c163 .
? :: c162 .
r164 :- not(f113), c124, not(f136), c151, not(f152), c159, not(f160), c163 .
utility( r164 , 0 ).
query( r164 ).
r165 :- not(f113), c124, not(f136), c151, not(f152), c159, not(f160), c162 .
utility( r165 , 0 ).
query( r165 ).
