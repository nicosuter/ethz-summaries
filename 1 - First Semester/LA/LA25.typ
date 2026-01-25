#import "@preview/boxed-sheet:0.1.0": *
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

#set text(font: (
  "Times New Roman",
))

#let homepage = link("nicosuter.me")[nicosuter.me]
#let author = link("mailto:nicsuter@ethz.ch")[Nico Suter \<nicsuter\@ethz.ch\>]
#let title = "Linear Algebra Cheat Sheet"

#show: cheatsheet.with(
  title: title,
  homepage: homepage,
  authors: author,
  write-title: false,
  title-align: left,
  title-number: true,
  title-delta: 2pt,
  scaling-size: true,
  font-size: 5.5pt,
  line-skip: 5.5pt,
  x-margin: 10pt,
  y-margin: 30pt,
  num-columns: 4,
  column-gutter: 2pt,
  numbered-units: false,
)

#set math.mat(delim: "[")

= Part 1
#include "Part1.typ"
#colbreak()

= Part 2
== Orthogonality
*Subspaces* $V,W$ are orthogonal $<==>$ all their bases $v_i,w_i$ are orthogonal. Similarly, if $V,W$ are two orthogonal subspaces of $RR^n$, the set of their bases is linearly independent and $V inter W = {0}, dim(V+W)=dim(V)+dim(W) <= n$.

Per Theorem 5.1.7, we have the following equivalences:

- $W = V^bot$
- $dim(V) + dim(W) = n$
- Every $u in RR^n$ can be written as $u=v+w, v in V, w in W$

*Orthogonal Complement* $V^bot = {w in RR^n : w^top v = 0 forall v in V}$. We have $(V^bot)^bot = V$.

- $N(A) = C(A^top)^bot = R(A)^bot$
- $N(A) = C(A^top)^bot$ and $C(A^top) = N(A)^bot$
- $N(A) = N(A^top A)$ and $C(A^top) = C(A^top A)$


== Projections
A projection onto a subspace $S$ is the $arg min_(p in S) ||b-p||$, i.e., point closest to the original vector.

*Projection onto a a line $lambda a$* Well-defined; $"proj"_S(b) = (a a^top)/(a^top a)b$

*Projection onto $C(A)$* Well-defined; $"proj"_S(b) = A hat(x)$ where $A^top A hat(x) = A^top b$

Alternatively, one could calculate the projection matrix $P = A(A^top A)^(-1) A^top$ and use $"proj"_S(b) = P b$

*Invertibility of $A^top A$* $"invertible" <==> A "has linearly independent columns"$

== Set of all Solutions to a System
#lemma(name: "6.2.1")[ Let $x,y in C(A^top)$
  $A x = A y <==> x=y$
]

If ${x in RR^n : A x = b} eq.not emptyset$, then ${x in RR^n : A x = b} = x_1 + N(A), x_1 in R(A)$, where $x_1$ is unique such that $A x_1 = b$. As a corollary, if this set is not empty, there is a unique $x_1 in C(A^top A)$ such that $A x_1 = b$.

*Unsatisfiability Proof* ${x in RR^n : A x = b} = emptyset <==> {z in RR^m : A^top z = 0, b^top z =1} eq.not emptyset$ -- i.e., find a suitable $z$ to satisfy this.


== Orthonormalization
Vectors are orthonormal if $forall i,j in [n], q_i^top q_j = 0$ unless $i=j$ and have norm 1.

Orthogonal matrices preserve norm and inner product. i.e., $||Q x|| = ||x||, (Q x)^top (Q y) = x^top y$

If the columns of $Q$ are an orthonormal basis for $S$, then the projection matrix onto $S$ is given by $Q Q^top$ and the least squares solution to $Q x = b$ by $hat(x) = Q^top b$.

