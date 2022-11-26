% Example 14 - The Cut For Efficiency

% max(X, Y, Max) is true if Max is the larger of X and Y
max(X, Y, Max) :- X > Y, Max=X.
max(X, Y, Max) :- Y >= X, Max=Y.
