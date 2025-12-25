= Eckart-Young-Mirsky Theorem:
- $b= A_K$ optimal solution of $min norm(A-B) "s.t" r a n k(B) <= k$
- Optimal solution is unique iff $sigma_k eq.not sigma_(k+1)$

*Proof:*\
Let rank(A) = r
$
A = sigma_1 u^(\(1\)) v^(\(1\))^T + dots + sigma_1 u^(\(r\)) v^(\(r\))^T\
A_K = sigma_1 u^(\(1\)) v^(\(1\))^T + dots + sigma_1 u^(\(k\)) v^(\(k\))^T
$
Where $k <= min(m,n) and k <= r$
$
norm(A - A_K)_F^2 = "trace" accent(A,~)accent(A,~)^T = sum_(i=k+1)^n sigma^2_i
$
This means that:
$
norm(A - B)_F^2 >= sum_(i = k+1)^r sigma^2_i, #h(1em) forall B: "rank" <= k
$
*Lemma 1:* Trace (X) = $sum$ eigenvalues of X\
*Lemma 2:* Given $Y,Z in RR^(m times n) forall i,j >= 1,
      sigma_i(Y) + sigma_i(Z) >= sigma_(1+j-i)(Y+Z)$

From *Lemma 1*: 
$
norm(A -B)_F^2 &= "trace" C C^T - sum "eigenvalues of" C C^T \
&= sigma_1^2(C) + dots + sigma_(min(m,n))^2(C)\
&= (sigma_1 (C) + sigma_(k+1)(B))^2 + dots + (sigma_min(m,n) (C) + sigma_(k+1)(B))^2
$
Remember that $B$ is at most rank $k$. Therefore, the $(k+1)^"th"$ singular value is equal to zero.\
From *Lemma 2*: 
$
sigma_1 (C) + sigma_(k+1)(B) >= sigma_(k+1)^2 (A)\
sigma_k (C) + sigma_(min(m,n))(B) >= sigma_(min(m,n) + k)^2 (A)\
$
With these two Lemmas, we can conclude:
$
therefore norm(A - B)_F^2 >= sum_(i = k+1)^r sigma^2_i, #h(1em) forall B: "rank" <= k
$
This means that $A_K = sum_(i = k+1)^r sigma^2_i (A)$ is the optimal solution.

== Error of Optimal Solution
Let $e_k$ be the error of the approximation:
$
e_k &= frac(norm(A - A_K)_F^2,norm(A)_F^2)\
&= (sigma^2_(k+1) + dots + sigma_r^2)/(sigma^2_1 + dots + sigma^2_r)
$
*Example:*\
We have a grey scaled image, 256 possible values, of $266 times 400$ pixels.
This gives us a matrix $A$ of rank 266. If we set k to be 9, we can approximate the matrix with rank at most 9, which means you are multiplying by a $9 times 400$ matrix to get the original matrix. To know if this is a good approximation, can calculate the error.
$
e_k = frac(norm(A - A_K)_F^2,norm(A)_F^2) =
(sigma^2_(k+1) + dots + sigma_r^2)/(sigma^2_1 + dots + sigma^2_r)
$
We could plot the $sigma_i$ in terms of the error to find the best k for the approximation.\

== Principle Component Analysis (PCA)
*Principle Component Analysis* handles approximating the matrix without losing too much data.\

We can do this be creating a lower dimensional space then projecting the data points onto that space.
*Example:*
Consider data points:
$
x^(\(1\)), dots, x^(\(m\)) in RR^n
$
Where the average is
$
1/m (x^(\(1\)), dots, x^(\(m\))) = accent(x,~)
$
This givens us the centered data point:
$
accent(x,~)^(\(i\)) = x^(\(i\)) - accent(x,~), #h(1em) i = 1, dots, m
$
Find $Z$, which is the direction of maximum variance\
Define line:
$
L : {alpha z bar alpha in RR}\
$
This means:
$
alpha_i z "is the projection of" tilde(x)^(\(i\))\
alpha_i = (<tilde(x)^(\(i\)),z>) / norm(z) = z^T tilde(x)^(\(i\))\
norm(z) = 1, "normal vector"
$
Let $A = Z^T tilde(X)$
$
A A^T = Z^T tilde(X) tilde(X)^T Z, #h(1em)
"where" tilde(X) = mat(tilde(x)^(\(1\)), dots, tilde(x)^(\(m\)))
$
This is not an optimization problem:
$
max_z Z^T tilde(X) tilde(X)^T Z
$
Remember how:
$
norm(A)_2 &= max_(norm(w)_2 = 1) norm(A w)_2\
&= max_(norm(w)_2 = 1) sqrt(w^T A^T A w)\
&= sqrt(lambda_max (A^T A)) = sigma_1(A)
$
Which looks like our optimization.\
This means that the optimal objective for our optimization problem is: $sigma_1^2 (tilde(X)) = lambda_max (tilde(X))$ and the optimal solution is $U^(\(2\))$.
=== Solving PCA
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

== Deflated Data Matrix
$hat(X) = mat(hat(x)^(\(1\)), dots, hat(x)^(\(m\))) = (I_n - U^(\(1\)) U^(\(1\))^T)$
We now need to find the best direction for $hat(X)$
$
max_z Z^T hat(X) hat(X)^T Z
$
Using the concept before, the optimal objective is $sigma^2(hat(X)) = sigma^2(tilde(X))$, making the optimal solution $U^(\(2\))$
\
\
\
\
\