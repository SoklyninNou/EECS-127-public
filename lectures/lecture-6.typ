=== Square Matrix
If A is a full rank square matrix, then the solution to $A x = y arrow.double.r.long x^* = A^(-1) y$\
\
\

== Least Squares
Consider an equation: $A x = b$ and we want to find:
$
display(min_(x in RR^n) f(x))
$
*Example:*\
In an MRI machine, there are beams that passes those boxes. The intensity of the beams is dependant on the angle and how many boxes we passes through. We can model this behavior by setting the number of beams equal to $y$ and the box position as indices of a matrix $x$ and the $A$ matrix represents the intensity.
$
x_1 + x_2 = 2\
2x_1 + 2x_2 = 5\
4x_1 - x_2 = 3
$
The solution will be $x = vec(1,1)$. But, if there is notice in the system, $y_i = a + epsilon$, there will never be a definite solution. This is where the least square comes in. We will try to minimize the difference between $A x - y$.
$
min(norm(A x = y))
$
where $A$ is a $m times n$ matrix and $y in RR^m$\

=== Linear Regression
In *Linear Regression*, we are trying to find the line $z_2 = a z_1 + b$ that best find the data points given. Using the concepts from least squares, we can treat $a = x_1 "and" b = x_2$ indices of a matrix.\
We can rearrange this to:
$
z^(\(i\))_2 - x_1 z^(\(i\))_1 + x_2
$
Which is not necessarily equal to 0 since it can be an estimate.\

We can then write it in least square form:
$
display(min_(x in RR^2) sum_(i=1)^m (x_1 z^(\(i\))_1 + x_2 - z^(\(i\))_2 ))\
display(min_(x in RR^2) sum_(i=1)^m ([z^(\(i\))_1 #h(1em) 1] x - z^(\(i\))_2))
$
This is now a least squares problem, where:
$
[z^(\(i\))_1 #h(1em) 1] = A\
x = x\
z^(\(i\))_2 = y
$

In a general *Linear Regression* problem:
$
"Input" a in RR^n arrow.r.long #rect()[System] arrow.r.long "Output" a^T x in RR
$
and we want to formulate it in least squares to find the coefficient $x$.\
We would map each $a^(\(i\))$ to it corresponding $y^(\(i\))$

=== Non-Linear Regression
Unlike linear regression's model of $z_2 = a z_1 + b$, *Non-Linear Regression* allows us to work with a more accurate model of
$
z_2 = a z^2_1 + b z_2 + c
$
This means we will be working with an $x in R^3$ since our unknowns are $a,b,c$.\
Therefore, we will have the following optimization.
$
display(min_(x in RR^2) sum_(i=1)^m (x_1 (z^(\(i\)))^2_1 + z^(\(i\)) x_2 + x_3 -z^(\(i\))_2 ))\
therefore min norm(A x - y)^2_2
$
According to *Gaussian IIDs*, the 2-norm is the best estimate, also called the max likelihood.\

== Solving Least Squares
Assuming that the exact solution $y$ is outside the range of A, we can find the closest estimation to that solution by projection u onto $r a n g e (A)$.\
Let the projection of $y$ onto $r a n g e (A)$ be $y^*$. This means that the vector $(y-y^*) perp r a n g e (A)$. According to the *FToLA*, $N u l (A^T) perp R a n g e (A)$. This then implies that $(y-y^*) in N u l (A^T)$, which then means $A (y-y^*) = 0$. We can then rearrange the equations to get:
$
A (y-y^*) = 0\
A y = A y^*\
A^T y = A^T A x^* \
x^* = (A^T A)^(-1) A^T y
$
This is equivalent to $A x^* = y arrow.double.r.long x^* = A^(-1) y$ since the transpose matrices cancel out.

== Quadratic Equations
Another way to obtain this formula:
$
min f(x) arrow.long nabla f(x) = 0
$
The issue is that $norm(A x − y)$ is a norm function and $norm(dot)$ is not differentiable at the origin. But, we know that $min norm(A x − y)$ is equivalent to $min norm(A x − y)^2$, which is differentiable.
$
min norm(A x − y)^2 &= angle.l A x − y, A x − y angle.r \
&= (A x − y)^T (A x − y)\
&= (x^T A^T − y^T)(A x − y)\
&= x^T A^T A x - x^T A^T y - y^T A x + y^T y\
&= x^T A^T A x - (y^T A x)^T - y^T A x + y^T y\
&= x^T A^T A x + 2 (A^T y) x + y^T y
$
Let $p = A^T A, space q = -2 A^T y, space r = y^T y$
$
min norm(A x − y)^2 = x^T P x + q^T x + r
$
In the quadratic form, we always choose P to be symmetric, $P = P^T$. This will allow us to differentiate the equation:
$
f(x) &= x^T P x - q^T x - r\
&= sum_(i=1)^n sum_(j=1)^n p_(i j) x_i x_j + sum_(i=1)^n q_i x_i  + r\
&= sum_(i=1)^n p_(i i) x_i^2 + sum_(i<j)^n (p_(i j) + p_(j i)) x_i x_j + sum_(i=1)^n q_i x_i  + r\
&= sum_(i=1)^n p_(i i) x_i^2 + 2 sum_(i<j)^n p_(i j) x_i x_j + sum_(i=1)^n q_i x_i  + r\
(partial f(x))/(partial x_k)
&= p_(k k) x_k + 2 sum_(k<j)^n p_(k j) x_j + 2 sum_(k<j)^n p_(i k) x_i + q_k\
&= 2 sum_(i = 1)^n p_(k i) x_i + q_k
$
Therefore:
$
nabla f(x) = 2P x + q
$
This is equivalent to the normal equation seen before:
$
&arrow.double nabla f(x^*) = 2P x^* + q\
&arrow.double 2 A^T A x^* - 2 A^T y = 0\
&arrow.double A^T A x^* = 2 A^T y\
&arrow.double x^* = (A^T A)^(-1) A^T y
$
\
\