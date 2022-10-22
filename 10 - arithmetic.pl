% Example 10 - Arithmetic

% length of a list
len([], 0).
len([_H|T], L) :- len(T, M), L is M+1.