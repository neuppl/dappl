0.1 :: f94 .
0.1 :: f95 .
0.1 :: f96 .
0.1 :: f97 .
r98 :- f94, f95, f96, f97 .
utility( r98 , 0 ).
query( r98 ).
? :: c99 .
r100 :- f94, f95, f96, not(f97), c99 .
utility( r100 , 0 ).
query( r100 ).
? :: c102 .
? :: c101 .
0.1 :: f103 .
r104 :- f94, f95, not(f96), c102, f103 .
utility( r104 , 0 ).
query( r104 ).
? :: c106 .
? :: c105 .
r107 :- f94, f95, not(f96), c102, not(f103), c106 .
utility( r107 , 0 ).
query( r107 ).
r108 :- f94, f95, not(f96), c102, not(f103), c105 .
utility( r108 , 0 ).
query( r108 ).
0.1 :: f109 .
r110 :- f94, f95, not(f96), c101, f109 .
utility( r110 , 0 ).
query( r110 ).
? :: c111 .
r112 :- f94, f95, not(f96), c101, not(f109), c111 .
utility( r112 , 0 ).
query( r112 ).
? :: c113 .
0.1 :: f114 .
0.1 :: f115 .
r116 :- f94, not(f95), c113, f114, f115 .
utility( r116 , 0 ).
query( r116 ).
? :: c117 .
r118 :- f94, not(f95), c113, f114, not(f115), c117 .
utility( r118 , 0 ).
query( r118 ).
? :: c120 .
? :: c119 .
0.1 :: f121 .
r122 :- f94, not(f95), c113, not(f114), c120, f121 .
utility( r122 , 0 ).
query( r122 ).
? :: c124 .
? :: c123 .
r125 :- f94, not(f95), c113, not(f114), c120, not(f121), c124 .
utility( r125 , 0 ).
query( r125 ).
r126 :- f94, not(f95), c113, not(f114), c120, not(f121), c123 .
utility( r126 , 0 ).
query( r126 ).
0.1 :: f127 .
r128 :- f94, not(f95), c113, not(f114), c119, f127 .
utility( r128 , 0 ).
query( r128 ).
? :: c129 .
r130 :- f94, not(f95), c113, not(f114), c119, not(f127), c129 .
utility( r130 , 0 ).
query( r130 ).
? :: c132 .
? :: c131 .
0.1 :: f133 .
0.1 :: f134 .
0.1 :: f135 .
r136 :- not(f94), c132, f133, f134, f135 .
utility( r136 , 0 ).
query( r136 ).
? :: c138 .
? :: c137 .
r139 :- not(f94), c132, f133, f134, not(f135), c138 .
utility( r139 , 0 ).
query( r139 ).
r140 :- not(f94), c132, f133, f134, not(f135), c137 .
utility( r140 , 0 ).
query( r140 ).
? :: c142 .
? :: c141 .
0.1 :: f143 .
r144 :- not(f94), c132, f133, not(f134), c142, f143 .
utility( r144 , 0 ).
query( r144 ).
? :: c146 .
? :: c145 .
r147 :- not(f94), c132, f133, not(f134), c142, not(f143), c146 .
utility( r147 , 0 ).
query( r147 ).
r148 :- not(f94), c132, f133, not(f134), c142, not(f143), c145 .
utility( r148 , 0 ).
query( r148 ).
0.1 :: f149 .
r150 :- not(f94), c132, f133, not(f134), c141, f149 .
utility( r150 , 0 ).
query( r150 ).
? :: c151 .
r152 :- not(f94), c132, f133, not(f134), c141, not(f149), c151 .
utility( r152 , 0 ).
query( r152 ).
? :: c153 .
0.1 :: f154 .
0.1 :: f155 .
r156 :- not(f94), c132, not(f133), c153, f154, f155 .
utility( r156 , 0 ).
query( r156 ).
? :: c157 .
r158 :- not(f94), c132, not(f133), c153, f154, not(f155), c157 .
utility( r158 , 0 ).
query( r158 ).
? :: c160 .
? :: c159 .
0.1 :: f161 .
r162 :- not(f94), c132, not(f133), c153, not(f154), c160, f161 .
utility( r162 , 0 ).
query( r162 ).
? :: c164 .
? :: c163 .
r165 :- not(f94), c132, not(f133), c153, not(f154), c160, not(f161), c164 .
utility( r165 , 0 ).
query( r165 ).
r166 :- not(f94), c132, not(f133), c153, not(f154), c160, not(f161), c163 .
utility( r166 , 0 ).
query( r166 ).
0.1 :: f167 .
r168 :- not(f94), c132, not(f133), c153, not(f154), c159, f167 .
utility( r168 , 0 ).
query( r168 ).
? :: c169 .
r170 :- not(f94), c132, not(f133), c153, not(f154), c159, not(f167), c169 .
utility( r170 , 0 ).
query( r170 ).
0.1 :: f171 .
0.1 :: f172 .
0.1 :: f173 .
r174 :- not(f94), c131, f171, f172, f173 .
utility( r174 , 0 ).
query( r174 ).
? :: c176 .
? :: c175 .
r177 :- not(f94), c131, f171, f172, not(f173), c176 .
utility( r177 , 0 ).
query( r177 ).
r178 :- not(f94), c131, f171, f172, not(f173), c175 .
utility( r178 , 0 ).
query( r178 ).
? :: c180 .
? :: c179 .
0.1 :: f181 .
r182 :- not(f94), c131, f171, not(f172), c180, f181 .
utility( r182 , 0 ).
query( r182 ).
? :: c184 .
? :: c183 .
r185 :- not(f94), c131, f171, not(f172), c180, not(f181), c184 .
utility( r185 , 0 ).
query( r185 ).
r186 :- not(f94), c131, f171, not(f172), c180, not(f181), c183 .
utility( r186 , 0 ).
query( r186 ).
0.1 :: f187 .
r188 :- not(f94), c131, f171, not(f172), c179, f187 .
utility( r188 , 0 ).
query( r188 ).
? :: c189 .
r190 :- not(f94), c131, f171, not(f172), c179, not(f187), c189 .
utility( r190 , 0 ).
query( r190 ).
? :: c191 .
0.1 :: f192 .
0.1 :: f193 .
r194 :- not(f94), c131, not(f171), c191, f192, f193 .
utility( r194 , 0 ).
query( r194 ).
? :: c196 .
? :: c195 .
r197 :- not(f94), c131, not(f171), c191, f192, not(f193), c196 .
utility( r197 , 0 ).
query( r197 ).
r198 :- not(f94), c131, not(f171), c191, f192, not(f193), c195 .
utility( r198 , 0 ).
query( r198 ).
? :: c200 .
? :: c199 .
0.1 :: f201 .
r202 :- not(f94), c131, not(f171), c191, not(f192), c200, f201 .
utility( r202 , 0 ).
query( r202 ).
? :: c204 .
? :: c203 .
r205 :- not(f94), c131, not(f171), c191, not(f192), c200, not(f201), c204 .
utility( r205 , 0 ).
query( r205 ).
r206 :- not(f94), c131, not(f171), c191, not(f192), c200, not(f201), c203 .
utility( r206 , 0 ).
query( r206 ).
0.1 :: f207 .
r208 :- not(f94), c131, not(f171), c191, not(f192), c199, f207 .
utility( r208 , 0 ).
query( r208 ).
? :: c209 .
r210 :- not(f94), c131, not(f171), c191, not(f192), c199, not(f207), c209 .
utility( r210 , 0 ).
query( r210 ).
