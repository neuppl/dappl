0.1 :: f179 .
0.1 :: f180 .
0.1 :: f181 .
0.1 :: f182 .
r183 :- f179, f180, f181, f182 .
utility( r183 , 1 ).
query( r183 ).
? :: c184 .
r185 :- f179, f180, f181, not(f182), c184 .
utility( r185 , 1 ).
query( r185 ).
? :: c187 .
? :: c186 .
0.1 :: f188 .
r189 :- f179, f180, not(f181), c187, f188 .
utility( r189 , 1 ).
query( r189 ).
? :: c190 .
r191 :- f179, f180, not(f181), c187, not(f188), c190 .
utility( r191 , 1 ).
query( r191 ).
0.1 :: f192 .
r193 :- f179, f180, not(f181), c186, f192 .
utility( r193 , 0 ).
query( r193 ).
? :: c196 .
? :: c195 .
? :: c194 .
r197 :- f179, f180, not(f181), c186, not(f192), c196 .
utility( r197 , 0 ).
query( r197 ).
r198 :- f179, f180, not(f181), c186, not(f192), c195 .
utility( r198 , 1 ).
query( r198 ).
r199 :- f179, f180, not(f181), c186, not(f192), c194 .
utility( r199 , 0 ).
query( r199 ).
? :: c200 .
0.1 :: f201 .
0.1 :: f202 .
r203 :- f179, not(f180), c200, f201, f202 .
utility( r203 , 1 ).
query( r203 ).
? :: c204 .
r205 :- f179, not(f180), c200, f201, not(f202), c204 .
utility( r205 , 1 ).
query( r205 ).
? :: c207 .
? :: c206 .
0.1 :: f208 .
r209 :- f179, not(f180), c200, not(f201), c207, f208 .
utility( r209 , 1 ).
query( r209 ).
? :: c210 .
r211 :- f179, not(f180), c200, not(f201), c207, not(f208), c210 .
utility( r211 , 1 ).
query( r211 ).
0.1 :: f212 .
r213 :- f179, not(f180), c200, not(f201), c206, f212 .
utility( r213 , 0 ).
query( r213 ).
? :: c216 .
? :: c215 .
? :: c214 .
r217 :- f179, not(f180), c200, not(f201), c206, not(f212), c216 .
utility( r217 , 0 ).
query( r217 ).
r218 :- f179, not(f180), c200, not(f201), c206, not(f212), c215 .
utility( r218 , 1 ).
query( r218 ).
r219 :- f179, not(f180), c200, not(f201), c206, not(f212), c214 .
utility( r219 , 0 ).
query( r219 ).
? :: c220 .
0.1 :: f221 .
0.1 :: f222 .
0.1 :: f223 .
r224 :- not(f179), c220, f221, f222, f223 .
utility( r224 , 1 ).
query( r224 ).
? :: c227 .
? :: c226 .
? :: c225 .
r228 :- not(f179), c220, f221, f222, not(f223), c227 .
utility( r228 , 0 ).
query( r228 ).
r229 :- not(f179), c220, f221, f222, not(f223), c226 .
utility( r229 , 1 ).
query( r229 ).
r230 :- not(f179), c220, f221, f222, not(f223), c225 .
utility( r230 , 0 ).
query( r230 ).
? :: c232 .
? :: c231 .
0.1 :: f233 .
r234 :- not(f179), c220, f221, not(f222), c232, f233 .
utility( r234 , 1 ).
query( r234 ).
? :: c235 .
r236 :- not(f179), c220, f221, not(f222), c232, not(f233), c235 .
utility( r236 , 1 ).
query( r236 ).
0.1 :: f237 .
r238 :- not(f179), c220, f221, not(f222), c231, f237 .
utility( r238 , 1 ).
query( r238 ).
? :: c241 .
? :: c240 .
? :: c239 .
r242 :- not(f179), c220, f221, not(f222), c231, not(f237), c241 .
utility( r242 , 0 ).
query( r242 ).
r243 :- not(f179), c220, f221, not(f222), c231, not(f237), c240 .
utility( r243 , 1 ).
query( r243 ).
r244 :- not(f179), c220, f221, not(f222), c231, not(f237), c239 .
utility( r244 , 0 ).
query( r244 ).
? :: c245 .
0.1 :: f246 .
0.1 :: f247 .
r248 :- not(f179), c220, not(f221), c245, f246, f247 .
utility( r248 , 1 ).
query( r248 ).
? :: c249 .
r250 :- not(f179), c220, not(f221), c245, f246, not(f247), c249 .
utility( r250 , 1 ).
query( r250 ).
? :: c252 .
? :: c251 .
0.1 :: f253 .
r254 :- not(f179), c220, not(f221), c245, not(f246), c252, f253 .
utility( r254 , 1 ).
query( r254 ).
? :: c255 .
r256 :- not(f179), c220, not(f221), c245, not(f246), c252, not(f253), c255 .
utility( r256 , 1 ).
query( r256 ).
0.1 :: f257 .
r258 :- not(f179), c220, not(f221), c245, not(f246), c251, f257 .
utility( r258 , 0 ).
query( r258 ).
? :: c261 .
? :: c260 .
? :: c259 .
r262 :- not(f179), c220, not(f221), c245, not(f246), c251, not(f257), c261 .
utility( r262 , 0 ).
query( r262 ).
r263 :- not(f179), c220, not(f221), c245, not(f246), c251, not(f257), c260 .
utility( r263 , 1 ).
query( r263 ).
r264 :- not(f179), c220, not(f221), c245, not(f246), c251, not(f257), c259 .
utility( r264 , 0 ).
query( r264 ).
