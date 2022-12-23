% Example 18 - Meta-Interpreter For Multiple Goals

% parent facts
parent(john, jane).
parent(john, james).
parent(sally, jane).
parent(martha, sally).
parent(deirdre, martha).

% grandparent
grandparent(X, Y) :- parent(X, A), parent(A,Y).

% ancestor recursive definition
ancestor(X,Y) :- parent(X,Y), !.
ancestor(X,Y) :- parent(X,A), ancestor(A,Y).

% meta-interpreter that covers deduction
prove(true) :- !.
prove((A,B)):- !, prove(A), prove(B).
prove(H) :- clause(H,B), prove(B),
   write(H), write(" <- "), writeln(B).