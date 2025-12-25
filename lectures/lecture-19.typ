= Quadratic Programming
A *Quadratic Program* is an optimization with a quadratic objective function and linear constraints:
$
min_(x in RR^n) quad &x^top P_0 x + q_0^top x + r_0\
s.t. quad&a_i^top x = b_i\
&c_j^top x <= d_j
$
For convexity, we need the Hessian $2P_0 succ.eq 0$.
One thing to point out is that if $P_0 = 0$, then the quadratic program reduces to a linear program. $L P subset Q P$

== Quadratically Constrained Quadratic Program
This is a subset of a Quadratic Program, taking the form of:
$
min_(x in RR^n) quad &x^top P_0 x + q_0^top x + r_0\
s.t. quad &x^top P_i x + q_i^top x + r_i <= 0\
&a_j^top x = b_j
$
For convexity, we need the Hessian $2P_i succ.eq 0$. If $P_i = 0$, then the Quadratically Constrained Quadratic Program reduces to a Quadratic Program. $Q P subset Q C Q P$.

From the constraints given, the quadratic constraints describe an ellipsoid and the linear constraints describe a hyperplane. This means that the feasible set is the intersection of ellipsoids and hyperplanes.

= Relaxation
== Convex relaxation
*Convex relaxation* is the technique of reducing non-convex optimization problem to convex optimization problem. Let $tilde(S) "be convex" $ and $ S subset.eq tilde(S)$
$
min &f_0 (x) arrow "convex" #h(6em) &min &f_0 (x)\
s.t quad &x in S arrow "non-convex" #h(6em) &s.t quad &x in tilde(S);\
$
*Theorem:*\
Let $x^*$: arbitrary global min of non-convex optimization\
Let $tilde(x)$: arbitrary global min of convex relaxation
1. $f(tilde(x)) <= f(x^*)$ 
2. if $tilde(x) in S$, then $tilde(x)$ is the solution to the original problem
If the feasible set of a non-convex problem (I) is a subset of a convex problem (II), then (II) is the convex relaxation of (I).

*Example:*\
$
min quad &f_0(x)\
s.t. quad &x_1^2 + x_2^2 = 1\
&x_1 + x_2 <= 1
$
We can relax this by converting the equality into an inequality.

== Integer Programing
*Integer Programming* is an optimization problem that constraints the feasible points to integers:
$
min quad &a^top x\
s.t. quad &A x = b\
&x >= 0 in ZZ
$
A convex relaxation on an IP is simply turning the integer constraint into an interval.

*Theorem:* If all vertices of the LP are integral, all integers elements, then the convex relaxation is exact.