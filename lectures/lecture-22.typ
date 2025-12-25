= Karush-Kuhn-Tucker Conditions Conceptual Overview
The general form of a convex optimization problem is given by:
$
  min_x & f_0 (x) \
  s.t. & f_i (x) <= 0, quad forall i = 1, dots, k \
       & h_j (x) = 0, quad forall j = 1, dots, m \
$
where $f_0$ is the objective function, $f_i$ are the inequality constraint functions, and $h_j$ are the equality constraint functions. What we can do is to get rid of the hard constraints by introducing Lagrange multipliers. The Lagrangian function is defined as:
$
  L(x, lambda, mu) = f_0 (x) + sum_(i=1)^k lambda_i f_i (x) + sum_(j=1)^m mu_j h_j (x) \
$
where $lambda = mat(lambda_1, dots, lambda_k)^top$ and $mu = mat(mu_1, dots, mu_m)^top$ are the vectors of Lagrange multipliers associated with the inequality and equality constraints, respectively. This transforms the constrained optimization problem into an unconstrained one by incorporating the constraints into the objective function through the Lagrange multipliers.

Note that the function is affine in $lambda$ and $mu$ for fixed $x$.

The dual function is defined as the infimum of the Lagrangian over $x$:
$
  g(lambda, mu) = inf_x L(x, lambda, mu) \
$

== Duality in Convex Optimization
The dual function provides a lower bound on the optimal value of the primal problem. Assume that $p^*$ is the optimal value of the primal problem and $d^*$ is the optimal value of the dual problem. We define the duality gap as:
$
  "duality gap" = p^* - d^* \
$
Weak duality states that for any feasible solution $x$ of the primal problem and any feasible solution $(lambda, mu)$ of the dual problem, the following inequality holds:
$
  f_0 (x) >= g(lambda, mu) \
$
This implies that the duality gap is always non-negative:
$
  p^* >= d^* \
$
Strong duality, on the other hand, the duality gap is zero:
$
  p^* = d^* \
$
This means that the optimal values of the primal and dual problems are equal.

*Theorems:*
- If $x^*$ is an optimal solution to the primal problem and $(lambda^*, mu^*)$ is an optimal solution to the dual problem, and if strong duality holds, then KKT conditions are satisfied.
- Assume that the primal problem is a convex optimization problem and that Slater's condition holds. If $(lambda^*, mu^*)$ and $x^*$ satisfy the KKT conditions, then $x^*$ is an optimal solution to the primal problem and $(lambda^*, mu^*)$ is an optimal solution to the dual problem.
- The Dual Problem of a Linear Program is also a Linear Program.

== Slater's Condition
Slater's condition is a sufficient condition for strong duality to hold in convex optimization problems. It states that if there exists a point $y$ in the relative interior of the domain of the inequality constraint functions such that:
$
  cases(
    f_i (y) <= 0 quad "if" f_i "is affine",
    f_i (y) < 0 quad "if" f_i "is non-affine"
  )
  quad forall i = 1, dots, k \
  h_j (y) = 0, quad forall j = 1, dots, m \
$
then strong duality holds for the optimization problem.

== Feasibility of Primal and Dual Problems
When solving a primal optimiztion problem, there are 3 possible outcomes:
1. The problem is unbounded below: $p^* = -infinity$.
2. The problem is infeasible: there is no $x$ satisfying the constraints, $p^* = +infinity$.
3. The problem has an optimal solution: $p^*$ is finite and attained at some $x^*$.

When solving a dual optimization problem, there are also 3 possible outcomes:
1. The problem is unbounded above: $d^* = +infinity$.
2. The problem is infeasible: there is no $(lambda, mu)$ satisfying the constraints, $d^* = -infinity$.
3. The problem has an optimal solution: $d^*$ is finite and attained at some $(lambda^*, mu^*)$.

In the case of weak duality, if the primal problem is unbounded below, then the dual problem is infeasible and vice versa. A practical use is proving whether a set exists.

Consider the following cases:
$
  min quad &0\
  s.t. quad &f(x) <= 0\
  quad &h(x) = 0
$
By weak duality, the primal is infeasible if the dual problem is unbounded above. This means:
$
  g(lambda, mu) = inf_x L(x, lambda, mu) = +infinity \
$
*Example:*\
Prove that the following set is empty:
$
   cal(S) = { x in RR^3 bar x_1^2 + x_2^2 + x_3^2 = 1, quad x_1 + 2x_2 + 3x_3 >= 5} \
$

We can formulate this as a primal optimization problem:
$
  min_x quad &0 \
  s.t. quad & x_1^2 + x_2^2 + x_3^2 - 1 = 0 \
       quad & -x_1 - 2x_2 - 3x_3 + 5 <= 0 \
$
The corresponding dual problem is:
$
  max_(lambda >= 0, mu) & g(lambda, mu) \
$
where:
$
  g(lambda, mu) = inf_x L(x, lambda, mu) \
  L(x, lambda, mu) = 0 + mu (x_1^2 + x_2^2 + x_3^2 - 1) + lambda (-x_1 - 2x_2 - 3x_3 + 5) \
$
To find the infimum, we take the gradient of $L$ with respect to $x$ and set it to zero:
$
  nabla_x L = mat(
    2 mu x_1 - lambda \
    2 mu x_2 - 2 lambda \
    2 mu x_3 - 3 lambda
  ) = 0 \
$
Solving for $x$, we get:
$
  x_1 = frac(lambda,2 mu), quad x_2 = frac(lambda,mu), quad x_3 = frac(3 lambda, 2 mu) \
$
Substituting these values back into the Lagrangian, we have:
$
  L(x, lambda, mu)
  &= mu ( (frac(lambda,2 mu) )^2 + (frac(lambda,mu) )^2 + (frac(3 lambda, 2 mu) )^2 - 1 ) + lambda (-frac(lambda,2 mu) - 2 frac(lambda,mu) - 3 frac(3 lambda, 2 mu) + 5) \
  &= mu (frac(lambda^2, 4mu^2) + frac(lambda^2, mu^2) + frac(9lambda^2, 4mu^2) - 1) + lambda (-frac(8lambda, 2mu) + 5)\
  &= mu (frac(14 lambda^2,4 mu^2) - 1 ) + lambda (-frac(8 lambda,2 mu) + 5)\
  &= frac(14 lambda^2,4 mu) - mu - frac(8 lambda^2,2 mu) + 5 lambda\
  &= -frac(2 lambda^2,4 mu) - mu + 5 lambda
$







