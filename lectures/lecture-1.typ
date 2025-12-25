= Background
For multiplication of matrix $A = m times n$ and $B = n times m$, we can rewrite it as:
$
A B = sum_(i=0)^m sum_(j=0)^n a_(i j) b_(j i)
$

= Structure of Optimization
In general, optimization problems is a problem where we are maximizing or minimizing a function $f_0$ bounded by given constraints $f_i$:
$
min_(x in RR^n) f(x) "such that" f_i (x) <= 0
$
The problem above is in *Canonical Form*, which is the standard form of solving these problems. Some ways to convert to canonical form is:
$
f_i (x) = 0 arrow.double.long f_i (x) <= 0, -f_i (x) <= 0
$
There are two types of optimization problems:
- *Tractable Problems:* Can be solved in polynomial time
- *Non-Tractable Problems:* Is solved in exponential time

== Feasibility
The *Feasible Solution* is a set of solutions that satisfies all constraints. We can think about it as the intersection of all the domains of each constraint $f_i (x)$:

*Example:*
$
min x^2\
"s.t."\
-1 <= x <= 1
$
In this example, there is one constraint highlighting the feasible solution $-1 <= x <= 1$. Solving this, we can see that the minimum value of the function is at $x = 0$, which outputs a value of $0$.

