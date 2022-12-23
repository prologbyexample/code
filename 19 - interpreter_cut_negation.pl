fruit(apple).
fruit(orange) :- !.
fruit(banana).

% meta-interpreter that covers deduction
prove(true) :- !.
prove(!) :- !, ( true ; throw(cut) ).
prove((A,B)):- !, prove(A), prove(B).
prove(H) :-  
    %prove(B),
    catch((clause(H,B), prove(B)), cut, fail),
    write(H), write(" <- "), writeln(B).


% Example 07 - Introducing Recursion

% parent facts
parent(john, jane).
parent(john, james).
parent(sally, jane).
parent(martha, sally).
parent(deirdre, martha).

% grandparent
grandparent(X, Y) :- parent(X, A), parent(A,Y).

% ancestor recursive definition
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,A), ancestor(A,Y).
