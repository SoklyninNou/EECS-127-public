=== Application of Integer Programming
Assume we have $m$ suppliers and $n$ customers. Each supplier can produce a certain number of units, and each customer has a certain demand. The cost of transporting goods from supplier $i$ to customer $j$ is given by $c_(i j)$. The goal is to minimize the total transportation cost while satisfying supply and demand:
$
min_(x in RR^(m times n)) quad &sum_(i=1)^m sum_(j=1)^n c_(i j) x_(i j)\ \
s.t. quad &sum_(j=1)^n x_(i j) <= s_i quad forall i=1,...,m\
&sum_(i=1)^m x_(i j) >= d_j quad forall j=1,...,n\
$
where $s_i$ is the supply of supplier $i$ and $d_j$ is the demand of customer $j$. The variable $x_(i j)$ represents the number of units transported from supplier $i$ to customer $j$.

Another example is compressed sensing, where we want to recover a sparse signal $x in RR^n$ from a limited number of linear measurements $y = A x + "noise"$, where $A in RR^(m times n)$ is the measurement matrix with $m < n$. The goal is to find the sparsest solution that fits the measurements:
$
min_(x in RR^n) quad &norm(x)_0\ \
s.t. quad &||A x - y||_2 <= epsilon\
$
where $norm(x)_0$ counts the number of non-zero entries in $x$, and $epsilon$ is a small tolerance for the measurement noise. This problem can be relaxed to an $l_1$-norm minimization problem, which is convex and can be solved efficiently:
$
min_(x in RR^n) quad &norm(x)_1\
s.t. quad &norm(A x - y)_2 <= epsilon\
$
One note is that the $l_1$-norm minimization is a relaxation of the $l_0$ minimization only if the feasible set is restricted to
$
x in {x in RR^n bar -1 <= x_i <= 1 quad forall i=1,...,n}
$
*Theorem:*\
if $A$ is random enough and $m$ is sufficiently large (on the order of $k log(n/k)$ where $k$ is the sparsity level of the true signal), then the solution to the $l_1$-norm minimization problem is equal to the solution of the original $l_0$-norm minimization problem.



