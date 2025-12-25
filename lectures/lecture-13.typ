= Sets and Combinations
== Types and Properties of Sets
A set $cal(S)$ *Open* if
$
forall x in cal(S), exists epsilon > 0 : forall alpha <= epsilon,  sqrt(x^2-(alpha epsilon)^2) subset.eq cal(S)
$
Intuitively, this means that for a set $cal(S)$ to be open, we can create a circle around any element in the set, no matter how small the radius is, and every element within that circle is a subset of the set.

Let $C$ be the edge of $cal(S)$, then we know that $forall x in cal(S), x < C$, this means that, no matter how close $x$ is the $C$, we can take $epsilon = C - x > 0$

A set is $cal(S)$ *Closed* if 
$
forall epsilon > 0, exists x in cal(S) :  (x+epsilon) subset.eq.not cal(S)
$
Notice that this is the negation of the open set.

This means that if $RR \\ cal(S)$ is open, then $cal(S)$ is closed. By definition, $RR^n space \& space emptyset$ are open and closed.\

The *Interior* of a set is defined as the set points strictly inside $cal(S)$
$
"int"(cal(S)) = {Z in S bar B(z) subset.eq cal(S)}
$

The *Closure* of a set is defined as
$
"cls"(cal(S)) = {z in RR^n bar z = lim_(k arrow infinity) x^(\(k\)); forall k, x^(\(k\)) in cal(S)}
$

The *Boundary* of a set $cal(S)$ is
$
delta cal(S) = "cls"(cal(S)) \\ "int"(cal(S))
$

A set $cal(S)$ is *Bounded* if:
$
exists "ball of radius r" : S subset.eq "ball"
$

A set $cal(S)$ is *Compact* if it is both *Closed* and *Bounded*

== Linear and Affine Combinations

A *Linear Combination* of a point $x$ is the set of point and its coefficient that could express $x$:
$
X = alpha_1 x_1 + alpha_2 x_2 + dots + alpha_n x_n
$

The *Linear Hull* is the set of all linear combinations of ${x_1, x_2, dots, x_n}$ = span$(x_1, x_2, dots, x_n)$

The *Affine Combination* of a set of points ${x_1, x_2, dots, x_n}$ is
$
X = alpha_1 x_1 + alpha_2 x_2 + dots + alpha_n x_n\
alpha_1 + alpha_2 + dots + alpha_n = 1\
forall alpha_i in RR
$

The *Affine Hull* is the set of all affine combinations

*Theorem:*\
The Affine hull of any set is an affine set.

== Convexity
A *Convex Combination* for points ${x_1, x_2, dots, x_n} in RR^n$ is
$
X = alpha_1 x_1 + alpha_2 x_2 + dots + alpha_n x_n\
alpha_1 + alpha_2 + dots + alpha_n = 1\
forall alpha_i >=0 in RR
$

The *Convex Hull* is the set of all convex combinations of ${x_1, x_2, dots, x_n} in RR^n$

A *Convex Set* $cal(S)$ is a set where for every two points $x_1, x_2 in cal(S)$ in the set, the convex combination is also in the set.
$
cal(S) "is convex if" forall alpha in [0, 1], forall x_1, x_2 in cal(S), alpha x_1 + (1 - alpha) x_2 in cal(S)\
$

*Theorem:*\
The *Convex Hull* is the smallest convex set that contains all points in the set

The dimension of *Convex Set* is the dimension if the affine hull of the set
The union of two *Convex Sets* is not always convex
The intersection of two *Convex Sets* is always convex


