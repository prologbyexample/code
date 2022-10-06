% Example 09 - Recursion With An Accumulator

% recursive definition of reversed
reverse([],Z,Z).
reverse([H|T],Z,A) :- reverse(T,Z,[H|A]).

rev(X,Y) :- reverse(X,Y,[]).

step([], L, L).
step([H1|T1], X, L2) :- step(T1, X, [H1|L2]).