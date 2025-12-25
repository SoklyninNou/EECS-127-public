= Properties of Convexity

A convex function is not just a unique that allows us to simplify optimization, it is also easier to work with because the summation of convex functions $f_1, f_2$ is still a convex function. There are other operations that preserves convexity, such as the *Affine Transformation*.

An *Affine Transformation* is a geometric transformation that preserves straight lines, parallel lines, and the ratios of distances between points, but does not necessarily preserve angles or lengths. The affine transformation on $f(x)$ is $g(x) = f(A x + b)$.\

Let $f: RR^n arrow RR, A in RR^(n times m), B in RR^n$, we can define $g(x) = f(A x + b)$, which is a convex function:
$
d o m a i n(g) = {x bar A x + b in f}
$
This is a convex set since $alpha x_1 + (1-alpha)x_2 in d o m a i n(g)$. Let $x = alpha x_1 + (1-alpha)x_2$
$
A(alpha x_1 + (1-alpha)x_2) + b &= alpha A x_1 + (1-alpha)A x_2 + b
$
Let $b = alpha b + (1-alpha)b$
$
alpha A x_1 + (1-alpha)A x_2 + alpha b + (1-alpha)b\
alpha underbrace((A x_1 + b), in f) + (1-alpha)underbrace((A x_2 + b), in f) in d o m a i n(g)\
$

This is also a convex function:
$
f(alpha x_1 + (1-alpha)x_2) &<= alpha f(x_1) + (1-alpha) f(x_2)\
g(alpha x_1 + (1-alpha)x_2) &= f(A(alpha x_1 + (1-alpha)x_2) + b)\
&<= alpha f(A x_1 + b) + (1-alpha) f(A x_2 + b)\
&= alpha g(x_1) + (1-alpha) g(x_2)\
g(alpha x_1 + (1-alpha)x_2) &<= alpha g(x_1) + (1-alpha) g(x_2) "Convex"
$

What we have been doing so far is the *Zeroth Order Convexity Condition*:
$
f(alpha x_1 + (1-alpha)x_2) &<= alpha f(x_1) + (1-alpha) f(x_2)
$
We also have *First Order Convexity Condition*, which require the function to be differentiable. Assume that the domain of the function $f$ is open, convex, and differentiable on the domain, we say $f$ is convex *if and only if*
$
forall x,y in d o m a i n(f), f(y) >= f(x) + nabla f(x)^T (y-x)
$
Notice that the right side is the first order Taylor approximation of f(y). This means intuitively that this condition holds if the tangent line on any point in the domain must be below the function.

*Example:*\
Let $f$ be a convex function, using the zeroth order condition:
$
f(alpha x_1 + (1-alpha)x_2) &<= alpha f(x_1) + (1-alpha) f(x_2)\
(f(alpha x_1 + (1-alpha)x_2)) / (1-alpha) &<=
(alpha f(x_1) + (1-alpha) f(x_2)) / (1-alpha)\
(f(alpha x_1 + (1-alpha)x_2)) / (1-alpha) &<=
f(x_2) -f(x_1)\
$
Let $beta = 1-alpha$ approach zero:
$
f(x_2) - f(x_1) &>=
lim_(beta arrow 0)(f(x_1 + beta (x_2-x_1)) - f(x_1)) / beta\
&= lim_(beta arrow 0) (cancel(f(x)) + nabla f(x)^T beta (y-x) + "higher order terms" - cancel(f(x)))/beta\
&= nabla f(x)^T beta (y-x) + cancel(lim_(beta arrow 0) ("higher order terms")/beta)\
&therefore f(x_2) - f(x_1) >= nabla f(x)^T beta (y-x)
$

An easier condition to use is the *Second Order Convexity Condition*. This condition states that a function $f$ is convex *if and only if* $forall x in d o m a i n(f), nabla^2 f >= 0$

In the case if $nabla^2 f > 0$, positive definite, then $f$ is strictly convex.
$
nabla^2 f > 0 arrow.long f "is strictly convex"
$
This is a one way implication, so $f$ being strictly convex does not imply that $nabla^2 f > 0$
