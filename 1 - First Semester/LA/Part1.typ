#import "@preview/lemmify:0.1.8": *
#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof,
  rules: thm-rules,
) = default-theorems("thm-group", lang: "en")
#show: thm-rules
#let lemma = lemma.with(numbering: none)

== Introduction
*Affine, Conic, and Convex Linear Combinations* $lambda_1 v_1 + ... + lambda_n v_n$ is:
- Affine if $sum_(i=1)^n lambda_i = 1$
- Conic if $forall j in [n], lambda_j>0$
- Convex if both affine and conic.
#figure(image("media/AffineConicConvex.png"))

*Notation* Example: $(i^2)^m_(i=1)$ constructs $(1, 4, ..., m^2)^top$.\
For matrices: $ A=[a_(i j)]^(m, n)_(i=1, j=1) $\
The Kronecker Delta, $delta_(i j)$ is defined as 1 if $i=j$ or 0 else.

*Dot Products* $v dot w = v^top w = chevron.l v,w chevron.r$
- $v^top w = w^top v$
- $(lambda v)^top w = lambda(v^top w)$
- $u^top (v+w) = u^top v + u^top w$ (left and right distributivity)
- $v^top v = 0 <==> v = 0$

*Euclidean Norm* $||v||_2 = sqrt(v^top v)$

*Unit Vector* $v/(||v||)$

*Cauchy-Schwarz Inequality* $|v^top w| <= ||v|| ||w||$, whereby equality holds iff a vector is a scalar multiple of the other.

*Cosine* $cos(alpha)=(v^top w)/(||v|| ||w||)$
*TODO: Add Figure 1.17?*

*Hyperplane through Origin* Let $d in RR^m, d eq.not 0$, then $H_d = { v in RR^m : v^top d = 0}$.
#figure(image("media/Hyperplane.png", height: 10em))

*Triangle Inequality* $||v+w|| <= ||v|| + ||w||$

*Span* Set of all linear combinations. If $v_(k+1)$ is a linear combination of the previous, then $"Span"(v_1, ..., v_k)="Span"(v_1, ..., v_k, v_(k+1))$.\
The span of $m$ linearly independent vectors is $RR^m$.\
Matrices: $C(A)={A x : x in RR^n}$ and the column space of a matrix is unchanged by adding or removing dependent columns.

== Linear Independence
Vectors are linearly dependent if:
- at least one of them is a linear combination of the others/previous, i.e.:
$
  exists k in [n], v_k=sum^n_(j=1,j eq.not k) lambda_j v_j
$
- 0 is a nontrivial linear combination of the vectors

The columns of a matrix $A$ are linearly independent iff $x=0$ is the only $x$ such that $A x = 0$.

A set $G$ is linearly dependent if there is a $v in G$ such that it is a linear combination of $G backslash {v}$.

== Matrices
If $forall i,j, a_(i j) = a_(j i)$ then $A$ is a symmetric matrix.
#figure(image("media/SymmetricMatrix.png", height: 8em))

A vector $b in RR^m$ is in $C(A) <==> exists x in RR^n, A x = b$.

*Rank-1 Matrices* $ "rank"(A) = 1 <==> "rank"(A^top) = 1 <==> exists v in RR^m, w in RR^n, A=[v_i w_j]^(m,n)_(i=1,j=1) $

