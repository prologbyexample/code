% Example 04 - Length of List

% base case
size([], 0).

% recursive case
size([_|T], L) :- size(T, M), L is M+1.
