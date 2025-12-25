== Standard Linear Program
For Linear Programs, our constraints must be an equality. To convert inequality constraints to equality constraints, we add a *Stack Variable* as an equalizer:
$
c_1 x <= d arrow.double.long c_1 x + overbrace(s, "stack") = d, quad
s >= 0
$
Additionally, all the variables used must be non-negative:
$
x_1, dots, x_2 >= 0
$
This means our constraints can take the form of:
$
A y = b
$
and we can find a unique solution if the matrix $A$ is linearly independent.
== Vertices of a Linear Program
If all the constraints of the Linear Program are affine, then there exist a solution vertex if the LP has a solution. Why this is the case is because any point in a polyhedron can be expressed as a convex combination of all vertices. This means that there is a vertex at least as small as any point on the polyhedron.

Consider a non-degenerate Linear Program with $v_1, dots, v_n$ as the vertices of the feasible set. Two vertices $v_i, v_j$ are adjacent if and only if there are $n-m-1$ zero entries in both vectors on the same dimension, where $n$ is the number of dimensions and $m$ is the number of constraints.

== The Simplex Algorithm
*Simplex* is the most commonly used algorithm for solving Linear Program by utilizing the concept of adjacent vertices. It does this by:
1. Find an arbitrary vertex $y$
2. Find adjacent vertices of $y$
3. If $space exists tilde(y) space s.t. space  a_0^T tilde(y) < a_0^T y$, go to $tilde(y)$
4. repeat from step two on $tilde(y)$

== Epigraph Formulation
When the function is does not fit the linear model, we cen use an *Epigraph* to formulate it into such:
$
min f(x) space  s.t. space x in S quad arrow.double.long 
min t space  s.t. space x in S, space f(x) <= t
$

