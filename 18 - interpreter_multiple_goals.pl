% Example 18 - Meta-Interpreter For Multiple Goals

% are two lists the same?
same([],[]).
same([H1|T1],[H2|T2]) :- H1=H2, same(T1,T2).

% example of a multi-goal rule
test(X) :- one(X), two(X), three(X).

% meta-interpreter for rules with multiple goals
prove(true) :- !.
prove(A=B) :- !, A=B.
prove((A,B)):- !, prove(A), prove(B).
prove(H) :- clause(H,B), prove(B),
    write(H), write(" <- "), writeln(B).
