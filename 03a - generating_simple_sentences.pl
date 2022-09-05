% Example 04xx - Generating Sentences

% subjects,  verbs and objects
subject(john). 
subject(jane).
verb(eats). 
verb(washes).
object(apples). 
object(spinach).

% sentence = subject + verb + object
sentence(X,Y,Z) :- subject(X), verb(Y), object(Z). 

% sentence as a list
sentence(S) :- subject(X), verb(Y), object(Z), S=[X, Y, Z].
