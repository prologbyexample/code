% Example 09 - Recursion With An Accumulator

% recursive definition
step([], L2, L2):- !.
step([H1|T1], X, L2) :- step(T1, X, [H1|L2]).

% convenience property around step/3
reverse(X, Y) :- step(X, Y, []).