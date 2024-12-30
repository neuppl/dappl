0.1 :: f290 .
0.1 :: f291 .
0.1 :: f292 .
0.1 :: f293 .
r294 :- f290, f291, f292, f293 .
utility( r294 , 0 ).
query( r294 ).
? :: c295 .
r296 :- f290, f291, f292, not(f293), c295 .
utility( r296 , 0 ).
query( r296 ).
? :: c297 .
0.1 :: f298 .
r299 :- f290, f291, not(f292), c297, f298 .
utility( r299 , 0 ).
query( r299 ).
? :: c300 .
r301 :- f290, f291, not(f292), c297, not(f298), c300 .
utility( r301 , 0 ).
query( r301 ).
? :: c302 .
0.1 :: f303 .
0.1 :: f304 .
r305 :- f290, not(f291), c302, f303, f304 .
utility( r305 , 0 ).
query( r305 ).
? :: c306 .
r307 :- f290, not(f291), c302, f303, not(f304), c306 .
utility( r307 , 0 ).
query( r307 ).
? :: c308 .
0.1 :: f309 .
r310 :- f290, not(f291), c302, not(f303), c308, f309 .
utility( r310 , 0 ).
query( r310 ).
? :: c311 .
r312 :- f290, not(f291), c302, not(f303), c308, not(f309), c311 .
utility( r312 , 0 ).
query( r312 ).
? :: c314 .
? :: c313 .
0.1 :: f315 .
0.1 :: f316 .
0.1 :: f317 .
r318 :- not(f290), c314, f315, f316, f317 .
utility( r318 , 0 ).
query( r318 ).
? :: c319 .
r320 :- not(f290), c314, f315, f316, not(f317), c319 .
utility( r320 , 0 ).
query( r320 ).
? :: c321 .
0.1 :: f322 .
r323 :- not(f290), c314, f315, not(f316), c321, f322 .
utility( r323 , 0 ).
query( r323 ).
? :: c324 .
r325 :- not(f290), c314, f315, not(f316), c321, not(f322), c324 .
utility( r325 , 0 ).
query( r325 ).
? :: c326 .
0.1 :: f327 .
0.1 :: f328 .
r329 :- not(f290), c314, not(f315), c326, f327, f328 .
utility( r329 , 0 ).
query( r329 ).
? :: c330 .
r331 :- not(f290), c314, not(f315), c326, f327, not(f328), c330 .
utility( r331 , 0 ).
query( r331 ).
? :: c332 .
0.1 :: f333 .
r334 :- not(f290), c314, not(f315), c326, not(f327), c332, f333 .
utility( r334 , 0 ).
query( r334 ).
? :: c335 .
r336 :- not(f290), c314, not(f315), c326, not(f327), c332, not(f333), c335 .
utility( r336 , 0 ).
query( r336 ).
0.1 :: f337 .
0.1 :: f338 .
r339 :- not(f290), c313, f337, f338 .
utility( r339 , 1 ).
query( r339 ).
? :: c341 .
? :: c340 .
r342 :- not(f290), c313, f337, not(f338), c341 .
utility( r342 , 0 ).
query( r342 ).
r343 :- not(f290), c313, f337, not(f338), c340 .
utility( r343 , 1 ).
query( r343 ).
? :: c345 .
? :: c344 .
0.1 :: f346 .
r347 :- not(f290), c313, not(f337), c345, f346 .
utility( r347 , 0 ).
query( r347 ).
? :: c348 .
r349 :- not(f290), c313, not(f337), c345, not(f346), c348 .
utility( r349 , 0 ).
query( r349 ).
0.1 :: f350 .
r351 :- not(f290), c313, not(f337), c344, f350 .
utility( r351 , 0 ).
query( r351 ).
? :: c353 .
? :: c352 .
r354 :- not(f290), c313, not(f337), c344, not(f350), c353 .
utility( r354 , 0 ).
query( r354 ).
r355 :- not(f290), c313, not(f337), c344, not(f350), c352 .
utility( r355 , 1 ).
query( r355 ).
