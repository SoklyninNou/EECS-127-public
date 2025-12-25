== Constraint Elimination
Consider the following optimization problem:
$
  min_x quad & f_0 (x) \ 
  s.t. quad & f_i (x) <= 0, quad i = 1, dots, m \ 
       quad & h_j (x) = 0, quad j = 1, dots, p \
$
Let $x^*$ be the optimal solution, then:
$
  &f_i (x^*) = 0 arrow "active/binding constriants"\
  &f_i (x^*) < 0 arrow "inactive/non- binding constriants"
$
If we remove the inactive constraints from the problem, the optimal solution $x^*$ will remain unchanged. This process is called *constraint elimination*:
$
  min_x quad & f_0 (x) \ 
  s.t. quad & f_i (x) <= 0, quad i in A(x^*) \ 
       quad & h_j (x) = 0, quad j = 1, dots, m \
$
If you do this, then $x^*$ is also the optimal solution of the reduced problem.

If we assume Slater's condition holds for the problem, then we can use the KKT conditions to find the optimal solution $x^*$. Note that complementary slackness means:
$
lambda_i^* f_i (x^*) = 0, quad forall i = 1, dots, m \
"if" cases(
  f_i (x^*) = 0 arrow lambda_i^* = 0 arrow f_i "is not important",
  f_i (x^*) < 0 arrow lambda_i^* = 0 arrow f_i "is not important"
)
$
== Sensitivity Analysis
Consider the following perturbed optimization problem:
$
  min_x quad & f_0 (x) \ 
  s.t. quad & f_i (x) <= u_i, quad i = 1, dots, k \ 
       quad & h_j (x) = w_j, quad j = 1, dots, m \
$
where $u in RR^k$ and $w in RR^m$ are perturbation parameters.

*Theorem:*\
1. $p^* (u, w)$ is convex in $(u, w)$
2. If Slater's condition holds, then $p^* (u, w)$ is differentiable at $(0, 0)$ and the optimal Lagrange multipliers $lambda^*$ and $mu^*$ corresponding to the original problem (i.e., when $u = 0$ and $w = 0$) satisfy:
$
  lambda_i^* = - (partial p^* (0, 0)) / (partial u_i), quad i = 1, dots, k \ 
   mu_j^* = - (partial p^* (0, 0)) / (partial w_j), quad j = 1, dots, m \
$
This means that the optimal Lagrange multipliers can be interpreted as the sensitivity of the optimal value with respect to perturbations in the constraints.

The Taylor expansion of $p^* (u, w)$ around $(0, 0)$ is:
$
  p^* (u, w) approx p^* (0, 0) - sum_(i=1)^k lambda_i^* u_i - sum_(j=1)^m mu_j^* w_j \
$
This shows that if $lambda_i^*, mu_i^* = 0$ for some $i$, then small perturbations in the corresponding constraints will not affect the optimal value to the first order. On the other hand, if $lambda_i^*$ or $mu_j^*$ is large in magnitude, then small perturbations in the corresponding constraints can lead to significant changes in the optimal value.

So far, our variable $x$ is a vector in $RR^n$. If we has a matrix as a variable, we can simply vectorize it:
$
  X in RR^(m times n) \
  arrow tilde(f)_i (x) = f_i (X); i = 0, dots, k\
  arrow tilde(h)_j (x) = h_j (X); j = 0, dots, m\
$

*Exmaple:*\
Consider the following optimization problem:
$
  min_(X in RR^(2 times 2)) quad & norm(mat(1, 2; 3, 4)X - mat(5, 6;7,8))_2 \ 
  s.t. quad & X_(1,1) + X_(1,2) <= 5\
       quad & X_(2,1) + 5 X_(2,2) = 4\
$
we can rewrite the optimization problem as:
$
  min_(x in RR^4) quad & norm(mat(1, 2; 3, 4)X - mat(5, 6;7,8))_2\ 
  s.t. quad & overbrace(x_1 + x_3 - 5, tilde(f)_i (x)) <= 0\
       quad & underbrace(x_2 + 5 x_4 - 4, tilde(h)_i (x)) = 0\
$
recall that in PCA, we had the optimization problem:
$
  max_(U in RR^(n times k)) quad & norm(X - Y)_F \ 
  s.t. quad & r a n k(X) <= r\
  quad & X = C D^top
$

== Matrix Completion Problem
Lets say we have a matrix $M in RR^(m times n)$ with some missing entries. We define the set of observed entries as:
$
  Omega subset.eq {(i, j) | i = 1, dots, m; j = 1, dots, n} \
$
The matrix completion problem aims to fill in the missing entries of $M$ based on the observed entries in $Omega$. One common approach is to assume that the underlying complete matrix has low rank. The optimization problem can be formulated as:
$
  min_(X in RR^(m times n)) quad & r a n k(X) \ 
  s.t. quad & X_(i, j) = X^*_(i, j), quad forall (i, j) in Omega \
$
Where the rank is the cardinality of the set of non-zero singular values of $X$.
$
  r a n k(X) = norm(mat(sigma_1 (x); dots.v; sigma_p (x)))_0 \
  = sum_(i=1)^p cases(
    1 quad "if" sigma_i (x) != 0,
    0 quad "if" sigma_i (x) = 0
  ) \
$
However, this problem is non-convex and NP-hard. A common convex relaxation is to minimize the nuclear norm of $X$ instead of its rank:
$
  min_(X in RR^(m times n)) quad & norm(X)_* \ 
  s.t. quad & X_(i, j) = X^*_(i, j), quad forall (i, j) in Omega \
$
where the nuclear norm $norm(X)_*$ is defined as the sum of the singular values of $X$.

