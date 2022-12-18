% Example 16 - Minimal Meta-Interpreter

% facts
mammal(dog).
mammal(cat).

% relation
animal(X) :- mammal(X).


% simplest meta-interpreter
prove(true) :- !.
%prove((A,B)):- !, prove(A), prove(B).
prove(A) :- clause(A,B), prove(B), write(A), write(" <- "), writeln(B).
