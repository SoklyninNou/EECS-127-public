= Hyperplanes

== Supporting Hyperplane
Given a convex set C and a boundary point $z in delta C$, the hyperplane
$
H = {x in RR^n | a^T x = b}
$
is called a supporting hyperplane for $C$ at $z$ if $z$ is on the hyperplane and the boundary of $C$ and the set $C$ is only on one side of the hyperplane.
- $z in H (a^T z = b)$
- $C subset H_- (H_- = {x in RR^n | a^T x ≤ b})$, meaning $a^T x <= b, forall x in C$

The following theorem states that the supporting hyperplane always exists.

if $C subset RR^n$ is a convex set and $z$ is on the boundary of $C$, then $exists$ a supporting hyperplane containing $z$.

For a given boundary point $z$, the supporting hyperplane at $z$ may or may not be unique.

== Separating Hyperplane
Given $C_1, C_2 subset RR^n: "Convex Set"$
$
H = {x in RR^n bar a^T x = b}
$
is a separating hyper plane if $C_1$ is on one side of $H$ and $C_2$ is on the other.

1. if $C_1 and C_2 = emptyset$, then a separating hyperplane exists.
2. if $C_1$ and $C_2$ are closed & one bounded $C_1 and C_2 = emptyset$, then a strict separation exists.


If the intersection of $H $ and $C_1, C_2 = emptyset$, this is called a strict separation.

== Convex Functions
A *Convex Function* $f: RR^n arrow RR$ is convex if the domain of $f$ is defined as the following set
$
f = {x in RR^n bar -infinity < f(x) < infinity}
$
Assume that $f(x) = log(x)$, then the domain $d o m(f) = (0, infinity)$
Assume that $f(x) = (a^T x + b)/(c^T x + d)$, then the domain $d o m(f) = {x in RR^n bar c^T x + d eq.not 0}$
\
\

Formally, we say that f is a convex function if:
1. $d o m(f)$ is a convex set.
2. $forall x,y in d o m(f), space
    alpha in [0, 1], space
    f(alpha x + (1 - alpha)y) <=
    alpha f(x) + (1-alpha) f(y)$
    - if the inequality is only less than, then it is a strictly convex function
3. The complement is a concave function.

== Convexity of Norms
*Theorem:* Let $f : norm(dot) space RR^n arrow RR$, $f(x)$ is convex if
- $d o m(f): RR^n in "Convex Set"$
- $norm(alpha x + (1-alpha)y) <= alpha norm(x) + (1-alpha)norm(y), space alpha in [0,1]$

$"If" f_1(x), space dots, space f_m(x) " are convex functions," omega_1, space dots, space omega_m > 0, "then"$
$
f(x) = omega_1 f_1(x) + dots + omega_m f_m(x) "is convex"\
d o m(f) = d o m(f_1) sect dots sect d o m(f_m)
$