0.1 :: f133 .
0.1 :: f134 .
0.1 :: f135 .
r136 :- f133, f134, f135 .
utility( r136 , 0 ).
query( r136 ).
? :: c137 .
r138 :- f133, f134, not(f135), c137 .
utility( r138 , 0 ).
query( r138 ).
? :: c141 .
? :: c140 .
? :: c139 .
0.1 :: f142 .
r143 :- f133, not(f134), c141, f142 .
utility( r143 , 0 ).
query( r143 ).
? :: c145 .
? :: c144 .
r146 :- f133, not(f134), c141, not(f142), c145 .
utility( r146 , 0 ).
query( r146 ).
r147 :- f133, not(f134), c141, not(f142), c144 .
utility( r147 , 0 ).
query( r147 ).
0.1 :: f148 .
r149 :- f133, not(f134), c140, f148 .
utility( r149 , 0 ).
query( r149 ).
? :: c150 .
r151 :- f133, not(f134), c140, not(f148), c150 .
utility( r151 , 0 ).
query( r151 ).
0.1 :: f152 .
r153 :- f133, not(f134), c139, f152 .
utility( r153 , 0 ).
query( r153 ).
? :: c154 .
r155 :- f133, not(f134), c139, not(f152), c154 .
utility( r155 , 0 ).
query( r155 ).
? :: c158 .
? :: c157 .
? :: c156 .
0.1 :: f159 .
0.1 :: f160 .
r161 :- not(f133), c158, f159, f160 .
utility( r161 , 0 ).
query( r161 ).
? :: c162 .
r163 :- not(f133), c158, f159, not(f160), c162 .
utility( r163 , 0 ).
query( r163 ).
? :: c166 .
? :: c165 .
? :: c164 .
0.1 :: f167 .
r168 :- not(f133), c158, not(f159), c166, f167 .
utility( r168 , 0 ).
query( r168 ).
? :: c170 .
? :: c169 .
r171 :- not(f133), c158, not(f159), c166, not(f167), c170 .
utility( r171 , 0 ).
query( r171 ).
r172 :- not(f133), c158, not(f159), c166, not(f167), c169 .
utility( r172 , 0 ).
query( r172 ).
0.1 :: f173 .
r174 :- not(f133), c158, not(f159), c165, f173 .
utility( r174 , 0 ).
query( r174 ).
? :: c175 .
r176 :- not(f133), c158, not(f159), c165, not(f173), c175 .
utility( r176 , 0 ).
query( r176 ).
0.1 :: f177 .
r178 :- not(f133), c158, not(f159), c164, f177 .
utility( r178 , 0 ).
query( r178 ).
? :: c179 .
r180 :- not(f133), c158, not(f159), c164, not(f177), c179 .
utility( r180 , 0 ).
query( r180 ).
0.1 :: f181 .
0.1 :: f182 .
r183 :- not(f133), c157, f181, f182 .
utility( r183 , 0 ).
query( r183 ).
? :: c184 .
r185 :- not(f133), c157, f181, not(f182), c184 .
utility( r185 , 0 ).
query( r185 ).
? :: c186 .
0.1 :: f187 .
r188 :- not(f133), c157, not(f181), c186, f187 .
utility( r188 , 0 ).
query( r188 ).
? :: c189 .
r190 :- not(f133), c157, not(f181), c186, not(f187), c189 .
utility( r190 , 0 ).
query( r190 ).
0.1 :: f191 .
0.1 :: f192 .
r193 :- not(f133), c156, f191, f192 .
utility( r193 , 0 ).
query( r193 ).
? :: c194 .
r195 :- not(f133), c156, f191, not(f192), c194 .
utility( r195 , 0 ).
query( r195 ).
? :: c196 .
0.1 :: f197 .
r198 :- not(f133), c156, not(f191), c196, f197 .
utility( r198 , 0 ).
query( r198 ).
? :: c199 .
r200 :- not(f133), c156, not(f191), c196, not(f197), c199 .
utility( r200 , 0 ).
query( r200 ).
