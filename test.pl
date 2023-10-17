0.9::dysp :- bronc, either.
0.8::dysp :- bronc, \+either.
0.7::dysp :- \+bronc, either.
0.1::dysp :- \+bronc, \+either.
0.5 :: bronc.
0.5 :: either.
query(dysp).