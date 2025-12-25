== Coercive Function
A function is *Coercive* if:
$
f: RR^n arrow RR : lim_(norm(x) arrow plus.minus infinity) f(x) = + infinity
$
This describes the behavior of the function's extreme points rather the how the graph between. This means the the graph can be convex or non-convex and still be coercive.

*Example:*\
Given $f(x) = alpha_1 x_1^4 + alpha_2 x_2^4$, this function is coercive if $alpha_1, alpha_2 > 0$. 
Proof:\
$
f(x) &>= min(alpha_1, alpha_2) (x_1^4 +x_2^4)\
&>= min(alpha_1, alpha_2) (x_1^2 +x_2^2)^2/2\
&= min(alpha_1, alpha_2) norm(x)^2/2\
therefore& lim_(norm(x) arrow plus.minus infinity) f(x) = + infinity
$
*Theorem:*\
Consider $f:RR^n arrow RR$, domain $f in RR^n$, if $f$ is continuous and coercive, then $min f(x)$ has a solution.
1. $min f(x) arrow d o m (f) in RR^n quad s.t. x in S$, if $f$ is continuous & coercive and $S$ is closed, then it has a finite solution.
2. $min f_0(x) quad s.t. quad f_i (x) <= 0; h_j (x) = 0$. Assume $f_0$ is continuous and coercive, if $f_i, h_j$ is continuous and has domain $RR^n$, then it has a finite solution.

== Weierstrass Theorem
Consider minimizing a continuous function $f(x): RR^n arrow RR quad s.t. quad x in S$, there exist a finite solution if the feasible set $S$ is compact (closed & bounded).

*Example:*\
$
min &e^(x_1) - x_1^2 + x_2^2 + e^(x_1 + x_2)\
s.t. quad &cos(x_1) + sin(x_2) <= 1\
&x_1^4 + e^(x_2) <= 5
$
Notice that all the functions are defined in $RR^n$, which means its continuous and therefore closed. We can also show that the feasible set is bounded by observing that $x_1^4 + e^(x_2) <= 5$.

All these theorems are sufficient conditions of the existence of a solution.

== Strictly Convex
If $f_0$ is strictly convex, then there is either a unique solution or no solution.

Proof:\
Assume at least two solutions $x^*, space y^*$, due to convexity, $1/2 x^* + 1/2 y^* in S$:
$
f_0(1/2 x^* + 1/2 y^*) &< 1/2 f_0(x^*) + 1/2 f_0(y^*)\
&= f_0(x^*)
$
This shows that there exists a point more optimal than the optimal solution. *Contradiction*.

= Linear Programming
For an optimization problem to be a *Linear Program*, the objective function and constraints must be affine.
$
min_(x in RR^n) &a_0^T x - b_0\
s.t. quad &a_i^T x - b_i = 0\
&a_j^T x - b_j <= 0
$
Rearranging in matrix form, we get:
$
min_(x in RR^n) &a_0^T x\
s.t. quad &A x = B\
&C x <= d quad "element-wise"
$
The special property of linear programming is that the feasible set, the intersection of all the constraint, is a polyhedron since the constraints are hyperplanes and half-spaces.

== Solving Linear Programs
Given a convex set $S$, we say a point $y in S$ is an *Extreme Point* is $exists.not alpha in (0,1) space s.t. space alpha U + (1-alpha)V = y, U, V in S$. This means that $y$ is not a convex combination of any points in $S$. Usually, extreme points are at the border of the set.