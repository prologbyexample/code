% Example 11 - Bidirectional Termination

% recursive definition
step([], L2, L2).
step([H1|T1], X, L2) :- step(T1, X, [H1|L2]).

% convenience property around step/3
reversed(X, Y) :- step(X, Y, []).

% updated to terminate when first list is a variable
reversed2(X, Y) :- same_length(X,Y), step(X, Y, []).

% optional definition of samlelength/2 if same_length/2 isn't provided
samelength([], []).
samelength([_H1|T1], [_H2|T2]) :- samelength(T1, T2).
