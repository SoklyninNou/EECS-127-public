#set math.equation(numbering: none)

*Least Squares:*\
$x^* = (A^T A)^(-1) A^T y$\

Set of Solutions: #h(2em)
$S = {x : A^T A x = A^T y}$\

Minimum-Norm Solution: #h(2em)
$x^* = A^+ y$\

Pseudo-inverse: #h(2em)
$A^+ = V Sigma^T U; #h(1em) sigma_i^T = 1/sigma_i$\

Algebraic Solution:
$
f(x) = min norm(A x − y)^2 = x^T P x + q^T x + r\
P = A^T A, space q = -2 A^T y, space r = y^T y\
nabla f(x) = 2P x + q
$\

Solving perturbation: #h(2em)
$cal(S) = {A^+ (y + Delta y) : norm(Delta y)^2 <= 1}$\

Condition Number: #h(2em)
$k = sigma_n/sigma_1$\
- If k(A) is close to 1, then A is called well-conditioned.
- If k(A) is very large, then A is called ill-conditioned.

Projection: #h(2em)
$y^* = (y dot x^(\(1\))) / (x^(\(1\)) dot x^(\(1\))) x^(\(1\)) +  (y dot x^(\(2\))) / (x^(\(2\)) dot x^(\(2\))) x^(\(2\))$

*Optimality*
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
*Signs of Matrices*\

- Positive Semi-Definite:\
$
lambda_1, ..., lambda_n >= 0\
A in S^n "is PSD if" x^T A x >= 0, forall x in RR^n 
$
- Positive Definite:\
$
lambda_1, ..., lambda_n > 0\
A in S^n "is PD if" x^T A x > 0, forall x in RR^n 
$
- Negative Semi-Definite:\
$
lambda_1, ..., lambda_n <= 0\
A in S^n "is NSD if" x^T A x <= 0, forall x in RR^n 
$
- Negative Definite:\
$
lambda_1, ..., lambda_n < 0\
A in S^n "is ND if" x^T A x < 0, forall x in RR^n 
$
- Sign Indefinite
$
lambda_1, ..., lambda_n in RR\
$

*Singular Value Decomposition:*\
$
A = U Sigma V^T\
u_i = 1/sigma_i A v_i #h(4em)
v^T_i = 1/sigma_i u^T_i A\
A = mat(
  #line(angle: 90deg, length: 1em),
  #line(angle: 90deg, length: 1em),
  dots,
  #line(angle: 90deg, length: 1em);;
  u_1, u_2, dots , u_n;
  #line(angle: 90deg, length: 1em),
  #line(angle: 90deg, length: 1em),
  dots,
  #line(angle: 90deg, length: 1em);
)
mat(
  sigma_1, 0, dots, 0;
  0, sigma_2, dots, 0;
  dots.v, dots.v, dots.down, 0;
  0, 0, dots, sigma_n
)
mat(
  #line(length: 1em) v_1^T #line(length: 1em);;
  #line(length: 1em) v_2^T #line(length: 1em);;
  dots;
  #line(length: 1em) v_m^T #line(length: 1em)
)
$
Frobenius Norm:
$
norm(A)_F = norm(V e c(A))_2 = sqrt(sum_(i = 1)^m sum_(j = 1)^n a_(i j)^2) #h(3em) "where" a_(i j) "is the" i j^("th") "element of" A
$
$
e_k = frac(norm(A - A_K)_F^2,norm(A)_F^2)
= (sigma^2_(k+1) + dots + sigma_r^2)/(sigma^2_1 + dots + sigma^2_r)
$

*Solving PCA*\
To solve PCA, we first have to center the data. This means that we subtract the row entry by the mean of the row:
$
x^(\(1\)) = mat(2; 2) #h(1em)
x^(\(2\)) = mat(3; 3) #h(1em)
x^(\(3\)) = mat(4; 4) #h(1em)
x^(\(4\)) = mat(5; 5) #h(1em)\
X = mat(
  2, 3, 4, 5;
  2, 3, 4, 5
)
$
The centralize matrix $accent(X, -)$ is given as:
$
accent(X, -) = mat(
  x_(1, 1) - mu_1, x_(1, 2) - mu_1, dots, x_(1, n) - mu_1;
  dots.v, dots.v, dots.v, dots.v;
  x_(n, 1) - mu_n, x_(n, 2) - mu_n, dots, x_(n, n) - mu_n;
)
$
This means:
$
accent(X, -) = mat(
  -1.5, -0.5, 0.5, 1.5;
  -1.5, -0.5, 0.5, 1.5
)
$
We then find the SVD of the matrix:
$
accent(X, -) accent(X, -)^T &=
mat(
  -1.5, -0.5, 0.5, 1.5;
  -1.5, -0.5, 0.5, 1.5
)
mat(
  -1.5&, -1.5&; -0.5, -0.5; 0.5, 0.5; 1.5, 1.5;
)\
&= mat(
  5, 5;
  5, 5)
