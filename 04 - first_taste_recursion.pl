% Example 04 - Recursion First Example

% facts
parent(john, jane).
parent(john, james).
parent(sally, jane).
parent(martha, sally).
parent(deirdre, martha).

% relations
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).