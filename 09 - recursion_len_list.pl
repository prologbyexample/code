% Example 08 - Recursion Third Example With Accumulator

% length of a list
len([], 0).
len([_|T], L) :- len(T, M), L is M+1.