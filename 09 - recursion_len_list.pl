% Example 09 - Recursion With An Accumulator

% recursive definition of reversed
reverse([],Z,Z).
reverse([H|T],Z,A) :- reverse(T,Z,[H|A]).

rev(X,Y) :- reverse(X,Y,[]).