*GSO* Returns an orthonormal basis of the input vectors.
- $q_1 = a_1/(|| a_1 ||)$
- $ q_k' = a_k - sum_(i=1)^(k-1) (a_k^top q_i)q_i $ and $q_k = q_k'/(|| q_k' ||)$

*QR Decomposition* We can decompose $A = Q R$ such that $Q$ is the output of GSO and $R$ is an upper triangular matrix given by $R=Q^top A$.\
Note that $R$ is invertible and that we have $Q Q^top A = A$.

We can use QRD for projections and least squares:
- $"proj"_(C(A))(b) = Q Q^top b$
- The least squares solution for $A x = b$, $hat(x)$, can be calculated using: $R hat(x) = Q^top b$.

== Pseudoinverses
*Full Column Rank* $A^dagger = (A^top A)^(-1) A^top$; $A^dagger$ is a left inverse such that $A^dagger A = I$.

*Full Row Rank* $A^dagger = A^top(A A^top)^(-1)$; $A^dagger$ is a right inverse such that $A A^dagger = I$

*General* $A^dagger = R^dagger C^dagger$ or $A^dagger = R^top(C^top A R^top)^(-1) C^top$ (same applies to any full-row, full-col decomposition per P6.4.9)


*Equalities*
- $A A^dagger A = A$ and $A^dagger A A^dagger = A^dagger$ and $(A^top)^dagger=(A^dagger)^top$
- If $A A^dagger$ is symmetric, it is the projection matrix onto $C(A)$
- If $A^dagger A$ is symmetric, it is the projection matrix onto $C(A^top)=R(A)$


== Determinant
*Do not forget multilinearity! See examples.*
Defined for square matrices. For finding the inverse of a $2 times 2$ matrix: $A^(-1) = 1/det(A) mat(d, -c; -b, a)$.

*Axiomatically:*
1. Linear in each column (multilinear)
2. $det(I)=1$
3. $det(A)=0$ if $A$ has two identical columns

$det(A W) = det(A)det(W)$

$A "invertible" <==> det(A) eq.not 0$

*Sign*
$
  "sgn"(sigma) = cases(
    1 "if " |(i,j)| : i < j and sigma(i) > sigma(j) "even",
    -1 "if odd"
  )
$
$"sgn"$ is multiplicative: $"sgn"(sigma compose gamma)="sgn"(sigma)"sgn"(gamma)$

$forall n >= 2$, exactly half of permutations have sign 1, other half -1.

And:
- $det(A^top)=det(A)$
- $det(A B) = det(A)det(B)$
- $det(A^(-1))=1/det(A)$
- When swapping two elements of $A$ to get $A'$, then $det(A')=-det(A)$

*Determinant of:*
- $2 times 2$: $a d - b c$
- $3 times 3$: $a e i + b f g + c d h - c e g - b d i - a f h$
- Triangular Matrices: $det(T)=product^n_(k=1) T_(k k)$
- Permutation Matrices: $det(P)="sgn"(sigma)="sgn"(P)$
- Orthogonal Matrices: $det(Q) in {1, -1}$

*Inverse*
$A^(-1) = 1/det(A) C^top$ or $A C^top = det(A)I$ (inefficient)

*Cramer's Rule* Given $A in RR^(n times n), det(A) eq.not 0$, the $j$th row of the solution is given by: $x_j = det(cal(B))/det(A)$. $cal(B)$ is the matrix obtained by replacing the $j$th column of $A$ with the vector $b$. (inefficient)

=== Laplace Expansion
$ det(A) = (-1)^(i+j) A_(i,j) M_(i,j) $

In other words, for every entry in the first row:
- Eliminate its row, column and calculate its determinant
- Multiply this determinant by the eliminated entry and $(-1)^(1+j)$
Then sum.

== Complex numbered-units
- $|a + b i| = sqrt(a^2 + b^2)$ (Modulus)
- $overline(a + b i)= a - b i$ (Conjugate)
- $1/z = overline(z)/(|z|^2)$
- $e^(i theta) = cos(theta) + i sin(theta)$, i.e., $z = r e^(i theta)$, where $r$ is the modulus of $z$.

*Fundamental Theorem of Algebra* $CC$ is algebraically closed, i.e., a polynomial of degree $n$ has $n$ roots in $CC$.

The number of times a root is repeated is its *algebraic multiplicity*. Note that *geometric multiplicity* is $dim(N(A - lambda I))$.

== Eigenvalues and Eigenvectors
Given an $A in RR^(n times n)$:
- $A v = lambda v$ (or $(A-lambda I)v = 0$), where $v$ is the eigenvector and $lambda$ the eigenvalue.
- $lambda$ is a real eigenvalue of an $A <==> det(A - lambda I)=0$. A nonzero vector $v$ is an eigenvector associated with $lambda <==> v in N(A - lambda I)$
- $det(A - lambda I)$ is a polynomial of degree $n$ and the coefficient of the $lambda^n$ term is $(-1)^n$
- Every square matrix has an eigenvalue
- If $lambda$ is an EV of $A$, $A^k$ is an EV of $A^k$ -- i.e., $1/lambda$ and $v$ are an EV pair for $A^(-1)$.
- If $A$ has $n$ distinct eigenvalues, the EVs are linearly independent and one can build a basis of $RR^n$
- The eigenvalues of $A=A^top$, but not eigenvectors.

If $(lambda, v)$ is an eigenvalue pair, $(overline(lambda), overline(v))$ is an eigenvalue pair.

Gaussian elimination does not preserve EVs.

*EVs of:*
- *Triangular Matrices* Eigenvalues: Entries in the diagonal
- *Diagonal Matrices* Eigenvalues: Entries in the diagonal. Eigenvectors: Basis vectors $e_1, ..., e_n$.

