0.1 :: f83 .
0.1 :: f84 .
0.1 :: f85 .
r86 :- f83, f84, f85 .
utility( r86 , 0 ).
query( r86 ).
? :: c88 .
? :: c87 .
r89 :- f83, f84, not(f85), c88 .
utility( r89 , 0 ).
query( r89 ).
r90 :- f83, f84, not(f85), c87 .
utility( r90 , 0 ).
query( r90 ).
? :: c93 .
? :: c92 .
? :: c91 .
0.1 :: f94 .
r95 :- f83, not(f84), c93, f94 .
utility( r95 , 0 ).
query( r95 ).
? :: c97 .
? :: c96 .
r98 :- f83, not(f84), c93, not(f94), c97 .
utility( r98 , 0 ).
query( r98 ).
r99 :- f83, not(f84), c93, not(f94), c96 .
utility( r99 , 0 ).
query( r99 ).
0.1 :: f100 .
r101 :- f83, not(f84), c92, f100 .
utility( r101 , 0 ).
query( r101 ).
? :: c103 .
? :: c102 .
r104 :- f83, not(f84), c92, not(f100), c103 .
utility( r104 , 0 ).
query( r104 ).
r105 :- f83, not(f84), c92, not(f100), c102 .
utility( r105 , 0 ).
query( r105 ).
0.1 :: f106 .
r107 :- f83, not(f84), c91, f106 .
utility( r107 , 0 ).
query( r107 ).
? :: c109 .
? :: c108 .
r110 :- f83, not(f84), c91, not(f106), c109 .
utility( r110 , 0 ).
query( r110 ).
r111 :- f83, not(f84), c91, not(f106), c108 .
utility( r111 , 0 ).
query( r111 ).
? :: c113 .
? :: c112 .
0.1 :: f114 .
0.1 :: f115 .
r116 :- not(f83), c113, f114, f115 .
utility( r116 , 0 ).
query( r116 ).
? :: c117 .
r118 :- not(f83), c113, f114, not(f115), c117 .
utility( r118 , 0 ).
query( r118 ).
? :: c120 .
? :: c119 .
0.1 :: f121 .
r122 :- not(f83), c113, not(f114), c120, f121 .
utility( r122 , 0 ).
query( r122 ).
? :: c123 .
r124 :- not(f83), c113, not(f114), c120, not(f121), c123 .
utility( r124 , 0 ).
query( r124 ).
0.1 :: f125 .
r126 :- not(f83), c113, not(f114), c119, f125 .
utility( r126 , 0 ).
query( r126 ).
? :: c128 .
? :: c127 .
r129 :- not(f83), c113, not(f114), c119, not(f125), c128 .
utility( r129 , 0 ).
query( r129 ).
r130 :- not(f83), c113, not(f114), c119, not(f125), c127 .
utility( r130 , 0 ).
query( r130 ).
0.1 :: f131 .
0.1 :: f132 .
r133 :- not(f83), c112, f131, f132 .
utility( r133 , 0 ).
query( r133 ).
? :: c135 .
? :: c134 .
r136 :- not(f83), c112, f131, not(f132), c135 .
utility( r136 , 0 ).
query( r136 ).
r137 :- not(f83), c112, f131, not(f132), c134 .
utility( r137 , 0 ).
query( r137 ).
? :: c140 .
? :: c139 .
? :: c138 .
0.1 :: f141 .
r142 :- not(f83), c112, not(f131), c140, f141 .
utility( r142 , 0 ).
query( r142 ).
? :: c144 .
? :: c143 .
r145 :- not(f83), c112, not(f131), c140, not(f141), c144 .
utility( r145 , 0 ).
query( r145 ).
r146 :- not(f83), c112, not(f131), c140, not(f141), c143 .
utility( r146 , 0 ).
query( r146 ).
0.1 :: f147 .
r148 :- not(f83), c112, not(f131), c139, f147 .
utility( r148 , 0 ).
query( r148 ).
? :: c150 .
? :: c149 .
r151 :- not(f83), c112, not(f131), c139, not(f147), c150 .
utility( r151 , 0 ).
query( r151 ).
r152 :- not(f83), c112, not(f131), c139, not(f147), c149 .
utility( r152 , 0 ).
query( r152 ).
0.1 :: f153 .
r154 :- not(f83), c112, not(f131), c138, f153 .
utility( r154 , 0 ).
query( r154 ).
? :: c156 .
? :: c155 .
r157 :- not(f83), c112, not(f131), c138, not(f153), c156 .
utility( r157 , 0 ).
query( r157 ).
r158 :- not(f83), c112, not(f131), c138, not(f153), c155 .
utility( r158 , 0 ).
query( r158 ).
