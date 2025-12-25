== Applications of LASSO: Cyber Attack Detection for Power Networks
We can model a Power Network as a graph where nodes represent buses (points of power generation, consumption, or distribution) and edges represent transmission lines. We can think of flow on each edge from node $i$ to node $j$ as traffic in the network, which we denote as $P_(i j)$. This means that $P_(i j) = - P_(j i)$. To simplify the model, we assume conservation of flow on each node, in other words:
$
  sum_(i,j in "edges") P_(i j) = P_i
$
where $P_i$ is the net flow at node $i$.

Going back to notations, generators are nodes that produce power, so $P_i > 0$ for generators. Consumers are nodes that consume power, so $P_i < 0$ for consumers. Transmission nodes are nodes that neither produce nor consume power, so $P_i = 0$ for transmission nodes.

We know that the votage at a node $i$ is defined as:
$
  V_i = "mag" times cos(omega t + theta_i) \
$
where "mag" is the magnitude, $omega$ is the frequency, $t$ is time, and $theta_i$ is the unknown phase $in [-pi, pi]$.\

Let $theta_1^*, dots, theta_n^*$ be the unknown phases of nodes $1, dots, n$ at time $t = 0$. We can define the reactance $z_(i j)$ as:
$
  z_(i j) = (theta_i^* - theta_j^*) / P_(i j) \
$
We can take a node $k$ as the reference node, and set $theta_k^* = 0$. Then, $hat(N)$ is the set of nodes with senosrs and $hat(E)$ is the set of edges with sensors, with $hat(P_i)$ is the flow of nodes with sensors. We can express $hat(P_i)$ as:
$
  hat(P_i) &= sum_(j in hat(N)) P_(i j) + w_i^* + v_i^*\
  &= sum_(j in hat(N)) (theta_i^* - theta_j^*) / z_(i j) + w_i^* + v_i^* \
$
where $w_i^*$ is the sensor noise and $v_i^*$ is the attack vector.

Using LASSO, we can estimate the attack vector $v^*$ by solving the following optimization problem:
$
  min_(theta, omega,v) quad &norm(omega)_2^2 + lambda norm(v)_1 \
  s.t. quad &hat(P_i) = sum_(j in hat(N)) (theta_i - theta_j) / z_(i j) + omega_i + v_i, forall i in hat(N) \
  quad &hat(P)_(i j) = (theta_i - theta_j) / z_(i j) + omega_i + v_i, forall i, j in hat(E)\
  quad &theta_1 = 0
$
where $lambda > 0$ is a regularization parameter that controls the sparsity of the attack vector $v$.

== More Optimality Conditions
For an unconstrained optimization problem:
$
  min_x f(x)
$
where $f: RR^n arrow RR$ is a differentiable function, we can use the gradient condition to find the necessary condition for optimality.

=== Relative Interior
Assume we have a convex set $D$ and a affine hull of the set $"aff"(D)$, we say that a point $x in D$ is in the relative interior of $D$, denoted as $"relint"(D)$, if there exists a ball $B(x, r)$ with radius $r > 0$ such that:
$
  B(x, r) in "aff"(D) subset.eq D \
$
In other words, there exists a neighborhood around $x$ that lies entirely within the set $D$ when restricted to the affine hull of $D$.

Assume that in $RR^3$, your feasible set is a raised disc. The affine hull of this set is the plane containing the disc. The reason why we use the affine hull is so that the ball can be "flattened" to fit within the disc.

Recall that the standard Optimization Problem is defined as:
$
  min_x &f_0(x) arrow "convex"\
  s.t. quad & f_i(x) <= 0, quad forall i = 1, dots, k \
  quad & h_j(x) = 0, quad forall j = 1, dots, m \
$

== Optimality Conditions for Convex Optimization (KKT Conditions)
The Karush-Kuhn-Tucker (KKT) conditions provide necessary and sufficient conditions for a solution to be optimal in a convex optimization problem. It says that if Slater's condition is satisfied, then $x^*$ is a global minimum iff 
$
exists &lambda^* = mat(lambda_1^*, dots, lambda_k^*)^top\
exists &mu^* = mat(mu_1^*, dots, mu_m^*)^top\
$
Which are Lagrange multipliers such that the following conditions are satisfied:
1. *Primal Feasibility*:
$
  f_i (x^*) <= 0, quad forall i = 1, dots, k \
  h_j (x^*) = 0, quad forall j = 1, dots, m \
$
2. *Dual Feasibility*:
$
  lambda_i^* >= 0, quad forall i = 1, dots, k \
$
3. *Complementary Slackness*:
$
  lambda_i^* f_i (x^*) = 0, quad forall i = 1, dots, k \
$
4. *Stationarity*:
$
  nabla f_0 (x^*) + sum_(i=1)^k lambda_i^* nabla f_i (x^*) + sum_(j=1)^m mu_j^* nabla h_j (x^*) = 0 \
$
Consider the following unconstrained optimization problem:
$
  min_x &f(x) \
$
In this case, the KKT conditions reduce to the gradient condition:
$
  x^* "is a global min" arrow.double.r.l.long nabla f(x^*) = 0 \
$
because there are no constraints, so the primal feasibility, dual feasibility, and complementary slackness conditions are trivially satisfied.

*Example:*\
$
  min_x quad & f_0 (x) \
  s.t. quad & a <= x <= b \
$
We can rewrite it into standard form:
$
  min_x quad & f_0 (x) \
  s.t. quad & x - b <= 0 \
  quad & a - x <= 0
$
We can represent $f_1 (x) = x - b$ and $f_2 (x) = a - x$. We would first need to check if Slater's condition holds. If there exists a point $y$ such that:
$
  a < y < b arrow.long y = (a+b)/2\
$
then Slater's condition holds. The first KKT condition is primal feasibility:
$
  cases(
    f_1 (x^*) = x^* - b <= 0, 
    f_2 (x^*) = a - x^* <= 0 
  )
$
The second KKT condition is dual feasibility:
$
  cases(
    lambda_1^* >= 0, 
    lambda_2^* >= 0 
  )
$
The third KKT condition is complementary slackness:
$
  cases(
    lambda_1^* (x^* - b) = 0, 
    lambda_2^* (a - x^*) = 0 
  )
$
The fourth KKT condition is stationarity:
$
  nabla f_1 (x^*) = 1; quad 
  nabla f_2 (x^*) = -1\
  nabla f_0 (x^*) + lambda_1^* (1) + lambda_2^* (-1) = 0 \
$

=== Optimality Conditions for Quadratic Programming
Consider the following Quadratic Programming (QP) problem:
$
  min_x quad & x^top P_0 x + x^top Q x + r \
  s.t. quad & A x = b \
$
Slater's condition holds if there exists a point $y$ such that:
$
  A y = b \
$
and the KKT conditions are as follows:
1. *Primal Feasibility:* $A x^* = b$
2. *Dual Feasibility:* (trivially satisfied since there are no inequality constraints)
3. *Complementary Slackness:* (trivially satisfied since there are no inequality constraints)
4. *Stationarity:* $2 P_0 x^* + q_0+ A^top mu^* = 0$

Therefore, we can check the conditions by solving the following matrix equation:
$
  mat(A, 0; 2 P_0, A^top) mat(x^*; mu^*) = mat(b; -q_0) \
$

