0.1 :: f131 .
0.1 :: f132 .
0.1 :: f133 .
r134 :- f131, f132, f133 .
utility( r134 , 1 ).
query( r134 ).
? :: c136 .
? :: c135 .
r137 :- f131, f132, not(f133), c136 .
utility( r137 , 0 ).
query( r137 ).
r138 :- f131, f132, not(f133), c135 .
utility( r138 , 1 ).
query( r138 ).
? :: c141 .
? :: c140 .
? :: c139 .
0.1 :: f142 .
r143 :- f131, not(f132), c141, f142 .
utility( r143 , 1 ).
query( r143 ).
? :: c145 .
? :: c144 .
r146 :- f131, not(f132), c141, not(f142), c145 .
utility( r146 , 0 ).
query( r146 ).
r147 :- f131, not(f132), c141, not(f142), c144 .
utility( r147 , 1 ).
query( r147 ).
0.1 :: f148 .
r149 :- f131, not(f132), c140, f148 .
utility( r149 , 0 ).
query( r149 ).
? :: c150 .
r151 :- f131, not(f132), c140, not(f148), c150 .
utility( r151 , 0 ).
query( r151 ).
0.1 :: f152 .
r153 :- f131, not(f132), c139, f152 .
utility( r153 , 1 ).
query( r153 ).
? :: c156 .
? :: c155 .
? :: c154 .
r157 :- f131, not(f132), c139, not(f152), c156 .
utility( r157 , 1 ).
query( r157 ).
r158 :- f131, not(f132), c139, not(f152), c155 .
utility( r158 , 0 ).
query( r158 ).
r159 :- f131, not(f132), c139, not(f152), c154 .
utility( r159 , 0 ).
query( r159 ).
? :: c160 .
0.1 :: f161 .
0.1 :: f162 .
r163 :- not(f131), c160, f161, f162 .
utility( r163 , 0 ).
query( r163 ).
? :: c166 .
? :: c165 .
? :: c164 .
r167 :- not(f131), c160, f161, not(f162), c166 .
utility( r167 , 1 ).
query( r167 ).
r168 :- not(f131), c160, f161, not(f162), c165 .
utility( r168 , 0 ).
query( r168 ).
r169 :- not(f131), c160, f161, not(f162), c164 .
utility( r169 , 0 ).
query( r169 ).
? :: c172 .
? :: c171 .
? :: c170 .
0.1 :: f173 .
r174 :- not(f131), c160, not(f161), c172, f173 .
utility( r174 , 0 ).
query( r174 ).
? :: c176 .
? :: c175 .
r177 :- not(f131), c160, not(f161), c172, not(f173), c176 .
utility( r177 , 0 ).
query( r177 ).
r178 :- not(f131), c160, not(f161), c172, not(f173), c175 .
utility( r178 , 1 ).
query( r178 ).
0.1 :: f179 .
r180 :- not(f131), c160, not(f161), c171, f179 .
utility( r180 , 0 ).
query( r180 ).
? :: c181 .
r182 :- not(f131), c160, not(f161), c171, not(f179), c181 .
utility( r182 , 0 ).
query( r182 ).
0.1 :: f183 .
r184 :- not(f131), c160, not(f161), c170, f183 .
utility( r184 , 0 ).
query( r184 ).
? :: c187 .
? :: c186 .
? :: c185 .
r188 :- not(f131), c160, not(f161), c170, not(f183), c187 .
utility( r188 , 1 ).
query( r188 ).
r189 :- not(f131), c160, not(f161), c170, not(f183), c186 .
utility( r189 , 0 ).
query( r189 ).
r190 :- not(f131), c160, not(f161), c170, not(f183), c185 .
utility( r190 , 0 ).
query( r190 ).
