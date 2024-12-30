0.1 :: f159 .
0.1 :: f160 .
0.1 :: f161 .
r162 :- f159, f160, f161 .
utility( r162 , 0 ).
query( r162 ).
? :: c163 .
r164 :- f159, f160, not(f161), c163 .
utility( r164 , 0 ).
query( r164 ).
? :: c165 .
0.1 :: f166 .
r167 :- f159, not(f160), c165, f166 .
utility( r167 , 0 ).
query( r167 ).
? :: c168 .
r169 :- f159, not(f160), c165, not(f166), c168 .
utility( r169 , 0 ).
query( r169 ).
? :: c171 .
? :: c170 .
0.1 :: f172 .
0.1 :: f173 .
r174 :- not(f159), c171, f172, f173 .
utility( r174 , 0 ).
query( r174 ).
? :: c176 .
? :: c175 .
r177 :- not(f159), c171, f172, not(f173), c176 .
utility( r177 , 0 ).
query( r177 ).
r178 :- not(f159), c171, f172, not(f173), c175 .
utility( r178 , 0 ).
query( r178 ).
? :: c180 .
? :: c179 .
0.1 :: f181 .
r182 :- not(f159), c171, not(f172), c180, f181 .
utility( r182 , 0 ).
query( r182 ).
? :: c183 .
r184 :- not(f159), c171, not(f172), c180, not(f181), c183 .
utility( r184 , 0 ).
query( r184 ).
0.1 :: f185 .
r186 :- not(f159), c171, not(f172), c179, f185 .
utility( r186 , 0 ).
query( r186 ).
? :: c188 .
? :: c187 .
r189 :- not(f159), c171, not(f172), c179, not(f185), c188 .
utility( r189 , 0 ).
query( r189 ).
r190 :- not(f159), c171, not(f172), c179, not(f185), c187 .
utility( r190 , 0 ).
query( r190 ).
0.1 :: f191 .
0.1 :: f192 .
r193 :- not(f159), c170, f191, f192 .
utility( r193 , 0 ).
query( r193 ).
? :: c194 .
r195 :- not(f159), c170, f191, not(f192), c194 .
utility( r195 , 0 ).
query( r195 ).
? :: c196 .
0.1 :: f197 .
r198 :- not(f159), c170, not(f191), c196, f197 .
utility( r198 , 0 ).
query( r198 ).
? :: c199 .
r200 :- not(f159), c170, not(f191), c196, not(f197), c199 .
utility( r200 , 0 ).
query( r200 ).
