= Eigenvalues, Eigenvectors, and Their Applications
An *Eigenvalues $lambda$* is a scalar that describes the "stretch" of an Eigenvector given a transformation. More formally, the relationship between the eigenvalues and the transformation matrix is as such:
$
A x = lambda x
$
Where x is the eigenvector\
Using this fact, we can find the eigenvalues of any transformation matrix by:
$
A x = lambda x\
lambda x - A x = 0\
x (lambda I - A) = 0\
det(lambda I - A) = 0
$
*Example:*
Given a matrices:\
$
A = vec(1 space 0, 0 space 1)\
$
Find the Eigenvalue(s)
$
det(lambda I - A) &= (lambda - 1)(lambda - 1)\
therefore lambda &= 1
$
Find the Eigenvector(s)
$
(1) I - A = vec(&0 space &-1, &0 space &0)\
therefore accent(lambda, arrow.r) = vec(-1,0)
$

== Diagonalizable Matrix
Given a matrix with eigenvectors, we can *Diagonalize* the matrix to the form of:
$
A = P D P^(-1)
$
where
$
P = [accent(u_1, arrow.r) space accent(u_2, arrow.r) space ... space accent(u_3, arrow.r)], "where" accent(u_i, arrow.r) "is an eigenvector"\
D = mat(
  &lambda_1, &0, &dots, &0; 
  &0, &lambda_2, &dots, &0; 
  &dots, &dots, &dots, &dots;
  &0, &0, &dots, &lambda_n)
$

== Orthogonal Matrix
Any given vector $U$ is orthogonal if and only if:
$
U^T U = U U^T = I_n
$
and all its vectors are orthonormal.

== Symmetrical Matrix
A matrix $A in RR^(n times n)$ is symmetric if:
$
A = A^T
$
According to the *Spectral Theorem*, if A is a *Symmetrical Matrix*, then its eigenvectors are orthonormal.

=== Hessian Matrices
A *Hessian Matrix* is symmetric if for $f(x) : RR^n arrow.r.long RR$, then:
$
nabla f(x) in RR^n\
nabla^2 f(x) in RR^(n times n)
$
*Example:*
$
nabla f(x) = mat(frac(delta f, delta x_1); dots; frac(delta f, delta x_n))\
nabla^2 f(x) =
mat(
  frac(delta f, delta x_1 delta x_1),
  frac(delta f, delta x_1 delta x_2),
  dots,
  frac(delta f, delta x_1 delta x_n);

  frac(delta f, delta x_2 delta x_1),
  frac(delta f, delta x_2 delta x_2),
  dots,
  frac(delta f, delta x_2 delta x_n);
  
  dots.v,
  dots.v,
  dots.down,
  dots.v;
  
  frac(delta f, delta x_n delta x_1),
  frac(delta f, delta x_n delta x_2),
  dots,
  frac(delta f, delta x_n delta x_n);
)
$
This matrix is symmetrical since the (i,j) and (j,i) index of the matrix is the same based on the symmetry of second derivative.

=== Defining Symmetric Matrices
Based on the eigenvalues of the #underline(stroke: 1pt)[*Symmetric*] matrices, we can group matrices into different classes:
- *Positive Semi-Definite:*\
$
lambda_1, ..., lambda_n >= 0\
A in S^n "is PSD if" x^T A x >= 0, forall x in RR^n 
$
- *Positive Definite:*\
$
lambda_1, ..., lambda_n > 0\
A in S^n "is PD if" x^T A x > 0, forall x in RR^n 
$
- *Negative Semi-Definite:*\
$
lambda_1, ..., lambda_n <= 0\
A in S^n "is NSD if" x^T A x <= 0, forall x in RR^n 
$
- *Negative Definite:*\
$
lambda_1, ..., lambda_n < 0\
A in S^n "is ND if" x^T A x < 0, forall x in RR^n 
$
- *Sign Indefinite*
$
lambda_1, ..., lambda_n in RR\
$

== Convexity and Local Minimums
*Theorem:*\
Consider $display(min_(x in RR^n) f(x))$\
Assume $nabla f(x) >= 0, forall x in RR^n$\ 
All local min = global min when $x^*$ is a local/global min iff $nabla^2 f(x^*)$ is positive semi-definite.

This highlights that if the function has the shape of a bowl (Convex), then there is only one local min, which is also the global minimum.

