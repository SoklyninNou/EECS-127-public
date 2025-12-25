= Cases of Solutions
When does the optimization solution have no function?
- When the solution is not a number such as $plus.minus infinity$.

This leads to the idea of feasible and infeasible solutions. A solution is infeasible there is no $x$ that fits into the constrain(s). Sometimes the objective value could be $+infinity$ (infeasible), $-infinity$, or finite.

= Types of Problems
We say that the optimization problem is tractable or not tractable.
- *Tractable:* There is an algorithm to solve the problem efficiently.
- *Not-Tractable:* There is no algorithm to solve the problem efficiently.

*Example*
#linebreak()
Maximize the company's profit where we need to make n decisions.
#linebreak()
What we do is we map each decision $n$ to $+1$ if it is a $"yes"$ decision and $-1$ if it is a $"no"$ decision.
*Optimization:* max $f_0 (x)$ or min $-f_0 (x)$
#linebreak()
*Such that:* $x_i = {-1,+1}$
#linebreak()
Since there is 2 choices for each decision, this makes the total sample space $2^n$.
#linebreak()
This means that the problem is intractable since it must be solved in exponential time.
#linebreak()
On the other hand, if the problem is solvable in polynomial time, the problem is tractable.

= Linear Algebra Review
One notion we see repeatedly is the notion of _Space_. A _Space_ is a collection os a certain type
#linebreak()
*Example:* We say $R^n$ is a collection of vectors with n elements.
#linebreak()
In this class we will be focusing on the $R^n$ space

== Subspace
We also have the notion of _Subspace_. A non-empty set $V$ is called a subspace of $R^n$ if for every x,y in $V$, $a x+ b y$ is also in $V$. Additionally, the origin vector, a vector containing all zeroes, must also be in the subspace.

== Span
The _Span_ of vector m = $v_1, v_2, v_3, ...$ is the set of vectors forms from the linear combination of all the components of $m$.

== Basis
Consider a subspace $V$, a set of vectors $v_1, v_2, v_3, ...$ in v is the basis of $V$ is if all the vectors are linearly independent from each other. $V_i$ and $V_j$ are linear independent if the only coefficients between $v_i$ and $v_j$ are zeroes. In other words, those vectors are orthogonal to each other.

Given a vector, the set of basis is not unique but they have the number of basis vectors is equal to the dimension of the vector

*Example*
#linebreak()
$v_1 = [1, 1, 1], v_2 = [1, 2, 3], v_3 = [-1, 0, 1]$
#linebreak()
We define $V$ = Span($v_1, v_2, v_3$)
#linebreak()
We can see that: $-2x_1 + 1x_2 - 1x_3 = 0$
#linebreak()
Because $exists$ non-zero coefficients that results the zero vector, the vectors are *linearly dependent*.\
If $b_1 x_1 + b_2 x_2 = 0$ and $b_1 = b_2 = 0$, the vectors are *linearly independent*.

== Affine Set
 S is an an _Affine set_ iff for every pair of points $x,y in S$, the infinite line containing $x "and" y$ is a subset of $S$. More formally, S is an _Affine set_ if every affine combination of its points $x_1, ..., x_n in S$. An affine combination takes the form of:
 $
 alpha_1 x_1 + alpha_2 x_2 + ... + alpha_n x_n in S
 $
 such that:
 $
 alpha_1 + alpha_2 + ... + alpha_n = 1
 $

*Example*
#linebreak()
For a vector $v in V$ subspace, if adding $x_0$ to $v$ results in a shifted version of the vector then $S$ is an _Affine Set_. In other words

== Norm of Vectors
We call $||dot||$ in $R^n$ a _Norm_ if:
- $norm(x) >= 0, forall x in R^n and norm(x) = 0 arrow.r.l x = 0$
- $norm(x+y) <= norm(x) + norm(y),  forall x,y in R^n$
- $norm(a x) = a dot norm(x),  forall a in R and x in R^n$
*Example*
#linebreak()
- $L_1$ Norm: $||x||_1 = |x_1| + ... + |x_n|$
- $L_2$ Norm: $||x||_2 = sqrt(x_1^2 + ... + x_n^2)$
- $L_infinity$ Norm: $||x||_infinity max{|x_1|, ..., |x_n|}$
- $L_p$ Norm:  $1 <= p < infinity, ||x||_ p = (abs(x_1) + |x_2|)$, is a norm if p >= 1
- $L_0$: $display(lim_(p->0) (abs(x_1)^p + ... + abs(x_n)^p)^(1/p))$ = $abs(x)$ = number of non-zero elements of x, not a norm

== Inner Product
The inner product on a space $X$ can be used to find the relationship between two vectors/data. For example, when analyzing two articles, we can turn them into n-dimensional vectors. We could then find the inner product of the two articles to see  similarities with larger inner products indicating more similarities. They is because we are taking the cosine of the angle between the vectors.

=== Properties of Inner Product
#linebreak()
$
&< x, y>& &=& &x^T y = x_1y_1 + x_2y_2 + ... + x_n y_n&\
&< x, x>&    &>=&  &0, forall x,y in X&\
&< x, x>&     &=&   &0 arrow.l.r.long x=0&\
&< x, y, z>&   &=&   &< x, y> = < y, z> forall x,y,z in X&\
&< a x, y>&   &=&   &a < x, y>, forall x,y in X and a in R&\
&< x, y>&    &=&   &< y, x>, forall x,y in X&\
&<x, y>& &=& &0 arrow.l.r.long x perp y&
$
This means that the vectors are mutually orthogonal/linearly independent.
We call a set of vectors *orthonormal* if:\
$<x, y> = 0$ if $x eq.not y $ and $<x, y> = 1$ if $x = y$\
if $x perp y$, then $norm(x+y)^2 = norm(x)^2 + norm(y)^2$

// Blank