*Trace* $"Tr"(A) = sum^n_(i=1) A_(i i)$. The trace is equal to the sum of the eigenvalues -- $"Tr"(A)= sum^n_(i=1) lambda_i$.

Further, $"Tr"(A B) = "Tr"(B A)$ and $"Tr"(A B C) = "Tr"(B C A) = "Tr"(C A B)$

*Eigenvalues of Orthogonal Matrices* If $lambda$ is an eigenvalue of $Q$, then $|lambda| = 1$

*Characteristic Polynomial* $det(z I - A)$

== Symmetric Matrices and Spectral Theorem
$A= V Lambda V^(-1)$, where $Lambda$ is a diagonal matrix with
- $Lambda_(i i)$ equal to the $i$th eigenvalue $lambda_i$ and 0 otherwise
- $V$ having the eigenvectors as columns

*Diagonalizability* Whether or not there is an invertible $V$ such that $V^(-1) A V = Lambda$.

A matrix is orthogonally diagonalizable $<==>$ $D^top = D$ (symmetric). Proof: $D = V Lambda V^(-1) ==> D = V Lambda V^top ==> D^top = (V Lambda V^top)^top = V Lambda^top V^top = V Lambda V "[" Lambda "diagonal]" = D$

*Eigenvalues of Projections* If $P$ is a projection matrix on $U subset.eq RR^n$, then $P$ has eigenvalues 0 and 1, and a complete set of real eigenvectors.

*Similar Matrices* have the same eigenvalues and trace. $A$ has a complete set of eigenvectors $<==> B$ does.

*Complete set of Eigenvectors* If an $A in RR^(n times n)$ has enough eigenvectors to build a basis of $RR^n$. A matrix has a complete set of *real* eigenvectors if all its eigenvalues are real and the geometric multiplicities = algebraic multiplicities for all eigenvalues.

== Spectral Theorem
Any symmetric matrix $A in RR^(n times n)$ has $n$ real eigenvalues and an orthonormal basis of $RR^n$ consisting of its eigenvectors.

As a result, for any symmetric matrix, there exists an orthogonal matrix $V$ (whose columns are the EVs of $A$) such that $A = V Lambda V^top$.

The rank of a real symmetric matrix is the number of nonzero eigenvalues, counting repetitions.

Given an orthonormal basis of eigenvectors of $A$: $v_1, ..., v_n$ and associated values $lambda_1, ..., lambda_n$, we have: $A = sum^n_(k=1) lambda_i v_i v_i^top$.

*Rayleigh Quotient* For a symmetric matrix and $x eq.not 0$, $R(x) = (x^top A x)/(x^top x)$ has a maximum at $R(v_max)=lambda_max$ and minimum $R(v_min)=lambda_min$ whereby $lambda_max, lambda_min$ are the largest and smallest eigenvalues of $A$, $v$ associated eigenvectors.

*Positive Semidefinite* A symmetric matrix is PSD if all its eigenvalues are $>= 0$. Positive definite is $>0$. An $A$ is PSD $<==> forall x in RR^n, x^top A x >= 0$ and for PD, $> 0$.

PSD and PD matrices are closed under addition. $A,B "P(S)D" ==> A+B "P(S)D"$

*Gram Matrices* $G_(i j) = v_i^top v_j$ or $A A^top$.

Given a real matrix $A$, the nonzero eigenvalues of $A^top A = A A^top$. Both are symmetric and semidefinite.

*Cholesky Decomposition* Every symmetric PSD $M$ is a Gram matrix of an UT matrix $C$. $M=C^top C$ is the Cholesky decomposition.

=== SVD
A *singular* matrix is a square matrix that is not invertible ($det(A)=0$).

Given $A in RR^(m times n)$. $exists U in RR^(m times m), exists V in RR^(n times n), A=U Sigma V^top$, where $Sigma$ is diagonal and the diagonal elements are non-negative and ordered in descending order. $U^top U = V^top V = I$ (orthonormal)

The columns of $U$ are the left, columns of $V$ the right singular vectors. The diagonal elements of $Sigma$ are the singular values of $A$.

If $A$ has rank $r$, we can write $A=U_r Sigma_r V_r^top$, where $U_r$ contains the first $r$ left singular vectors, analog for $V,Sigma$.

We have $A A^top = U(Sigma Sigma^top) U^top$, i.e., columns of $U$ are eigenvectors of $A A^top$, singular values of $A$ the square root of the eigenvalues of $A A^top$. If $m>n$, $A$ has $n$ singular values, $A A^top "has" m$, so the missing ones are filled with zeroes.

Every matrix $A$ has an SVD, i.e., every linear transformation is diagonal when viewed in the bases of the singular vectors.

Lastly, $A= sum^r_(k=1) sigma_k u_k v_k^top$ -- every matrix can be expressed as a sum of rank-1 matrices.

