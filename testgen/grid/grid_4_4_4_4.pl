0.1 :: f256 .
0.1 :: f257 .
0.1 :: f258 .
r259 :- f256, f257, f258 .
utility( r259 , 1 ).
query( r259 ).
? :: c261 .
? :: c260 .
0.1 :: f262 .
r263 :- f256, f257, not(f258), c261, f262 .
utility( r263 , 0 ).
query( r263 ).
? :: c265 .
? :: c264 .
r266 :- f256, f257, not(f258), c261, not(f262), c265 .
utility( r266 , 0 ).
query( r266 ).
r267 :- f256, f257, not(f258), c261, not(f262), c264 .
utility( r267 , 0 ).
query( r267 ).
r268 :- f256, f257, not(f258), c260 .
utility( r268 , 1 ).
query( r268 ).
? :: c269 .
0.1 :: f270 .
0.1 :: f271 .
r272 :- f256, not(f257), c269, f270, f271 .
utility( r272 , 0 ).
query( r272 ).
? :: c274 .
? :: c273 .
r275 :- f256, not(f257), c269, f270, not(f271), c274 .
utility( r275 , 0 ).
query( r275 ).
r276 :- f256, not(f257), c269, f270, not(f271), c273 .
utility( r276 , 0 ).
query( r276 ).
? :: c278 .
? :: c277 .
0.1 :: f279 .
r280 :- f256, not(f257), c269, not(f270), c278, f279 .
utility( r280 , 0 ).
query( r280 ).
? :: c282 .
? :: c281 .
r283 :- f256, not(f257), c269, not(f270), c278, not(f279), c282 .
utility( r283 , 0 ).
query( r283 ).
r284 :- f256, not(f257), c269, not(f270), c278, not(f279), c281 .
utility( r284 , 0 ).
query( r284 ).
r285 :- f256, not(f257), c269, not(f270), c277 .
utility( r285 , 1 ).
query( r285 ).
? :: c286 .
0.1 :: f287 .
0.1 :: f288 .
r289 :- not(f256), c286, f287, f288 .
utility( r289 , 1 ).
query( r289 ).
? :: c291 .
? :: c290 .
0.1 :: f292 .
r293 :- not(f256), c286, f287, not(f288), c291, f292 .
utility( r293 , 0 ).
query( r293 ).
? :: c295 .
? :: c294 .
r296 :- not(f256), c286, f287, not(f288), c291, not(f292), c295 .
utility( r296 , 0 ).
query( r296 ).
r297 :- not(f256), c286, f287, not(f288), c291, not(f292), c294 .
utility( r297 , 0 ).
query( r297 ).
r298 :- not(f256), c286, f287, not(f288), c290 .
utility( r298 , 1 ).
query( r298 ).
? :: c299 .
0.1 :: f300 .
r301 :- not(f256), c286, not(f287), c299, f300 .
utility( r301 , 1 ).
query( r301 ).
? :: c303 .
? :: c302 .
0.1 :: f304 .
r305 :- not(f256), c286, not(f287), c299, not(f300), c303, f304 .
utility( r305 , 0 ).
query( r305 ).
? :: c307 .
? :: c306 .
r308 :- not(f256), c286, not(f287), c299, not(f300), c303, not(f304), c307 .
utility( r308 , 0 ).
query( r308 ).
r309 :- not(f256), c286, not(f287), c299, not(f300), c303, not(f304), c306 .
utility( r309 , 0 ).
query( r309 ).
r310 :- not(f256), c286, not(f287), c299, not(f300), c302 .
utility( r310 , 1 ).
query( r310 ).
