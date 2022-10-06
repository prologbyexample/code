% Example 08 - Recursion With Lists

% are two lists the same?
same([],[]).
same([H1|T1],[H2|T2]) :- H1=H2, same(T1,T2).