= Miscellaneous
Rotation matrix in $RR^(2 times 2) = mat(cos theta, -sin theta; sin theta, cos theta)$

*Closed Form* Expression in only constants, variables, and elementary operations like $+, -, times, \/$, and integer powers and function composition.

*Singular values of $A=u v^top$* Then the only non-zero singular value is equal to $||u|| ||v||$

= Tips
== Examples
=== Multilinearity of Determinant
Given $A in RR^(3 times 3), det(A)=2$, find $det(2A)$.

Because the determinant is multilinear, use the formula $det(c A) = c^n det(A)$. So 16.

=== Guessing Eigenvectors for Recurrences
For recurrences $g_n = vec(a_(n+2), a_(n+1), a_n, ...)$, the eigenvectors are usually:
$ vec(lambda^(k-1), lambda^(k-2), dots.v, lambda, 1) $

=== Fibonacci Sequence
Given $F_0=0, F_1=1$, then $F_n = F_(n-1)+F_(n-2)$, we can write:
$underbrace(vec(F_(n+1), F_n), g_n) = underbrace(mat(delim: "[", 1, 1; 1, 0), M) vec(F_n, F_(n-1))$, and thus: $g_n = M^n g_0$

*Closed Form Expression*
#figure(image("media/ClosedFormFib.png"))

== Algorithms
=== Gram-Schmidt

We start with the basis:
$ v_1 = vec(1, 1), quad v_2 = vec(0, 2) $

==== Step 1: Get first unit vector $q_1$

Normalize $v_1$ immediately to get the first orthonormal vector $q_1$:
$
  r_{11} & = norm(v_1) = sqrt(1^2 + 1^2) = sqrt(2) \
     q_1 & = v_1 / r_{11} = vec(1/sqrt(2), 1/sqrt(2))
$

==== Step 2: Get second unit vector $q_2$

Now we calculate the projection of $v_2$ onto $q_1$. Since $q_1$ is already a unit vector, we use the simpler formula (no division):

$ p = (q_1^T v_2) q_1 $

Calculate the dot product scalar $(q_1^T v_2)$:
$
  q_1^T v_2 & = vec(1/sqrt(2), 1/sqrt(2))^T vec(0, 2) \
            & = (1/sqrt(2) dot 0) + (1/sqrt(2) dot 2) = 2/sqrt(2) = sqrt(2)
$

Multiply this scalar by the vector $q_1$:
$ p & = sqrt(2) dot vec(1/sqrt(2), 1/sqrt(2)) = vec(1, 1) $

Subtract this projection from $v_2$ to find the perpendicular part $w_2$:
$
  w_2 & = v_2 - p \
      & = vec(0, 2) - vec(1, 1) = vec(-1, 1)
$

Finally, normalize $w_2$ to get $q_2$:
$
  r_{22} & = norm(w_2) = sqrt((-1)^2 + 1^2) = sqrt(2) \
     q_2 & = w_2 / r_{22} = vec(-1/sqrt(2), 1/sqrt(2))
$

==== Result
$ q_1 = vec(1/sqrt(2), 1/sqrt(2)), quad q_2 = vec(-1/sqrt(2), 1/sqrt(2)) $

== SVD
Compute $A^top A$. Solve $det(A^top A - lambda I) = 0$ to find Evals. Take $sqrt$ of Evals for $Sigma$.

Find eigenvectors of $A^top A$ via $det(A^top A - lambda_i I)=0$. This gives the right singular vectors $(V)$.

Then, solve $u_i=1/sigma_i A v_i$ to find Evectors of $U$.

== Gaussian Elimination
TODO

== Least Squares
TODO

#colbreak()

= Exercise Results
== Sheet 13
- If $S^top = -S$, $-S^2$ is symmetric and PSD.
- A symmetric diagonally dominant matrix (for every row, abs value of the diagonal entry is at least the sum of other abs values in that row) $in RR^(n times n)$ with non-negative diagonal entries is PSD.
- $A^dagger = V_r Sigma^(-1)_r U_r^top$
- Given $A$ with $"rank"(A)=r$, its SVD, and $c=U^top b$, we have $min_(x in RR^n) ||A x - b||^2_2 = min_(y in RR^n) ||Sigma y - c||^2_2$. The opt $y$ is:

  $ y^* = vec(c_1/sigma_1, dots.v, c_r/sigma_r, 0, dots.v, 0) = arg min_(y in RR^n) ||Sigma y - c||^2_2 $
== Sheet 12
- If $"eV of" A <==> "eV of " B$, then $A B = B A$
== Sheet 12
Given a block matrix $M = mat(delim: "[", A, B; 0, C), det(M)=det(A)det(C)$
== Sheet 9
- There is a bijection $C(A) -> R(A)$
