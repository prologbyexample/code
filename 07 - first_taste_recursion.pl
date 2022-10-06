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