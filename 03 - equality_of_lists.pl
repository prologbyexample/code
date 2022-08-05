% Example 03 - Equality of Lists using Recursion

% base case
same([],[]).
% recursive case
same([H1|T1], [H2|T2]) :- H1 == H2, same(T1, T2).

