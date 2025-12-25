= Convex Optimization
A canonical form of general optimization problems:
$
min_(x in RR^n) f_0(x)\
f_i (x) <= 0; #h(2em)
h_j (x) = 0
$
These optimization problems are convex or non-convex.

For an optimization to be convex, the following conditions must be true:
- $f_0 (x)$ is a convex function
- $f_i (x)$ are convex functions
- $h_j (x)$ must be an affine function
The reason why $h_j (x)$ must be an affine function rather than a convex function is because when putting it in standard form with two inequalities, one of the inequalities will be concave.\

*Example:*\
$
min_(x in RR^3) e^(x_1 - x_2) + (2x_1 + x_2)^2\
(x_1 + x_2)^6 <= 5x_1 - x_2 + 1\
-1 <= x_3 <= 1\
x_1 + x_2 + x_3 = 5
$
First put in canonical form:
$
min_(x in RR^3) e^(x_1 - x_2) + (2x_1 + x_2)^2\
f_i cases(
(x_1 + x_2)^6 - 5x_1 + x_2 - 1 <= 0,
x_3 - 1 <= 0,
-x_3 + 1 <= 0
)\
h cases(x_1 + x_2 + x_3 -5 = 0)
$
We then check the conditions highlight above to check if the optimization problem is convex.

== Feasible Set
A *Feasible Set* is a set of possible solutions::
$
cal(S) = {x in RR^n mid(bar) f_i (x) <= 0; h_j (x) = 0}
$
*Theorem:* The feasible set of a convex optimization problem is a convex set.

Proof:\
Let $x, y in cal(S); i = 1, 2, dots, m; j = 1, 2, dots, k$\
if $x in cal(S) arrow f_i (x) <= 0; h_j (x) = 0$\
if $y in cal(S) arrow f_i (y) <= 0; h_j (y) = 0$\
Let $z = alpha x + (1-alpha)y in cal(S)$, where $alpha in [0,1]$\
$
f_i (z) = f_i (alpha x + (1 - alpha)y) <= alpha underbrace(f_i (x), <=0) + (1-alpha)underbrace(f_i (y), <= 0) <= 0\
h_j (z) = h_j (alpha x + (1 - alpha)y) <= alpha underbrace(h_j (x), =0) + (1-alpha)underbrace(h_j (y), = 0) = 0\
therefore z in cal(S) "is a convex set"
$

*Theorem:* For convex optimization:
- All local solutions are global solutions
- The set of all global minimums is convex

