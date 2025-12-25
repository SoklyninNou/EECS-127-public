= Matrix Optimization
In normal PCA, we try to find a low-rank approximation of a data matrix $X in RR^(m times n)$ by solving the optimization problem:
$
min_(r a n k(B) <= k) norm(X - B)_F^2
$
where $B in RR^(m times n)$ is the low-rank approximation of $X$ and $k$ is the desired rank.
However, in matrix optimization, we can have more complex objectives and constraints. Let $gamma in RR^(m times n)$ be the low-rank approximation of $X$. We can formulate the matrix optimization problem as:
$
  min_(gamma in RR^(m times n)) quad &norm(X)_* + lambda norm(Z)_F\
  s.t quad &gamma = X + Z
$
where $norm(X)_*$ is the nuclear norm of $X$, which is the sum of its singular values, and $lambda > 0$ is a regularization parameter that controls the trade-off between the nuclear norm and the Frobenius norm of $Z$.

Assume we have $Y = mat(u^(\(1\)), dots, u^(\(p\))) = X + Z$ where $X = mat(u_b^(\(1\)), dots, u_b^(\(p\)))$ and $Z = mat(u_f^(\(1\)), dots, u_f^(\(p\)))$. The optimization problem can be rewritten as:
$
  min_(X , Z) norm(X)_* + lambda sum_i sum_j abs(Z_(i j))\
$

= Numerical Algorithms
To solve the matrix optimization problem, we can use numerical algorithms such as the Alternating Direction Method of Multipliers (ADMM) or Proximal Gradient Descent. These algorithms iteratively update the variables $X$ and $Z$ to minimize the objective function while satisfying the constraints.

Lets say we can generate the iteratively sequence $X^(k)$, where $k$ is finite, then in finite steps we can reach the optimal solution. A small issue with this is that we will rarely reach the exact optimal solution, but we can get very close to it. We define $epsilon > 0$ as the precision error tolerance, and we can stop the iterations when the change in the objective function is less than $epsilon$.

== Descent Algorithms
Descent algorithms are a class of optimization algorithms that iteratively update the variables in the direction of the negative gradient of the objective function. The basic idea is to take small steps in the direction that reduces the objective function value. The update rule for descent algorithms can be expressed as:
$
x_(k+1) = x_k - S Delta x_k
$
where $alpha > 0$ is the step size, and $Delta x_k$ is the change in x at iteration $k$. For an algortihm to be considered a descent algorithm, it must satisfy the following conditions:
1. The objective function $f(x)$ is differentiable.
2. $f(x_(k+1)) < f(x_k)$
*Theorem:*\
For alll small enough step size $alpha$
1. If $nabla f(x_k)^top Delta x_k < 0$ then $f(x_(k+1)) < f(x_k)$
2. If $nabla f(x_k)^top Delta x_k > 0$ then $f(x_(k+1)) > f(x_k)$
3. If $nabla f(x_k)^top Delta x_k = 0$ then $f(x_k)$ is the solution
If $nabla f(x_k) eq.not 0$, then we can choose $Delta x = - nabla f(x_k)$. this means that $nabla f(x_k) Delta x_k = - norm(nabla f(x_k))^2 < 0$

These concepts lead to the Gradient Descent Algorithm, which is a specific type of descent algorithm where the update direction is the negative gradient of the objective function. The algorithm can be summarized as follows:
$
  x_(k+1) = x_k - s_k nabla f(x_k) \
$
In gradient descent, we give
$
x_0 quad s.t. quad p = {x in RR^m bar f(x) <= f(x_0)} \
$
This is Lipschitz continuous gradient with constant $L > 0$ if $forall x, y in RR^m$ we have:
$
norm(nabla f(x) - nabla f(y)) <= L norm(x - y)
$
=== Newton's Method
Newton's Method is an optimization algorithm that uses second-order information (the Hessian matrix) to find the minimum of a function. The update rule for Newton's Method is given by:
$
x_(k+1) = x_k - s_k (nabla^2 f(x_k))^(-1) nabla f(x_k)
$
where $s_k$ is the step size at each iteration $k$. Newton's Method typically converges faster than gradient descent, especially for functions that are well-approximated by a quadratic function near the minimum.

*Lemma:*\
If $f$ is twice differentiable and $forall x in RR^m$ and P is compact, then $L$ exists.

*Theorem:*\
Consider the gradient algorithm with an arbitrary precision error $epsilon > 0$, if the step size $s_0, s_1, dots$ are chosen such that $s_k in (epsilon, 2/L)$, then $norm(nabla f(x_k))$ converges to $0$ as $k$ goes to infinity.