$$
det(mat(5 - lambda, 5; 5, 5 - lambda)) = 0\
lambda_1 = -10; space lambda_2 = 0\
arrow(lambda_1) = mat(1/sqrt(2); 1/sqrt(2)); #h(1em)
arrow(lambda_2) = mat(-1; 1)
$
We know that the first principal component is the eigenvector corresponding to $sigma_1^2$\. This eigenvector points in the direction of the most variances so that the residual of the projection is minimized.
$
Z &= mat(1/sqrt(2); 1/sqrt(2))^T
mat(
  -1.5&, -1.5&; -0.5, -0.5; 0.5, 0.5; 1.5, 1.5;
)\
&= mat(-3/sqrt(2), -1/sqrt(2), 1/sqrt(2), 3/sqrt(2))
$

*Perturbation:*\
$
Epsilon = {Delta x = A^+ Delta y bar norm(Delta y) <= 1}
$


*Affine Sets:*
$
alpha_1 x_1 + alpha_2 x_2 + dots + alpha_n x_n in S\
alpha_1 + alpha_2 + ... + alpha_n = 1\
$
Solving
$
V = P - x_0
$$
V &=& &{v in RR^3 bar  (x_1 - x_1^(\(0\))) + (2x_2 - x_2^(\(0\))) + (3x_3 - x_3^(\(0\))) = 5}&\
&=& &{v in RR^3 bar  x_1 + 2x_2 + 3x_3 = 5 + (x_1^(\(0\)) + x_2^(\(0\)) + x_3^(\(0\)))}&
$
Find when $5 + (x_1^(\(0\)) + x_2^(\(0\)) + x_3^(\(0\))) = 0 in P$


We call $||dot||$ in $R^n$ a _Norm_ if:
- $norm(x) >= 0, forall x in R^n and norm(x) = 0 arrow.r.l x = 0$
- $norm(x+y) <= norm(x) + norm(y),  forall x,y in R^n$
- $norm(a x) = a dot norm(x),  forall a in R and x in R^n$
*Example*
- $L_1$ Norm: $||x||_1 = |x_1| + ... + |x_n|$
- $L_2$ Norm: $||x||_2 = sqrt(x_1^2 + ... + x_n^2)$
- $L_infinity$ Norm: $||x||_infinity max{|x_1|, ..., |x_n|}$
- $L_p$ Norm:  $1 <= p < infinity, ||x||_ p = (abs(x_1) + |x_2|)$, is a norm if p >= 1
- $L_0$: $display(lim_(p->0) (abs(x_1)^p + ... + abs(x_n)^p)^(1/p))$ = $abs(x)$ = number of non-zero elements of x, not a norm

Cauchy Schwarz: $norm(x y) <= norm(x) dot norm(y)$

Projection:
$
x^* = Pi_S (x) = alpha^* dot v = (<x, v>)/norm(v)^2 dot v
$

Taylor Series: #h(2em)
$f(x) = f(x_0) + nabla f(x_0)^T (x - x_0) + epsilon(x)$, where $epsilon(x)$ is the error term.

*Fundamental Theorem of Linear Algebra:*
- $N(A) perp R(A^T)$
- $N(A) xor R(A^T) = RR^n$
- $forall h in RR^n, exists x in N(A), exists w in R(A^T) : h = v + w$
- $dim(N(A)) + r a n k(A) = n$

Solution Space: #h(2em)
$S = accent(x, -) + N u l(A)$, where $accent(x, -)$ is an arbitrary solution to $A x = y$

*Theorems:*\
1. Rank(A) = \# of Linearly independent columns of A. This implies that $0 <= r a n k(A) <= min(m,n)$. If $r a n k(A) = 0$, then $A=0$.
2. *Mid-value theorem:* For each $x in RR^n$, there exist two vectors $u in RR^n$ and $v in RR^n$ on the segment from $x$ to $x_0$ such that
$
f(x) = f(x_0) + nabla f(v)(x - x_0)\
f(x) = f(x_0) + nabla f(x_0)^T (x - x_0) + 1/2(x - x_0) nabla^2f(v)(x - x_0)
$
3. B has rank k or less iff it is the sum of k rank-1 matrices
#align(center)[#rotate(90deg)[#image("Screenshot 2025-10-27 at 6.40.33\u{202f}PM.png", height: 50%)]]