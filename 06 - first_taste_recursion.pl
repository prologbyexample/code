% Example 06 - Recursion First Example

% parent facts
parent(john, jane).
parent(john, james).
parent(sally, jane).
parent(martha, sally).
parent(deirdre, martha).

% ancestor definition
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).