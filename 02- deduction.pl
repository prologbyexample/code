% Example 02 - Deduction

% facts
parent(john, jane).
parent(john, james).
parent(sally, jane).
parent(martha, sally).

% relations
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).

sibling(X,Y) :- parent(Z,X), parent(Z,Y), not(X=Y).