*Linearity* $T(lambda_1 x_1 + lambda_2 x_2) = lambda_1 T(x_1) + lambda_2 T(x_2)$ or, split:
- $T(x+x') = T(x) + T(x')$, e.g., $A(x + x') = A x + A x'$
- $T(lambda x) = lambda T(x)$, e.g., $A(lambda x) = lambda A x$

Every matrix transformation is linear.

*Kernel and Nullspace* $ker(T)={x in RR^n : T(x) = 0}=N(A_T)$

*Image* $im(T)={T(x) : x in RR^n}=C(A_T)$

*Transpose* $(A B C)^top = C^top B^top A^top$

*Distributivity, Associativity* $A(B+C)=A B + A C$, $(A+B)C=A C + B C$ and $(A B)C=A(B C)$

*CR Decomposition* For a matrix $A$, we can decompose it into $A=C R'$, where $C$ contains the independent columns and $R'$ the multiples. E.g.,
$
  A=mat(
    2, 4, 6;
    3, 6, 9
  )=mat(2; 3)mat(1, 2, 3)
$
whereby $C$ has full column and $R'$ row rank.

*Function Types*
- Injective if for every $y in Y$, where is at most one $x in X$ with $f(x)=y$
- Surjective if for every $y in Y$, there is at least one $x in X$ with $f(x)=y$
- Bijective if both.
Wide matrices are not injective and tall matrices not surjective.

Thus, for a matrix $A in RR^(m times m)$:
$
  T_A "bijective" <==> exists B, B A = I <==> "Columns of" A "linearly independent"
$

*Invertibility*
$A "invertible" <==> exists B, B A = B A = I <==> A "full column rank"$

$(A^top)^(-1) = (A^(-1))^top$

$(A B)^(-1) = B^(-1) A^(-1)$

*Gauss Elimination* Produces an UT matrix. If a zero pivot is hit and row exchange is not possible, the algorithm fails and the columns are linearly dependent. One can run this on a right hand side matrix $B$ to solve for multiple $b$s.

*Invariance* Let $A in RR^(m times n), M in RR^(m times m)$ with $M$ invertible. Then:
- $A x = b$ and $M A x = M b$ have the same solutions $x$.
- $N(A) = N(M A)$
- $A$ linearly independent $<==>$ $M A$ linearly independent
- $R(A) = R(M A)$

*RREF* A matrix is in RREF is there is some natural number $r <= m$ and column indices $1 <= j_1 < j_2 < ... j_r <= n$ such that the following conditions hold:
- For every $i in [r]$, column $j_i$ of R is the standard unit vector $e_i$.
- All entries $r_(i j)$ below the staircase are zero.
We also have:
- A matrix R in $"RREF"(j_1, j_2, ..., j_r)$ has independent columns $j_1, j_2, ..., j_r$ and therefore rank $r$.
- If some $c_i eq.not 0$ for $i > r$, then $R x = c$ has no solutions.
- Uniqueness of RREF solution

=== Computing Inverses
- Converting $A$ to RREF with RHS $I$. $A^(-1)$ is the elimination matrix.

== Vector Spaces
#figure(image("media/VSAxioms.png"))
Every vector space $V$ contains exactly one zero vector. For every $v in V$, there is exactly one $-v$.

*Subspace Axioms* Given $v,w in U$:
- $v+w in U$
- $lambda v in U$ and thus $0 in U$
And thus we also have closure under linear combination.

*Fundamental Subspaces*
- $C(A)$, $R(A)$, $N(A)$

*Finitely Generated Vector Space* if there is a finite subset $G subset.eq V$ with $"Span"(G) = V$. If a $G subset.eq V$ has $"Span"(G)=V$, it forms a basis.

*Steinitz Exchange Lemma* Let $V$ be a finitely generated vector space, $F subset.eq V$ a finite set of linearly independent vectors, and $G subset.eq V$ a finite set of vectors with $"Span"(G)=V$. Then:
- $|F| <= |G|$
- There is a $E subset.eq G$, $|E| = |G| - |F|$ such that $"Span"(F union E) = V$

*Dimension* $dim(V) = |B|$, where $B$ is an arbitrary basis of the vector space.

*Isomorphism* All $m$-dimensional vector spaces are isomorphic.

*Dimensions* $dim(C(A))="rank"(A)=r=dim(R(A))$

#lemma(name: "4.35: Nullspace Isomorphism")[
  $dim(N(R))=n-r$. The linearly dependent columns obtained from RREF form a basis of the nullspace. There is an isomorphism from $N(N) -> RR^(n-r)$.
]
#figure(image("media/NullspaceBasis.png"))

*Solution Space* The set $"Sol"(A, b) = {x in RR^n : A x = b} subset.eq RR^n$ is the solution space of $A x = b$. If $b eq.not 0$, this is not a subspace as the zero vector is not included.

This can be remedied by defining $"Sol"(A, b)={s + x : x in N(A)}$ to get an affine subspace.

$dim("Sol"(A, b)) = dim(N(A))$

*Affine Subspace* Contains points whose coordinates are absolute as opposed to defined from the origin. Points do not add or scale.
