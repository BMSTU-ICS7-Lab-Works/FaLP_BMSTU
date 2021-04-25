predicates

  factorial(integer, integer)
  f(integer, integer, integer, integer)
  
  fib(integer, integer)
  fibin(integer, integer, integer, integer)
  

clauses
 factorial(X, Res):- f(X, Res, 1, 1).
 f(X, Res, X, Res):- !.
 f(X, Res, X1, Res1):- Tmp = X1+1, Res_tmp = Res1 * Tmp, f(X, Res, Tmp, Res_tmp). 
 
 fib(X, R):- fibin(X, R, 1, 0).
 fibin(1, R, R, _):- !.
 fibin(X, R, X1, X2):- R1 = X1 + X2, P = X - 1, fibin(P, R, R1, X1).

goal
  %factorial(4, Res).
  fib(4, R).
