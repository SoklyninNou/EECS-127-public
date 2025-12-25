=== Generalization of Projection
Let assume $S$ is a d-dimension subspace with basis: $x^(\(0\)), x^(\(1\)), dots, x^(\(d\))$\
Let $x^*$ be the project of $x$ onto $S$\
This means $x^* in S$, which implies $x^* = display(sum_(i=0)^d)alpha_i x_i$ ($exists$ Linear Combination)\
From this projection, we know
$
<x - x^*,y> = 0, forall y in S
$
Let $y$ be a basis of $S$, $y = x^(\(j\))$. $y$ is now a linear combination of the basis vectors:\
$
<x - display(sum_(i=0)^d)alpha_i x_i, x^(\(j\))> = 0\
<display(sum_(i=0)^d)alpha_i x_i, x^(\(j\))> = <x, x^(\(j\))>\
$
Because $x^(\(j\))$ can be written as a linear combinations of the basis of $S$:
$
display(sum_(i=0)^d)alpha_i <x^(\(i\)), x^(\(j\))> = <x, x^(\(j\))>
$
Expanding this will give d equations with d unknowns\
$
alpha_1<x^(\(1\)), x^(\(1\))> + ... + alpha_d<x^(\(1\)), x^(\(d\))> = <x, x^(\(1\))>\
...\
alpha_1<x^(\(d\)), x^(\(1\))> + ... + alpha_d<x^(\(d\)), x^(\(d\))> = <x, x^(\(j\))>
$
If {$x^(\(1\)), dots, x^(\(d\))$} are chosen to be orthonormal with each other, then the dot product of:
$
<x^(\(i\)), x^(\(j\))> = 0,  i eq.not j
$

== Hyperplanes & Half-Spaces

=== Hyperplanes
A *Hyper Plane* is an n-dimensional affine set
$
H = {z in RR^n bar a^T z = b, "where" a, b in RR}
$
*Example:*\
In $RR^3$ a hyperplane is a 2-dimensional plane with basis $z^(\(1\)), z^(\(2\)) in H$\
Using the definition, we can write this as $a^T z^(\(1\)) = b, a^T z^(\(2\)) = b arrow.double a^T (z^(\(1\)) - z^(\(2\))) = 0$\
This means that $a perp (z^(\(1\)) - z^(\(2\)))$, we call $a$ the normal vector

=== Half-Spaces
A *Half-Space* is a space that occupy the space outside the plane. We define the two spaces as $H_+ "and" H_-$:
$
H_+ = {x bar a^T x >= b}\
H_- = {x bar a^T x <= b}
$
This means that $H_+$ occupies the space that the normal vector points towards while $H_-$ occupies the space that the normal vector points away from.

== Gradients
A gradient is defined as the partial derivative of the each dimension with the corresponding variable:
$
nabla f(x) = vec(frac(delta f(x_1), delta x_1), frac(delta f(x_2), delta x_2), frac(delta f(x_3), delta x_3))
$
Two important notions in convex optimization:\
=== Linear functions
A *Linear Function* takes the form of $f: RR^n arrow.long RR$\
$
f(alpha_1 x_1 + alpha_2 x_2) = alpha_1 f(x_1) + alpha_2 f(x_2)
$

=== Affine Function
An *Affine Function* takes the form of $f: RR^n arrow.long RR, " if" f(x)-f(0)$\
$
exists a in RR^n space \& space b in RR bar f(x) = a^T x = b, " where" b = f(0)
$
*NOTE:* If $f(x) = a^T x = b$, then $nabla f(x) = a$

=== Chain Rule for Gradients
Consider a functions $phi(x) = f(g(x))$, where:
$
f: RR^m arrow.long RR\
g: RR^n arrow.long RR^m
$
We can use this composition to perform a change in coordinate.\
*Example:*
$
nabla f(g(x)) = nabla f(z) dot nabla g(x), " where" z = g
$

== Taylor Series
Given $f(x): RR^n arrow.long RR$ and is differentiable at $x_0 in RR^n$, we can approximate the function by an affine function in a neighborhood of $x_0$.
$
f(x) = f(x_0) + nabla f(x_0)^T (x - x_0) + epsilon(x)
$
where $epsilon(x)$ is the error term.\
*Theorem:* If $x^*$ is a local minimum of $min(f(x))$, where $f(x)$ is differentiable, then nabla $nabla f(x^*) = 0$\
*NOTE:* This the same concept as calculus optimization, where the minimum of $f(x)$ is at $f'(x) = 0$.

