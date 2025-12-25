== Mid-Value Theorem
The *Mid-Value Theorem* states that:
$
exists v in RR^n : f(x_0) < f(v) < f(x_1)
$
This means that there exist a point in between the two inputs that is outputs a value also in between the two inputs. We can then express the function $f(x)$ as such:
$
f(x) = f(x^*) + nabla f(x^*)^T (x - x^*) + 1/2(x - x^*)nabla^2f(v)(x - x^*)
$
We know that $nabla f(x^*)^T = 0$ from our definition of convex functions and $nabla^2f(v) >=0$. This means that:
$
f(x) = f(x^*) + a, "where" a >= 0\
f(x) >= f(x^*)\
therefore x^* "is the global minimum"
$

= Ridge Regression
In *Ridge Regression*, we find
$
x in RR^n : min norm(A x - y)^2 + alpha norm(x)^2
$
Where $alpha$ is a *Regularization Term* is a user defined variable that defines the relationship between the variable and its output.

== Solutions of Ridge Regression
We have
$
f(x) =norm(A x - y)^2 + alpha norm(x)^2 = x^T (A^T A + alpha I_n) x + (-A^T y)^T x + (y^T y)
$
We then find the gradient and hessian of this function:
$
nabla f(x) &= 2(A^T A + alpha I_n)x - 2A^T y\
nabla^2 f(x) &= 2(A^T A + alpha I_n)
$
We can then use this to find the solution set:
$
nabla f(x^*) = 2(A^T A + alpha I_n)x^* - 2A^T y = 0\
2(A^T A + alpha I_n)x^* = 2A^T y
$
This gives us the solution set:
$
cal(S) = {x^* bar A^T A x^* = A^T y}
$
*Corollary:*\
1. $S = A^T y + N(A)$
2. $min norm(x) : s in S = A^T y "is unique"$
\

== Eigenvalue for Non-Square Matrices (Singular Values)
Remember that a matrix $A$ is diagonalizable if and only if:
$
A = U^(-1) Lambda U
$
But what do we do for when $m eq.not n$\
This is where *Singular Values* are used:

*Singular Value Decomposition (SVD) *for a given $A in RR^(m times n)$ is:
$
exists U in RR^(m times m), forall V in RR^(n times n), Sigma in RR^(m times n)
$
Such that:
- $A = U Sigma V^T$
- $U,V$ are orthogonal matrices
- If $n >= m, Sigma$ does not occupy every column
- If $n <= m, Sigma $ does not occupy every row
- $sigma_1 >= sigma_2 >= ... >= sigma_r > sigma_(r+1) =... = 0$

Every matrix $A in RR^(m times n)$ can be decomposed using SVD into the form of:
$
A = U Sigma V^T
$
In the case where some or all the singular values are zero, this means that the rank of the matrix $A$ is $k$, where $k$ is the number of non-zero singular values. Intuitively, this means that dimensions $k+1$ to $n$ map to the null space of $A$. This then means that the eigenvectors for the zero singular values is the null space of A. This process is a series of change of basis and scaling.

*Example:*\
$
A &= U Sigma V^T\
A x &= U Sigma V^T x\
&= U Sigma mat(v_n^T x; dots ; v_n^T x) "writing x in v-coordinate"\
&= U mat(sigma v_n^T x; dots ; sigma v_n^T x) "scaling each coordinate by" sigma\
&= sum_(i=1)^m u_i (sigma v^T x) 
$

*Theorem:*\
For matrix $A$, $r a n k (A) = r$. Additionally, if $A$ is Positive, Semi-Definite, then $Sigma = Lambda$ and $U = V$

== Pseudo-Inverse Matrices
The Pseudo-Inverse, also called the *Moore-Penrose Inverse*, of matrix $A$ is defined as:
$
A = V Sigma^+ U^T
$
Where every entry of $Sigma^+$ is $1/sigma_i$\
If $A$ is a wide and full row rank matrix or tall and full row rank matrix, then $A^T = A^T (A A^T)^(-1)$

== Finding Singular Values
Consider the matrix:
$
A = U Sigma V^T
$
We can multiple it by its transpose:
$
A A^T &= U Sigma V^T V Sigma U^T\
&= U Sigma Sigma^T U^T, "since" V^T V = I_n
$
We know that $Sigma Sigma^T$ is also a diagonal matrix since in both case of $m >= n$ and $m <= n$, $Sigma Sigma^T$ will be a square matrix with the singular values $sigma_1 >= sigma_2 >= ...$ as the diagonal indices. This then means that $A A^T$ is a diagonalizable matrix in the form of:
$
A A^T = U Sigma Sigma^T U^T\
A^T A = V Sigma Sigma^T V^T
$
This establish that $sigma^2_i = lambda_i$.\
Going back to *Pseudo-Inverse Matrices*, we now could conclude that for the formula:
$
A = U Sigma V^T
$
*We now know that:*
- $U$ is the columns of the *normalized* Eigenvectors of $A A^T$
- $V$ is the columns of the *normalized* Eigenvectors of $A^T A$
- $Sigma$ is the non-zero singular values of A, where $sigma_i = sqrt(lambda_i)$ of $A A^T "or" A^T A$


