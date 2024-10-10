0.1 :: f114 .
0.1 :: f115 .
0.1 :: f116 .
r117 :- f114, f115, f116 .
utility( r117 , 0 ).
query( r117 ).
? :: c119 .
? :: c118 .
r120 :- f114, f115, not(f116), c119 .
utility( r120 , 0 ).
query( r120 ).
r121 :- f114, f115, not(f116), c118 .
utility( r121 , 0 ).
query( r121 ).
? :: c124 .
? :: c123 .
? :: c122 .
0.1 :: f125 .
r126 :- f114, not(f115), c124, f125 .
utility( r126 , 0 ).
query( r126 ).
? :: c128 .
? :: c127 .
r129 :- f114, not(f115), c124, not(f125), c128 .
utility( r129 , 0 ).
query( r129 ).
r130 :- f114, not(f115), c124, not(f125), c127 .
utility( r130 , 0 ).
query( r130 ).
0.1 :: f131 .
r132 :- f114, not(f115), c123, f131 .
utility( r132 , 0 ).
query( r132 ).
? :: c133 .
r134 :- f114, not(f115), c123, not(f131), c133 .
utility( r134 , 0 ).
query( r134 ).
0.1 :: f135 .
r136 :- f114, not(f115), c122, f135 .
utility( r136 , 0 ).
query( r136 ).
? :: c139 .
? :: c138 .
? :: c137 .
r140 :- f114, not(f115), c122, not(f135), c139 .
utility( r140 , 0 ).
query( r140 ).
r141 :- f114, not(f115), c122, not(f135), c138 .
utility( r141 , 0 ).
query( r141 ).
r142 :- f114, not(f115), c122, not(f135), c137 .
utility( r142 , 0 ).
query( r142 ).
? :: c145 .
? :: c144 .
? :: c143 .
0.1 :: f146 .
0.1 :: f147 .
r148 :- not(f114), c145, f146, f147 .
utility( r148 , 0 ).
query( r148 ).
? :: c150 .
? :: c149 .
r151 :- not(f114), c145, f146, not(f147), c150 .
utility( r151 , 0 ).
query( r151 ).
r152 :- not(f114), c145, f146, not(f147), c149 .
utility( r152 , 0 ).
query( r152 ).
? :: c154 .
? :: c153 .
0.1 :: f155 .
r156 :- not(f114), c145, not(f146), c154, f155 .
utility( r156 , 0 ).
query( r156 ).
? :: c157 .
r158 :- not(f114), c145, not(f146), c154, not(f155), c157 .
utility( r158 , 0 ).
query( r158 ).
0.1 :: f159 .
r160 :- not(f114), c145, not(f146), c153, f159 .
utility( r160 , 0 ).
query( r160 ).
? :: c162 .
? :: c161 .
r163 :- not(f114), c145, not(f146), c153, not(f159), c162 .
utility( r163 , 0 ).
query( r163 ).
r164 :- not(f114), c145, not(f146), c153, not(f159), c161 .
utility( r164 , 0 ).
query( r164 ).
0.1 :: f165 .
0.1 :: f166 .
r167 :- not(f114), c144, f165, f166 .
utility( r167 , 0 ).
query( r167 ).
? :: c168 .
r169 :- not(f114), c144, f165, not(f166), c168 .
utility( r169 , 0 ).
query( r169 ).
? :: c170 .
0.1 :: f171 .
r172 :- not(f114), c144, not(f165), c170, f171 .
utility( r172 , 0 ).
query( r172 ).
? :: c173 .
r174 :- not(f114), c144, not(f165), c170, not(f171), c173 .
utility( r174 , 0 ).
query( r174 ).
0.1 :: f175 .
0.1 :: f176 .
r177 :- not(f114), c143, f175, f176 .
utility( r177 , 0 ).
query( r177 ).
? :: c179 .
? :: c178 .
r180 :- not(f114), c143, f175, not(f176), c179 .
utility( r180 , 0 ).
query( r180 ).
r181 :- not(f114), c143, f175, not(f176), c178 .
utility( r181 , 0 ).
query( r181 ).
? :: c184 .
? :: c183 .
? :: c182 .
0.1 :: f185 .
r186 :- not(f114), c143, not(f175), c184, f185 .
utility( r186 , 0 ).
query( r186 ).
? :: c188 .
? :: c187 .
r189 :- not(f114), c143, not(f175), c184, not(f185), c188 .
utility( r189 , 0 ).
query( r189 ).
r190 :- not(f114), c143, not(f175), c184, not(f185), c187 .
utility( r190 , 0 ).
query( r190 ).
0.1 :: f191 .
r192 :- not(f114), c143, not(f175), c183, f191 .
utility( r192 , 0 ).
query( r192 ).
? :: c193 .
r194 :- not(f114), c143, not(f175), c183, not(f191), c193 .
utility( r194 , 0 ).
query( r194 ).
0.1 :: f195 .
r196 :- not(f114), c143, not(f175), c182, f195 .
utility( r196 , 0 ).
query( r196 ).
? :: c199 .
? :: c198 .
? :: c197 .
r200 :- not(f114), c143, not(f175), c182, not(f195), c199 .
utility( r200 , 0 ).
query( r200 ).
r201 :- not(f114), c143, not(f175), c182, not(f195), c198 .
utility( r201 , 0 ).
query( r201 ).
r202 :- not(f114), c143, not(f175), c182, not(f195), c197 .
utility( r202 , 0 ).
query( r202 ).
