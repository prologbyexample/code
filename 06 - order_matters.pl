% Example 06 - Recursion First Example

trace, red(X), X=cherry.

 Call:red(_4118)
 Exit:red(apple)
 Call:apple=cherry
 Fail:apple=cherry
 Redo:red(_476)
 Exit:red(cherry)
 Call:cherry=cherry
 Exit:cherry=cherry
X = cherry
 Redo:red(_476)
 Exit:red(grape)
 Call:grape=cherry
 Fail:grape=cherry
false



trace, X=cherry, red(X).

Call:_3910=cherry
 Exit:cherry=cherry
 Call:red(cherry)
 Exit:red(cherry)
X = cherry

