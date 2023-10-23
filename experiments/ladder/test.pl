1.0 :: b0.
0.0 :: b1.
0.5 :: f2.
0.001 :: int.
0.001 :: int2.
ite1 :- b0, \+(int), f2.
ite1 :- b1, \+(b0), f2.
ite2 :- b0, \+(int2), \+(f2).
ite2 :- b1, \+(b0), \+(f2).
a :- ite1, \+(ite2).
query(a).