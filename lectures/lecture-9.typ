== Applications of Singular Value Decomposition
Lets assume we have a matrix representing an image. This matrix consists of values representing pixel values [0, 255]. We can call $A in RR^(n times n)$, the first picture, and represent it as:
$
A = U Sigma V^T &= [U^(\(1\)) #h(1em) U^(\(2\)) #h(1em) dots #h(1em) U^(\(n\))] space Sigma space [V^(\(1\)) #h(1em) V^(\(2\)) #h(1em) dots #h(1em) V^(\(n\))]\
&= sigma_1 U^(\(1\)) V^(\(1\))^T + dots + sigma_n U^(\(n\)) V^(\(n\))^T
$
We can then approximate the matrix:
$
A approx sigma_1 U^(\(1\)) V^(\(1\))^T
$
This will reduce the size to $1 + n + n = 2n + 1 < n^2$, where $n^2$ is the size of the original image.\
This demonstrates that we can approximate a matrix $A approx sqrt(sigma_1) U^(\(1\)) sqrt(sigma_1) V^(\(1\))^T$
We can represent $sqrt(sigma_1) U^(\(1\)) = x "and" y =sqrt(sigma_1) V^(\(1\))^T$:
$
A approx x y^T
$
Now our goal is to find $x "and" y$ that best approximates A. This is then a *Least Squares* problem:\
$
min_(x,y in RR) norm(A - x y^T)
$

=== Matrix Norms
The problem above requires taking the norm of a $m times n$ matrix, which will output a scalar $in RR$ with 3 properties:
1. $norm(x) >= 0 forall x in RR^(m times n), norm(x) = 0 arrow.r.l.long x = 0$
2. $norm(alpha x) = abs(alpha)norm(x), forall alpha in RR, forall x in RR^(m times n)$
3. $norm(x + y) <= norm(x) + norm(y), forall x,y in RR^(m times n)$
*Frobenius Norm:* // New favorite word
$
norm(A)_F = norm(V e c(A))_2 = sqrt(sum_(i = 1)^m sum_(j = 1)^n a_(i j)^2) #h(3em) "where" a_(i j) "is the" i j^("th") "element of" A
$
*LP-Induced Norm:*
$
norm(A)_P = max_(z eq.not 0 in RR^n) frac(norm(A z)_P, norm(z)_P)
$
*Theorem:*\
Given an $m times n$ matrix, $norm(A)_2 = sigma_1(A) = sqrt(lambda_max (A A^T))$.

=== Solving the Optimization
Using the norms we discussed, we can use the *Frobenius Norm* in place of the L-2 norm since they will give the same solution even though they might give different arguments.\

*Theorem:*\
A non-zero matrix $B in RR^(m times n)$ is rank 1 if $exists x in RR^m, exists y in RR^n : B = x y^T$\

Lets assume that $B$ is a rank 1 matrix:
$
B = [B^(\(1\)) #h(1em) B^(\(2\)) #h(1em) dots #h(1em) B^(\(n\))]
$
with basis $x in RR^m = s p a n (B^(\(1\)), B^(\(2\)), dots, B^(\(n\)))$. This means that:
$
exists y_i : B^(\(i\)) = y_i x, " where" B^(\(i\)) "is the" i^"th" "basis vector"\
therefore B = [y_1 x#h(1em) dots #h(1em) y_n x] = x y^T
$
With this, we can change the objective function to:
$
min_(B in RR^(m times n)) norm(A - B)
$
This is called *Low Rank Optimization*.\

*Example:* The Netflix Problem\
#par(hanging-indent: 2em, first-line-indent: 4em)[
Lets assume we have a matrix representing a user's rating of a movie. We will then have an extremely large matrix where the $i j^"th"$ index represents user's $i$ rating for movie $j$. If we say that Netflix has 1 billion users and 50,000 movies, a naive matrix setup will be $10^8 times 5 dot 10^4$. But, we can approximate this using low rank matrix optimization, giving us a $10^8 plus 5 dot 10^4$ matrix. Even though this greatly decrease the data size, it is unrealistic if we make $r a n k(B) <= 1$, which says only one person's rating matters. So, we make  $r a n k(B) <= k$, where k is very small, saying that k people's rating are important.
]
*Theorem:*\
$B in RR^(m times n) "satisfies" R a n k (B) <= k$ iff
 1. $exists C in RR^(m times k), exists D in RR^(n times k) : B = C D^T$
 2. $exists C^(\(1\)), dots, C^(\(k\)) in RR^m, exists d^(\(1\)), dots, d^(\(k\)) in RR^n : B = C^(\(1\)) D^(\(1\))^T + dots + C^(\(n\)) d^(\(n\))^T$
$C$ and $D$ are rank 1 matrixes, $m times 1$ and $n times 1$, respectively. Adding k of them together will result in a matrix of rank at most k. This means that each column $C^(\(i\)) d^(\(i\))^T$ are not necessarily linearly independent. Additionally, approximating $A$ as a rank-k matrix, we will have $k(m + n)$ amount of data since $C^(\(i\)) D^(\(i\))^T$ has $(m + n)$.


