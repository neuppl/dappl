0.1 :: f139 .
0.1 :: f140 .
0.1 :: f141 .
r142 :- f139, f140, f141 .
utility( r142 , 1 ).
query( r142 ).
? :: c143 .
r144 :- f139, f140, not(f141), c143 .
utility( r144 , 1 ).
query( r144 ).
? :: c145 .
0.1 :: f146 .
r147 :- f139, not(f140), c145, f146 .
utility( r147 , 1 ).
query( r147 ).
? :: c148 .
r149 :- f139, not(f140), c145, not(f146), c148 .
utility( r149 , 1 ).
query( r149 ).
? :: c152 .
? :: c151 .
? :: c150 .
0.1 :: f153 .
0.1 :: f154 .
0.1 :: f155 .
r156 :- not(f139), c152, f153, f154, f155 .
utility( r156 , 0 ).
query( r156 ).
? :: c157 .
r158 :- not(f139), c152, f153, f154, not(f155), c157 .
utility( r158 , 0 ).
query( r158 ).
? :: c159 .
0.1 :: f160 .
r161 :- not(f139), c152, f153, not(f154), c159, f160 .
utility( r161 , 0 ).
query( r161 ).
? :: c162 .
r163 :- not(f139), c152, f153, not(f154), c159, not(f160), c162 .
utility( r163 , 0 ).
query( r163 ).
? :: c165 .
? :: c164 .
0.1 :: f166 .
0.1 :: f167 .
r168 :- not(f139), c152, not(f153), c165, f166, f167 .
utility( r168 , 0 ).
query( r168 ).
? :: c169 .
r170 :- not(f139), c152, not(f153), c165, f166, not(f167), c169 .
utility( r170 , 0 ).
query( r170 ).
? :: c171 .
0.1 :: f172 .
r173 :- not(f139), c152, not(f153), c165, not(f166), c171, f172 .
utility( r173 , 0 ).
query( r173 ).
? :: c174 .
r175 :- not(f139), c152, not(f153), c165, not(f166), c171, not(f172), c174 .
utility( r175 , 0 ).
query( r175 ).
0.1 :: f176 .
0.1 :: f177 .
r178 :- not(f139), c152, not(f153), c164, f176, f177 .
utility( r178 , 0 ).
query( r178 ).
? :: c179 .
r180 :- not(f139), c152, not(f153), c164, f176, not(f177), c179 .
utility( r180 , 0 ).
query( r180 ).
? :: c181 .
0.1 :: f182 .
r183 :- not(f139), c152, not(f153), c164, not(f176), c181, f182 .
utility( r183 , 0 ).
query( r183 ).
? :: c184 .
r185 :- not(f139), c152, not(f153), c164, not(f176), c181, not(f182), c184 .
utility( r185 , 0 ).
query( r185 ).
0.1 :: f186 .
0.1 :: f187 .
r188 :- not(f139), c151, f186, f187 .
utility( r188 , 1 ).
query( r188 ).
? :: c189 .
r190 :- not(f139), c151, f186, not(f187), c189 .
utility( r190 , 1 ).
query( r190 ).
? :: c191 .
0.1 :: f192 .
r193 :- not(f139), c151, not(f186), c191, f192 .
utility( r193 , 1 ).
query( r193 ).
? :: c194 .
r195 :- not(f139), c151, not(f186), c191, not(f192), c194 .
utility( r195 , 1 ).
query( r195 ).
0.1 :: f196 .
0.1 :: f197 .
0.1 :: f198 .
r199 :- not(f139), c150, f196, f197, f198 .
utility( r199 , 0 ).
query( r199 ).
? :: c201 .
? :: c200 .
r202 :- not(f139), c150, f196, f197, not(f198), c201 .
utility( r202 , 0 ).
query( r202 ).
r203 :- not(f139), c150, f196, f197, not(f198), c200 .
utility( r203 , 0 ).
query( r203 ).
? :: c204 .
0.1 :: f205 .
r206 :- not(f139), c150, f196, not(f197), c204, f205 .
utility( r206 , 0 ).
query( r206 ).
? :: c208 .
? :: c207 .
r209 :- not(f139), c150, f196, not(f197), c204, not(f205), c208 .
utility( r209 , 0 ).
query( r209 ).
r210 :- not(f139), c150, f196, not(f197), c204, not(f205), c207 .
utility( r210 , 0 ).
query( r210 ).
? :: c212 .
? :: c211 .
0.1 :: f213 .
0.1 :: f214 .
r215 :- not(f139), c150, not(f196), c212, f213, f214 .
utility( r215 , 0 ).
query( r215 ).
? :: c217 .
? :: c216 .
r218 :- not(f139), c150, not(f196), c212, f213, not(f214), c217 .
utility( r218 , 0 ).
query( r218 ).
r219 :- not(f139), c150, not(f196), c212, f213, not(f214), c216 .
utility( r219 , 0 ).
query( r219 ).
? :: c220 .
0.1 :: f221 .
r222 :- not(f139), c150, not(f196), c212, not(f213), c220, f221 .
utility( r222 , 0 ).
query( r222 ).
? :: c224 .
? :: c223 .
r225 :- not(f139), c150, not(f196), c212, not(f213), c220, not(f221), c224 .
utility( r225 , 0 ).
query( r225 ).
r226 :- not(f139), c150, not(f196), c212, not(f213), c220, not(f221), c223 .
utility( r226 , 0 ).
query( r226 ).
0.1 :: f227 .
r228 :- not(f139), c150, not(f196), c211, f227 .
utility( r228 , 1 ).
query( r228 ).
? :: c229 .
r230 :- not(f139), c150, not(f196), c211, not(f227), c229 .
utility( r230 , 1 ).
query( r230 ).
