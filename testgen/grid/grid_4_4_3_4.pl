0.1 :: f125 .
0.1 :: f126 .
r127 :- f125, f126 .
utility( r127 , 0 ).
query( r127 ).
? :: c128 .
r129 :- f125, not(f126), c128 .
utility( r129 , 0 ).
query( r129 ).
? :: c131 .
? :: c130 .
0.1 :: f132 .
r133 :- not(f125), c131, f132 .
utility( r133 , 0 ).
query( r133 ).
? :: c134 .
r135 :- not(f125), c131, not(f132), c134 .
utility( r135 , 0 ).
query( r135 ).
0.1 :: f136 .
0.1 :: f137 .
r138 :- not(f125), c130, f136, f137 .
utility( r138 , 0 ).
query( r138 ).
? :: c139 .
r140 :- not(f125), c130, f136, not(f137), c139 .
utility( r140 , 0 ).
query( r140 ).
? :: c142 .
? :: c141 .
0.1 :: f143 .
r144 :- not(f125), c130, not(f136), c142, f143 .
utility( r144 , 0 ).
query( r144 ).
? :: c145 .
r146 :- not(f125), c130, not(f136), c142, not(f143), c145 .
utility( r146 , 0 ).
query( r146 ).
0.1 :: f147 .
r148 :- not(f125), c130, not(f136), c141, f147 .
utility( r148 , 1 ).
query( r148 ).
? :: c150 .
? :: c149 .
r151 :- not(f125), c130, not(f136), c141, not(f147), c150 .
utility( r151 , 0 ).
query( r151 ).
r152 :- not(f125), c130, not(f136), c141, not(f147), c149 .
utility( r152 , 1 ).
query( r152 ).
