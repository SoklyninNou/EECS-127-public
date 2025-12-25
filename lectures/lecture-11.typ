== Condition Numbers
The *Condition Number* describes how sensitive the output is to changes in the input. If the condition number of a matrix is close to 1, we say it is well conditioned. If the condition number of a matrix is very large, we say it is ill conditioned.
$
Kappa(A) = sigma_1/sigma_n
$
Instead of having $A x = y$, we now have:
$
(A + Delta A)(x + Delta x) = y \
underbrace(A x, y) + A Delta x + Delta A x + Delta A Delta x = y\
Delta x = A^(-1) Delta A (x + Delta x)\
norm(Delta x)_2 = norm(underbrace(A^(-1), B) underbrace(Delta A (x + Delta x), y))_2\
norm(Delta x)_2 = norm(B y)_2 <= norm(B)_2 dot norm(y)_2\
<= norm(A^(-1))_2 norm(underbrace(Delta A, accent(B,-)) underbrace((x + Delta x), y))_2\
<= underbrace(norm(A^(-1))_2 dot norm(A)_2, Kappa(a)) dot norm(x + Delta x)_2
$

=== Condition Numbers for Leasts Squares
Remember that Least Square, we want to minimize:
$
min_(x in RR^n) norm(A x - y)
$
And the solution space is $S = A^+y + N(A)$, where:
$
A^+ &= (A A^T)^(-1) A\
&= (U Sigma V^T V Sigma^T U^T)^(-1) U Sigma V^T\
&= (U Sigma Sigma^T U^T)^(-1) U Sigma V^T\
&= V Sigma^+ U^T
$
Now we can take $y = y + Delta y$
$
min_(x in RR^n) norm(A x - (y + Delta y))
$
Now the solution space becomes $S_P = A^+(y + Delta y) + N(A)$\
The main difference is the pseudo inverse of $S$ and $S_P$, $A^+y "vs" A^+(y + Delta y)$\
Lets assume $x^*$ is the minimum solution to LS and $x^* + Delta x$ is the minimum solution to LSP. This means:
$
S &= A^+y + N(A) = x^* + N(A)\
S_P &= A^+(y + Delta y) + N(A) = x^* + Delta x + N(A)\
&= S + A^+ Delta y
$
Now Assume $Delta y$ is an arbitrary vector where $norm(Delta y) <= 1$, we can then define:
$
Epsilon = {Delta x = A^+ Delta y bar norm(Delta y) <= 1}
$
Which is an ellipsoid\

*Example:*\
We have a circle 
$
B &= {x in RR^2 bar x_1^2 + x_2^2 <= r^2}\
&= {x in RR^2 bar (x_1^2 + x_2^2)/r^2 <= 1}\
&= {x in RR^2 bar mat(x_1, x_2) mat(x_1, x_2) mat(1/r^2, 0; 0, 1/r^2) <= 1}\
&= {x in RR^2 bar underbrace(mat(x_1, x_2) mat(1/r, 0; 0, 1/r), y^T) underbrace(mat(1/r, 0; 0, 1/r)mat(x_1; x_2), y) <= 1}\
&= {x in RR^2 bar y = mat(1/r, 0; 0, 1/r) mat(x_1; x_2), y^T y <= 1}\
&= {x in RR^2 bar mat(x_1; x_2) = mat(1/r, 0; 0, 1/r)^(-1) mat(y_1; y_2), norm(y)_2 <= 1}\
$
Therefore, a Ball in $RR^n$:
$
{x in RR^n bar x_1^2 + dots + x_n^2 <= r^2}\
{x in RR^n bar x = underbrace(mat(1/r, 0; 0, 1/r), B)^(-1) y, #h(1em) norm(y)_2 <= 1}\
{x in RR^n bar x = B^(-1) y, #h(1em) norm(y)_2 <= 1}
$
We can expand:
$
norm(B x)_2 = x^T B B^T x
$
We can define $P = B B^T$. Since we assume that $B$ is invertible, $P$ is also invertible. This means we can rewrite the set as:
$
{x in RR^n bar x^T P^(-1) x <= 1}
$
This is the definition if an n-dimensional ellipsoid.\
The characteristic of the ellipsoid is that each eigenvector are the direction of a point in the ellipsoid surface and the length is the corresponding singular values.\

What is $B$ is not square or invertible, consider:
$
{x in RR^n bar x = B y, norm(y)_2 <= 1}
$
where $B in RR^(n times m)$, $y in RR^m$, and the rank(B) = r\
The ellipsoid now is in a lower dimensional space $r$, the semi-axis are the still the eigenvectors and the lengths are the singular values.

In the case of 
$
Epsilon = {Delta x = A^+ Delta y bar norm(Delta y) <= 1}
$
This is an ellipsoid with semi axis: $v^(\(1\)), dots, v^(\(n\))$ with lengths: $1/sigma_1, dots, 1/sigma_r, 0, 0$

This says that any change in the solution space belongs to a different ellipsoid.
The main difference between $y = A x$ and leasts square is that leasts squares takes into account all singular values instead of only the largest and smallest.