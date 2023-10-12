%% ProbLog program: PGM 1
%% Created on 2019-11-15 10:04:06.682088

?::asia.
?::smoke.
0.1::lung :- smoke.
0.01::lung :- \+smoke.
0.05::tub :- asia.
0.01::tub :- \+asia.
0.6::bronc :- smoke.
0.3::bronc :- \+smoke.
either :- lung, tub.
either :- lung, \+tub.
either :- \+lung, tub.
0.0::either :- \+lung, \+tub.
0.98::xray :- either.
0.05::xray :- \+either.
0.9::dysp :- bronc, either.
0.8::dysp :- bronc, \+either.
0.7::dysp :- \+bronc, either.
0.1::dysp :- \+bronc, \+either.
utility(util_node(0),-42).
utility(\+(util_node(0)),25).
util_node(0) :- either, \+asia, \+tub, \+dysp, \+bronc, lung, xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(0) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, \+smoke.
util_node(0) :- \+either, \+asia, \+tub, \+dysp, bronc, \+lung, \+xray, \+smoke.
utility(util_node(1),-3).
utility(\+(util_node(1)),28).
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(1) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, xray, smoke.
utility(util_node(2),-11).
utility(\+(util_node(2)),-14).
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(2) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(3),39).
utility(\+(util_node(3)),-47).
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, smoke.
util_node(3) :- \+either, \+asia, \+tub, dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(3) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
utility(util_node(4),-27).
utility(\+(util_node(4)),-47).
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, dysp, bronc, \+lung, \+xray, smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.
util_node(4) :- \+either, \+asia, \+tub, \+dysp, \+bronc, \+lung, \+xray, \+smoke.

