0.1 :: f111 .
0.1 :: f112 .
0.1 :: f113 .
r114 :- f111, f112, f113 .
utility( r114 , 1 ).
query( r114 ).
? :: c116 .
? :: c115 .
r117 :- f111, f112, not(f113), c116 .
utility( r117 , 0 ).
query( r117 ).
r118 :- f111, f112, not(f113), c115 .
utility( r118 , 1 ).
query( r118 ).
? :: c120 .
? :: c119 .
0.1 :: f121 .
r122 :- f111, not(f112), c120, f121 .
utility( r122 , 0 ).
query( r122 ).
? :: c123 .
r124 :- f111, not(f112), c120, not(f121), c123 .
utility( r124 , 0 ).
query( r124 ).
0.1 :: f125 .
r126 :- f111, not(f112), c119, f125 .
utility( r126 , 0 ).
query( r126 ).
? :: c128 .
? :: c127 .
r129 :- f111, not(f112), c119, not(f125), c128 .
utility( r129 , 0 ).
query( r129 ).
r130 :- f111, not(f112), c119, not(f125), c127 .
utility( r130 , 1 ).
query( r130 ).
? :: c133 .
? :: c132 .
? :: c131 .
0.1 :: f134 .
0.1 :: f135 .
r136 :- not(f111), c133, f134, f135 .
utility( r136 , 0 ).
query( r136 ).
? :: c137 .
r138 :- not(f111), c133, f134, not(f135), c137 .
utility( r138 , 0 ).
query( r138 ).
? :: c139 .
0.1 :: f140 .
r141 :- not(f111), c133, not(f134), c139, f140 .
utility( r141 , 0 ).
query( r141 ).
? :: c142 .
r143 :- not(f111), c133, not(f134), c139, not(f140), c142 .
utility( r143 , 0 ).
query( r143 ).
0.1 :: f144 .
r145 :- not(f111), c132, f144 .
utility( r145 , 0 ).
query( r145 ).
? :: c146 .
r147 :- not(f111), c132, not(f144), c146 .
utility( r147 , 0 ).
query( r147 ).
0.1 :: f148 .
0.1 :: f149 .
r150 :- not(f111), c131, f148, f149 .
utility( r150 , 1 ).
query( r150 ).
? :: c152 .
? :: c151 .
r153 :- not(f111), c131, f148, not(f149), c152 .
utility( r153 , 0 ).
query( r153 ).
r154 :- not(f111), c131, f148, not(f149), c151 .
utility( r154 , 1 ).
query( r154 ).
? :: c156 .
? :: c155 .
0.1 :: f157 .
r158 :- not(f111), c131, not(f148), c156, f157 .
utility( r158 , 0 ).
query( r158 ).
? :: c159 .
r160 :- not(f111), c131, not(f148), c156, not(f157), c159 .
utility( r160 , 0 ).
query( r160 ).
0.1 :: f161 .
r162 :- not(f111), c131, not(f148), c155, f161 .
utility( r162 , 1 ).
query( r162 ).
? :: c164 .
? :: c163 .
r165 :- not(f111), c131, not(f148), c155, not(f161), c164 .
utility( r165 , 0 ).
query( r165 ).
r166 :- not(f111), c131, not(f148), c155, not(f161), c163 .
utility( r166 , 1 ).
query( r166 ).
