= Duality
Consider the following primal optimization problem:
$
  min_x quad & f_0 (x) \ 
  s.t. quad & f_i (x) <= 0, quad i = 1, dots, m \ 
       quad & h_j (x) = 0, quad j = 1, dots, p \
$
and its corresponding dual problem:
$
  max_(lambda, mu) quad & d (lambda, mu) \ 
  s.t. quad & lambda >= 0 \
$
If we denote $p^*$ and $d^*$ as the optimal values of the primal and dual problems respectively, then the following properties hold:
1. $d (lambda, mu)$ is a concave function, even if the primal problem is not convex.
2. $d^* <= p^*$
