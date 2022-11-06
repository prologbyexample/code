% Example 13 - Termination

% length of a list
len([], 0).
len([_H|T], L) :- len(T, M), L is M+1.

% len2 with cut
len2(X,Y) :- len(X,Y), !.