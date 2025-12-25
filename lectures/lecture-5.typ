= More Subspaces
== Range
The *Range* of a matrix can be though of as the solution space of a given equation 
$
A x = y
$
Determining the range of A requires us to find S so that:
$
S = {x in RR^n bar A x = y}
$
The $R a n g e(A)$ is the set of solution, whose dimension is called the *Rank* of A.\

*Theorem:* Rank(A) = \# of Linearly independent columns of A. This implies that $0 <= r a n k(A) <= min(m,n)$. If $r a n k(A) = 0$, then $A=0$.

== Null Space
The *Null Space* of a matrix can be though of as the solution space of a given equation 
$
A x = 0
$
Determining the range of A requires us to get the subspace S so that:
$
S = {x in RR^n bar A x = 0}
$
Because it passes through the origin, by definition, the null space is a subspace.\
To find the null space of a matrix, we setup a system of equations:\

*Example in $R^3$:*
$
A x = 0\
a x_1 + b x_2 + c x_3 = 0
$
We then write all $x_i$ as in terms of others except for one:
$
x_1 = - (b x_2 + c x_3)/a\
x_2 = - (a x_1 + c x_3)/b
$
We now setup the vector form:
$
N u l (A) = vec(x_1,x_2,x_3) = vec(-(b x_2 + c x_3)/a, - (a x_1 + c x_3)/b, x_3) = vec(0,-a/b,0) x_1 + vec(-b/a,0,0) x_2 + vec(c/a,c/b,1) x_1
$
Therefore:
$
N u l (A) = s p a n (vec(0,-a/b,0), vec(-b/a,0,0), vec(c/a,c/b,1))
$

== Fundamental Theorem of Linear Algebra
The Range and Null Space can be related to each other using the Fundamental Theorem of Linear Algebra:
- $N(A) perp R(A^T)$
- $N(A) xor R(A^T) = RR^n$
- $forall h in RR^n, exists x in N(A), exists w in R(A^T) : h = v + w$
- $dim(N(A)) + r a n k(A) = n$
*Example Proof:*
$
v in N(A) arrow.double.r.long A v = 0\
w in R(A^T) arrow.double.r.long exists u :A^T u = w\
<u, w> = v^T w arrow.double.r.long v^T A^T u = (A v)^T u = 0
$

== Applications of Range and Null Space
Studying the solution space of $A x = y$, we must make sure that it is not empty. We can find this by checking if y is a linear combination of A.\
S is non-empty iff:
- $y in R(A)$
- $y in s p a n(c o l(A))$
- $r a n k(A) = r a n k([A + y])$

== Solution Spaces
Sometimes find the solution could seem extremely difficult, which may be because there isn't one. Or maybe there is a separate valid solution. This means that we need to determine the *Solution Space* of $A x = y$ to better understand the equation.\
Let $accent(x, -)$ be an arbitrary solution to the equation $A x = y$, meaning $A accent(x, -) = y$
$
A x &= y\
A x - A accent(x, -) &= y - A accent(x, -)\
A (x - accent(x, -)) &= 0
$
let $z = x - accent(x, -) in N u l(A)$\
This means that each solution x is the sum of $accent(x, -)$ and a vector in the null space:
$
S = accent(x, -) + N u l(A)
$

=== Tall Matrix
A tall matrix is a matrix where there are more rows then columns. This means that $A x = y$ has $m "equations &" n "unknowns"$, where $A "is a" m times n "matrix and" n < m$. This is a overdetermined case, where:
- $dim(N(A)) + R a n k(A) = n$
- $N(A) = {0}$
This means that there is only one solution iff $y in R(A)$

=== Wide Matrix
A wide matrix is a matrix where there are more columns then rows. This means that $A x = y$ has $m "equations &" n "unknowns"$, where $A "is a" m times n "matrix and" n > m$. This is a overdetermined case, where:
- $dim(N(A)) = n - + R a n k(A) > 0$
This means that there are an infinite amount of solutions since for solution set:
$
S = accent(x, -) + N(A)
$
We can add any arbitrary value in $N(A)$ to $accent(x, -)$ to get a new distinct solution.

=== Optimal Solution
In the case where we have an infinite number of solutions, how do we know the more optimal solution? This can be found by minimizing the input vector as it could represent using less resources:\
$
display(min_(x in RR^n) norm(x))\
A x = y
$
This can be achieved using projection $x^*$ from the origin onto the solution space. Since the solution space is an affine set of the null space
$
S = accent(x, -) + N(A)
$
the project of the origin onto the solution space is both perpendicular to the null space and solution space. Using this fact, we can write it in terms of an inner product:\
$
<x^*, x^* - accent(x, -)> = 0
$
where $x^* - accent(x, -) in N u l(A)$, since the point $S -accent(x, -) = N u l(A) "and" x^* in S$\
Because $x^* perp N u l(A)$ and using the *FToLA*, we formulate the following conclusion:
$
x^* perp N u l(A) space and space N u l(A) perp R(A^T) arrow.double.r.long x^* perp R(A^T)
$
This then means:
$
exists u in R(A^T) : A^T u = x^*\
$
We can now express $x^*$ as such:\
$
x^* = A^T u = A^T (A A^T)^(-1) y
$