= Projection on Subspaces
Projection can be used to reduce the dimensions onto a subspace.
Lets assume $S$ is a subspace of some space $X$ and given a point $x in X$, the projection of $x$ onto $S$ is:\
$
display(Pi_s (x) = "argmin"_(y in S) norm(y-x) =display(min_(y in S) norm(y-x)))
$
The solution to this optimization is denoted as $x^*$.\
*Theorem:* $x^* = display(Pi_s^(x)) "exists and is unquie"$. This means that $x^* = display(Pi_s^(x)) space arrow.r.l.long space (x-x^*) perp S$.\
== Proof of Projection Minimization
Let $x^*$ be the project of x onto a subspace $S$ and $y$ be another point on $S, x eq.not y$.\
$
norm(x-y)^2 = norm(x-x^* + x^* - y)^2
$
Note that $x-x^* perp x^* - y$ by definition.
$
norm(x-x^* + x^* - y)^2 = norm(x-x^*)^2 + norm(x^* - y)^2
$
We know that $norm(x^* - y)^2$ is a not zero value, which means that:\
$
norm(x-x^*)^2 <= norm(x-x^*)^2 + norm(x^* - y)^2 = norm(x-y)^2\
$
$therefore x^* "is the minimized projection onto" S$.

$"Given affine set" A "is a subspace and" y-x^* in S," where" S "is a subspace. If" (x-x^*) perp S, " then" (x-x^*) perp A$

== Projection onto n-Dimensional Spaces
Given a 1-dimensional subspace $S$, let $v$ be the basis for $S$ and $x$ be an arbitrary vector in $RR^n$. We know that $Pi_S (x) = x^*$. Additionally, $x^* in S arrow.r.long exists alpha^* : x^* = alpha^* dot accent(v, arrow.r)$.\
$
"Let" y &=& &accent(v, arrow.r)\
$
$
arrow.double <x- alpha^* dot accent(v, arrow.r), accent(v, arrow.r)> &=& &<x, accent(v, arrow.r)> - alpha^* dot norm(accent(v, arrow.r))^2&
&=& &0&\
arrow.double alpha^* &=& &(<x, accent(v, arrow.r)>) / norm(accent(v, arrow.r))^2&

$\
This means:
$
x^* = Pi_S (x) = alpha^* dot v = (<x, v>)/norm(v)^2 dot v
$

*Example:*\
A data set of votes $n=100$ senators on $m = 645$ bills in the period of 2004-2006. For $j=1, ..., n$ define $x^(i) in RR^m$ of votes of senator j.\

*Answer:*\
What we want to do is to project the data on to a 1-dimensional space, Which means we need to define a subspace and its basis vectors. Assume the senators vote "for" or "against" at the same rate, $50%$.\
Lets define $accent(x, hat)$ as the average vote of the senators. This means:
$
accent(x, hat) = 1/n (x_1, ..., x_n)
$
To remove bias, we substract each vote by the average $accent(x, hat)$:
$
X = (x_1 - accent(x, hat), ..., x_n - accent(x, hat))
$
We now want to project this unbiased score onto the subspace:
$
Pi_S x_j - accent(x, hat) = (<x_j - accent(x, hat), v>)/norm(v)^2 dot v
$
The main obstacle is to find the subspace which gives the most accurate data.

// Blank