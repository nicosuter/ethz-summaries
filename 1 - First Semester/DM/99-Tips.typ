= Appendices
== Tables

*Primes* 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181

#include "99-ModInvTable.typ"
#include "99-TotientTable.typ"
#include "99-Algebras.typ"

#colbreak()
== Irreducible Polynomials

*GF(2)*
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { gray },
  inset: (right: 1.5em),

  columns: 5,
  [$x^4$], [$x^3$], [$x^2$], [$x$], [$c$],

  [], [], [], [1], [0],
  [], [], [], [1], [1],
  [], [], [1], [1], [1],
  [], [1], [0], [1], [1],
  [], [1], [1], [0], [1],
  [1], [0], [0], [1], [1],
  [1], [1], [0], [0], [1],
  [1], [1], [1], [1], [1],
)

*GF(3)*
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { gray },
  inset: (right: 1.5em),

  columns: 4,
  [$x^3$], [$x^2$], [$x$], [$c$],

  [], [], [1], [0,1,2],
  [], [1], [0], [1],
  [], [1], [1], [2],
  [], [1], [2], [2],
  [1], [0], [2], [1],
  [1], [0], [2], [2],
  [1], [1], [0], [2],
  [1], [1], [1], [2],
  [1], [1], [2], [1],
  [1], [2], [0], [1],
  [1], [2], [1], [1],
  [1], [2], [2], [2],
  [...],
)

*GF(5)*
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { gray },
  inset: (right: 1.5em),

  columns: 3,
  [$x^2$], [$x$], [$c$],

  [], [1], [0,1,2,3,4],
  [1], [0], [2,3],
  [1], [1], [1,2],
  [1], [2], [3,4],
  [1], [3], [3,4],
  [1], [4], [1,2],
  [...],
)
#colbreak()
*GF(7)*
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { gray },
  inset: (right: 1.5em),

  columns: 3,
  [$x^2$], [$x$], [$c$],

  [], [1], [0,1,2,3,4,5,6],
  [1], [0], [1,2,4],
  [1], [1], [3,4,6],
  [1], [2], [2,3,5],
  [...],
)

== Group Cardinalities
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if calc.even(x) { gray },
  inset: (right: 1.5em),
  columns: 6,

  [1], [$ZZ_1$], [2], [$ZZ_2$], [3], [$ZZ_3$],
  [4], [$ZZ_4, Z_2 times Z_2$], [5], [$ZZ_5$], [6], [$ZZ_6$],
  [7], [$ZZ_7$], [8], [$ZZ_8, ZZ_2 times ZZ_4, ZZ_2 times ZZ_2 times ZZ_2$], [9], [$ZZ_9, ZZ_3 times ZZ_3$],
  [10], [$ZZ_10$],
)

== Groups and Generators
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if calc.even(x) { gray },
  inset: (right: 1.5em),
  columns: 4,

  [2], [*1*], [3], [1, *2*],
  [4], [1, *3*], [5], [1, *2*, *3*, 4],
  [6], [1, *5*], [7], [1, 2, *3*, 4, *5*, 6],
  [8], [1, 3, 5, 7], [9], [1, *2*, 4, *5*, 7, 8],
  [10], [1, *3*, *7*, 9], [11], [1, *2*, 3, 4, 5, *6*, *7*, *8*, 9, 10],
  [12], [1, 5, 7, 11], [13], [1, *2*, 3, 4, 5, *6*, *7*, 8, 9, 10, *11*, 12],
  [14], [1, *3*, *5*, 9, 11, 13], [15], [1, 2, 4, 7, 8, 11, 13, 14],
  [16], [1, 3, 5, 7, 9, 11, 13, 15], [17], [1, 2, *3*, 4, *5*, *6*, *7*, 8, 9, *10*, *11*, *12*, 13, *14*, 15, 16],
)

*$ZZ_n$ has $phi(n)$ generators. An isomorphism is defined uniquely by which generator is mapped to _one_ other*.

= Examples
== Sets
*Are we dealing with infinite sets?*

*Does every element have a mapping? Do we need a default case in the function definition?*

=== $(A; rho)$ poset. Prove $(A; hat(rho))$ poset
Working backwards from inverse:
- R: $a hat(rho) a ==> a rho a$
- A: $a hat(rho) b and b hat(rho) a ==> b rho a and a rho b ==> a=b$
- T: $a hat(rho) b and b hat(rho) c ==> b rho a and c rho b ==> c rho b and b rho a ==> c rho a ==> a hat(rho) c$
=== Uncountability
1. Find injection $f: {0,1}^infinity -> A$
2. Show $f$ is *totally and well-defined*
3. Prove injectivity

Very useful: Prime factorization -- e.g., for listing the finite number of indices at which an $f(x)=1$, we can define $g(f)=2^(x_1)3^(x_2),...$ since there are infinitely many primes.

*TODO: FIX*
- Complement: Find uncountable $B, A subset.eq B$. Show $B backslash A$ countable. Then:
$ underbrace(A, prec.eq NN) union underbrace((B backslash A), prec.eq NN) = underbrace(B, "uncountable") $

=== Prove that $A subset.eq B <==> P(A) subset.eq P(B)$
$==>$ Direction: Consider an arbitrary $a in P(A)$.
$
  ==> a subset.eq A "[Def. Power Set]" ==> a subset.eq B "[Transitivity"subset.eq", Assumption" a subset.eq B"]" ==> a in P(B)
$
$<==$ Direction: $ A subset.eq A ==> A in P(A) "[Def. Power Set]" ==> A in P(B) "[Assumption]" ==> A subset.eq B $
=== Let $A$ be a nonempty set and let $f: A -> cal(P)(A)$ be a function. Show that $Z_f := {x in A : x in.not f(x)}$ is not in the image of $f$.

For all $x in A$, we either have $x in f(x) or x in.not f(x)$. Case distinction:

1. $x in f(x)$ -- that implies $f(x) eq.not Z_f$ [since $x in A and x in f(x)$]
2. $x in.not f(x)$ -- that implies $x in Z_f ==> f(x) eq.not Z_f$ [Def. Set Equality] $==> Z_f in.not "Im"(f)$

Which can be used to prove $A prec cal(P)(A)$:\
==== Simple
Since $Z_f in cal(P)(A)$, but $Z_f in.not "Im"(f)$, there is no surjection onto $cal(P)(A)$ and hence $A tilde.not cal(P)(A)$. But there is an injection $g : A->cal(P)(A)$ with $g(x) = {x}$, so $A prec.eq cal(P)(A)$. Combining the two, $A prec cal(P)(A).$

=== Set of all reflexive relations on $NN succ N$
We give an injection from ${0, 1}^infinity$ to the set of reflexive relations on $NN$ to show that this set is uncountable. Let $s in {0, 1}^infinity$ be arbitrary. We then define $f(s)$ as $R = {(a, a + 1) | s_a = 1} union {(x, x) | x in NN}$ where $s_i$ is the i-th bit of $s$.

We now show that $f$ is injective. Let $s, t in {0, 1}^infinity$ with $s eq.not t$. Let $i in NN$ be the smallest $i$ such that $s_i eq.not t_i$. Without loss of generality assume $s_i = 1$ and $t_i = 0$ (the opposite case can be shown analogously). It follows that $(i, i + 1) in f(s)$ but $(i, i + 1) in.not f(t)$. Thus $f(s) eq.not f(t)$. Hence $f$ is injective and the set of all reflexive relations on $NN$ must be uncountable since it dominates ${0, 1}^infinity$ which itself is uncountable.

=== IJ/SJ of Composed Functions
$f: A->B$ and $g: B->C$. $(g compose f): A->C$.

==== 1. Injectivity
Theorem: If $g compose f$ is injective, then $f$ is Injective.
Proof:

Goal: Show that $f(x_1) = f(x_2) ==> x_1 = x_2$. Assume $f(x_1) = f(x_2)$ for some $x_1, x_2 in A$.

Apply $g$ to both sides: $g(f(x_1)) = g(f(x_2))$. By definition of composition: $(g compose f)(x_1) = (g compose f)(x_2)$. Since $g compose f$ is injective (given), we know $x_1 = x_2$. So $f$ injective.

==== 2. Surjectivity
Theorem: If $g compose f$ is surjective, then $g$ is surjective. Proof:

Goal: Show that for any $z in C$, there exists a $y in B$ such that $g(y) = z$. Pick an arbitrary $z in C$.Since $g compose f$ is surjective (given), there exists an $x in A$ such that $(g compose f)(x) = z$.

Rewrite this as: $g(f(x)) = z$. Let $y = f(x)$. Note that $y in B$ (since the codomain of $f$ is $B$). Substitute $y$: we have found a $y in B$ such that $g(y) = z$. So $g$ surjective.

== Algebra
*$0a=0$:* $       a 0 & = a(0+0) "["0 id"]" \
          & = a 0 + a 0 "[L. Dist]" \
a 0 - a 0 & = a 0 + a 0 - a 0 "[Subtract]" \
        0 & = a 0 $

*$(-a)b=-(a b)$:* Due to the uniqueness of inverses, it suffices to prove that $a b$ (the inverse of $-(a b)$) is also an inverse of $(-a)b$. Verify: $(-a)b + a b = (-a+a)b = 0b = 0$.

*Commutativity of addition from axioms* Assume not commutative. But $(1+1)(x+y)=(x+y)+(x+y)=x(1+1)+y(1+1)$, so must be commutative.

*$(-1)(-1)=1$* $ 1-1=0 ==> (1-1)(-1)=0(-1) ==> (1-1)(-1)=0\ ==> -1+(-1)(-1)=0 ==> (-1)(-1)=1 $

=== Find a generator of $"GF"(3)[x]^*_(x^2+2x+1)$
Since $|G| = 6$, $"ord"(a) in {1,2,3,6}$ for any $a in G$. By trial and error, the order of $x$ is 6 because $x=x, x^2=x+2, x^3=2$, so it must be 6 and thus a generator.
=== Non-Trivial Homomorphism $f: chevron.l ZZ_9; + chevron.r -> chevron.l ZZ_12; + chevron.r$
- The map between the cyclic groups must divide both $|ZZ_9|, |ZZ_12|$. So use $3=gcd(9, 12)$.
- So subgroup $G$ of $ZZ_12$ with $"ord"(G)|3$
- So element $in ZZ_12$ with $"ord"=3$.
- *The element $k$ generating a subgroup of order $d$ in $ZZ_m$ is given by $k=m/d$*, so $k=4$
- So map generator $1 in ZZ_9 -> 4 in ZZ_12$, giving $0->0, 1->4, 2->8$ and $f(x)=4x (mod 12)$.
=== Non-constant Polynomial $a(x) in F[x]$ such that $F$ has no roots
- Define $c(x) = product_(b in F)(x-b)$. $forall b in F, c(b)=0$.
- Define $a(x) = c(x)+1$. This has no roots in $F[x]$.
=== Fermat's Little Theorem
Useful for CRT; same as with group orders, given a prime $p$ and integer $a$ not divisible by $p$, we have:
$
  a^(p-1) equiv 1 (mod p)
$
Example -- Calculating $3^234 (mod 7)$. $3^6 equiv 1 (mod 7)$, so $3^234 = (3^6)^39 equiv 1^39 equiv 1$.

=== Cyclic Groups are Commutative
Any element can be respresented as a power of a generator: $g^a dot g^b = g^(a+b) = g^(b+a) = g^b dot g^a$

=== Decompose $a(y) = x y^3 + x y^2 + (x+1)y + x in "GF"(2)[x]_(x^2+x+1)[y]$ into irreducible factors
In $"GF"(2), y in {0,1,x,x+1}$. So substitute each possibility into $y$ to find a root.

=== Isomorphism between $chevron.l ZZ_3; plus.o chevron.r times chevron.l ZZ_35; plus.o chevron.r -> chevron.l ZZ_21; plus.o chevron.r times chevron.l ZZ_5; plus.o chevron.r$
$gcd(3, 35)=1$, so $f: chevron.l ZZ_105; plus.o chevron.r -> chevron.l ZZ_3; plus.o chevron.r times chevron.l ZZ_35; plus.o chevron.r, x |-> (R_3 (x), R_35 (x))$ is an isomorphism.

$gcd(21, 5)=1$, so $g: chevron.l ZZ_105, plus.o chevron.r -> chevron.l ZZ_5; plus.o chevron.r times chevron.l ZZ_21; plus.o chevron.r, x |-> (R_5 (x), R_21 (x))$ is an isomorphism.

Thus, $g compose f^(-1)$ is such an isomorphism.

*Proof (!!!):* As stated in the script, the CRT implies a one-to-one correspondence (isomorphism) between $ZZ_m$ and its direct product components provided they are pairwise relatively prime.

=== Number of Isomorphisms between two cyclic groups of $"ord" > 0$
The number of isomorphisms between two cyclic groups of order $n$ is $phi(n)$.

*Proof Sketch:*
- $psi: G -> H$ is uniquely determined by the image $psi(a)$ of a generator. ($g in G = a^k$, apply definition HM and powers)
- An isomorphism must map a generator to a generator. For $psi$ to be a bijection, it must be surjective, so its image $"Im"(psi)$ must equal $H$. Since $"Im"(psi)={psi(a)^k | k in ZZ}$, the set of powers of $psi(a)$ must contain all $n$ elements of $H$. This occurs if and only if the element $psi(a)$ has order $n$, which by definition makes $psi(a)$ a generator of $H$.
- Every cyclic group is IM to $chevron.l ZZ_n; + chevron.r$. Generators of such are $gcd(a, m)=1$, the number of which is defined as the Euler function. So exactly $phi(n)$ generators/elements that can serve as image $phi(a)$.
- Prove well-defined, HM, bijectivity

=== Is $ZZ_n^*$ cyclic?
$ZZ_n^* "cyclic" <==> n in {1,2,4, p^k, 2p^k}$ for some prime $k$.

=== Zero divisors in ring $chevron.l ZZ_n; plus.o, times.o chevron.r$
$|ZZ_n| - phi(n) - 1$ (to remove 0)

=== *Claim to Disprove:* For any groups $G$ and $H$, all subgroups of $G times H$ are of the form $G' times H'$ (where $G' lt.eq G$ and $H' lt.eq H$).
==== Disproof Strategy
We construct a counterexample using a "diagonal" subgroup, which links the choices of elements from $G$ and $H$, preventing them from being formed by independent factors.

==== Counterexample
Let $G = ZZ_2 = {0, 1}$ and $H = ZZ_2 = {0, 1}$.
The direct product is:
$ G times H = {(0,0), (0,1), (1,0), (1,1)} $

Consider the *diagonal subgroup* $D$:
$ D = {(0,0), (1,1)} $

+ *Verify $D$ is a subgroup:*
  - Contains identity $(0,0)$.
  - Closed under addition: $(1,1) + (1,1) = (0,0)$.
  - Contains inverses (elements are self-inverse).

+ *Show $D$ is not a product $G' times H'$:*
  - If $D = G' times H'$, then since $(1,1) in D$, we must have $1 in G'$ and $1 in H'$.
  - This implies $G' = {0, 1}$ and $H' = {0, 1}$.
  - The product $G' times H'$ would be the full group ${(0,0), (0,1), (1,0), (1,1)}$.
  - However, $D$ only has 2 elements.

*Conclusion:* Since ${(0,0), (1,1)} eq.not G times H$, the claim is false.

=== Let $F$ be a finite field. Prove there are infinitely many irreducible polynomials in $F^*[x]$
Assume finitely many. List them as ${p_1(x), ..., p_n(x)}$. Construct a new polynomial $f(x)=product^n_(i=1)(p_i (x))+1$. Since $"deg"(f(x)) >= 1$, at least one irreducible factor. This factor is, by construction, in our list. But dividing this polynomial by any of the listed ones gives a remainder of 1. So not divisible, a contradiction. The irreducible factor must exist, but wasn't in our list. So list infinite.

=== $ker(phi) = {e} <==> phi "injective"$
$==> :$ Assume $ker(phi)={e_1}$. We know $phi(e_1)=e_2$. Assume not injective, reach contradiction with more elements in $ker$.

$<== :$ Assume injective. We know $phi(e_1)=e_2$. Use definition of inj. to show other elements in kernel equal to $e_1$.

=== Is $p(y)=y^2 + 5 x y + 5 in ZZ_7[x]_(x^2+1)[y]$ reducible? Factors?
Note that by the definition of the field, we have $x^2+1 equiv 0 ==> x^2 equiv 6$.

Calculate the discriminant: $(5x)^2-4(1)(5) = 25x^2-20 equiv 4x^2-6$. Substitute $x^2 = 6 ==> 4(6)-6 > 0$, so root. Solving: $sqrt(18) equiv sqrt(4) = plus.minus 2$. $y=(-5x plus.minus 2)/2 ==> y=4(2x plus.minus 2) ==> y in {x+1, x+6} ==> p(y) = (y-(x+1))(y-(x+6))$.


== Logic
=== Prove $exists x forall y P(x,y) tack.r.double exists x P(x, f(x))$
Let $cal(A)$ be suitable for both LHS and RHS.
$
  cal(A)(exists x forall y\ P(x,y))=1 & <==> cal(A)_[x->u](forall y P(x,y))=1 "for some" u in U^cal(A) "[Semantics "exists"]" \
  &<==> cal(A)_([x->u][y->v])(P(x,y))=1 "for some" u in U^cal(A) "and all" v in U^cal(A) "[Semantics "forall"]" \
  &==> cal(A)_([x->u][y->f^cal(A)(u)])(P(x,y))=1 "for some" u in U^cal(A) "["f^cal(A)(u) in U^cal(A)"]" \
  &<==> cal(A)_[x->u](P(x, f(x)))=1 "for some" u in U^cal(A) "[Semantics "f(x)"]" \
  &<==> cal(A)(exists x P(x, f(x))) "[Semantics "exists"]"
$

=== Prove: $forall x (F or G) models F or (exists x G)$

==== 1. Assumption
Assume the LHS is true in an arbitrary structure $cal(A)$:
$ cal(A)(forall x (F or G)) = 1 $

By the semantics of $forall$, for every element $u$ in the domain:
$ cal(A)_[x -> u](F or G) = 1 $

By the semantics of $or$, this implies that for every $u$:
$ cal(A)_[x -> u](F) = 1 quad text("or") quad cal(A)_[x -> u](G) = 1 [\*] $

==== 2. Analysis of RHS
We analyze the truth value of $exists x G$ via two cases.

*Case 1:* $cal(A)(exists x G) = 1$ \
If the existential formula is true, the disjunction $F or (exists x G)$ is trivially true.
$ cal(A)(F or (exists x G)) = 1 $

*Case 2:* $cal(A)(exists x G) = 0$ \
By definition of $exists$, this means there is *no* element $u$ such that $cal(A)_[x -> u](G) = 1$. Therefore, for all $u$:
$ cal(A)_[x -> u](G) = 0 $

Referencing step \* above: since $G$ is false for all $u$, $F$ must be true for all $u$ to satisfy the disjunction.
$ forall u, cal(A)_[x -> u](F) = 1 $

Since this holds for *all* $u$, it holds for the specific value assigned to $x$ by $cal(A)$ (let's denote the current assignment as $x^cal(A)$):
$ cal(A)_[x -> x^cal(A)](F) = 1 ==> cal(A)(F) = 1 $

Therefore, the RHS is true:
$ cal(A)(F or (exists x G)) = 1 $

==== Conclusion
In all cases, $cal(A)(forall x (F or G)) = 1 ==> cal(A)(F or (exists x G)) = 1$.
=== Counterexamples in Logic
Disproving $forall y exists x P(x,y) ==> exists x forall y P(x,y)$

- Specify $U^cal(A) = NN$
- Specify $P^cal(A)(x,y)=1 <==> x=y$
=== Calculi
- Complete, but not sound: $K_1 = {()/(A)}$
- Sound, but not complete: $K_2 = emptyset$
=== Prove Resolution Calculus is not complete
Resolution cannot derive a tautology, e.g., ${} tack.r_"Res" A or not A$. While it can prove that something is a tautology by showing ${not A or A} tack.r_"Res" emptyset$, it cannot derive it.
=== Extend the syntax and semantics of propositional logic by adding $diamond$, where $A diamond B <==>$ $A or B$ is not true
Syntax extension: For two propositional formulae $F,G$, $F diamond G$ is also a formula.

Semantics: $cal(A)(F diamond G) = 1 <==> cal(A)(not(F or G))=1$ for suitable $cal(A)$ and formulae $F,G$.

=== Prove $forall x F tack.r.double F$
Case distinction, if $x$ not free then trivial. If free:

Since $cal(A)$ suitable for $F$, it defines $x^cal(A)$. So $cal(A)_[x->u](F) = 1 "for all" u in u^cal(A) ==> cal(A)_[x->x^cal(A)](F) = 1 "["x^cal(A) in U^cal(A)"]" ==> cal(A)(F)=1$

== Number Theory
*Polynomials:* $(a-b)|(f(a)-f(b))$

=== Prove that for all positive integers $a,b,c$: $a,b$ relatively prime $==> gcd(a b, c) = gcd(a, c)gcd(b, c)$
$a=product_i p_i^(alpha_i), b=product_i p_i^(beta_i), c=product_i p_i^(gamma_i), a b=product_i p_i^(alpha_i+beta_i)$.
Thus:
$
  gcd(a, c)gcd(b, c) & = product_i p_i^(min(alpha_i, gamma_i)) product_i p_i^(min(beta_i, gamma_i)) "[Def. "gcd"]" \
                     & = product_i p_i^(min(alpha_i, gamma_i)+min(beta_i, gamma_i)) "[Exponent Rules]" \
                     & = product_i p_i^(min(alpha_i+beta_i, gamma_i)) "[*]" \
                     & = gcd(a b, c) "[Def. "gcd"]"
$
*Justification for $*$:* We know that $a,b$ are relatively prime, so they do not share any prime factor $p_i$. Thus, for all $i in NN$, $alpha_i=0$ or $beta_i=0$ or $alpha_i=beta_i=0$.

wlog, assume $alpha_i=0$. Then, we have:
$
  min(alpha_i, gamma_i) + min(beta_i, gamma_i) & = min(0, gamma_i)+min(beta_i, gamma_i) \
                                               & = 0+min(beta_i, gamma_i) \
                                               & = min(beta_i, gamma_i) \
                                               & = min(0+beta_i, gamma_i) \
                                               & = min(alpha_i+beta_i, gamma_i)
$

=== Prove that $lcm$ distributes over $gcd$, i.e., $lcm(a, gcd(b, c))=gcd(lcm(a, b), lcm(a, c))$
$
  lcm(a, gcd(b, c)) & = lcm(a, product_i p_i^(min(beta_i, gamma_i))) "[Def]" \
                    & = product_i p_i^(max(alpha_i, min(beta_i, gamma_i))) "[Def]" \
                    & = product_i p_i^(min(max(alpha_i, beta_i), max(alpha_i, gamma_i))) "[*]" \
                    & = gcd(product_i p_i^(max(alpha_i, beta_i)), product_i p_i^(max(alpha_i, gamma_i))) "[Def]" \
                    & = gcd(lcm(a, b), lcm(a, c)) "[Def]" \
$
*Justification for $*$:* wlog, assume $y <= z$ and observe the case distinction:
1. $x <= y ==> max(x, min(y, z))=max(x, y)=y=min(y, z)=min(max(x, y), max(x, z))$
2. $y <= x <= z ==> max(x, min(y, z))=max(x, y)=x=min(x, z)=min(max(x, y), max(x, z))$
3. $z <= x ==> max(x, min(y, z))=max(x, y)=x=min(x, x)=min(max(x, y), max(x, z))$

=== $a,b,c,d in NN backslash {0}$. Prove $a b=c d ==> a+b+c+d "not prime"$
$
  a b = c d ==> a/c = b/d
$
Let $x/y$ be the simplified fraction such that $gcd(x, y)=1$. So then $a = u x, c = u y$ and $d = v x, b = v y$. Then substitute into sum equation and factorize to show composite.

=== $R_35 (2^1000)$
CRT with $mod 5, mod 7$. Per Fermat's Little Theorem, $a^(p-1) equiv 1 (mod p)$.

E.g., $p=7 -> "order" 6$. $1000=166*6 + 4$, so $2^6^166$ full cycles with remainder of 4. Thus $1*2^4 equiv 2$.

=== RSA: Prove $m^(d e) equiv m (mod p) and m^(d e) equiv m (mod q) ==> m^(d e) equiv m (mod n)$
Define the system $cases(x equiv m (mod p), x equiv m (mod q))$. $p,q$ coprime with $x_0=m^(d e), x_1=m$ being solutions. By the CRT, all solutions are congruent $mod p q = n$. So $m^(d e) equiv m (mod n)$

=== RSA: Prove $forall m in ZZ_n, m^(d e) equiv m (mod p)$
$
  d e - 1 = k phi(n) = k(p-1)(q-1) ==> d e = k(p-1)(q-1)+1\
  ==> m^(d e) = m^(k(p-1)(q-1)+1) = m^(k(p-1)(q-1))m=(m^(k(q-1)))^((p-1))m equiv ((1)m) (mod p) equiv m
$

If $m$ is a multiple of $p$, then $m equiv 0 (mod p) ==> m^(d e) equiv 0 (mod p) equiv m$

=== Prove $f(p) := x^4+x^2+1$ not prime for all primes $p$
$
  f(x) = x^4+x^2+1 = x^4+2x^2+1-x^2 = (x^2+1)^2-x^2
$
Difference of squares: $a^2-b^2=(a-b)(a+b)$
$
  f(x) = (x^2+1-x)(x^2+1+x)
$
And since both terms are clearly integers greater than 1, their product is a composite number.

= Edge cases
*Algebras*
- ID, not field: $chevron.l ZZ; 0, +, 1, * chevron.r$
- Ring, not ID: $chevron.l ZZ_4; 0, +, 1, * chevron.r$
- Infinite order

*Sets*
- Finite vs infinite
- Empty set

= Exercise Results
== Series 9
=== Shared Modulus $n$
Let Alice, Bob have keys $(n, e_A), (n, e_B)$ with $gcd(e_a, e_B) = 1$. When Charlie encrypts the same message $m$ to both Alice and Bob, sending $c_A equiv m^(e_A) (mod n), c_B equiv m^(e_B) (mod n)$, a third party can decrypt the ciphertexts.

$c_A equiv 0 or c_B equiv 0 (mod n)$. Then the encrypted message was $m=0$.

Otherwise, when $c_A$ (wlog, same for $c_B$) is not coprime to $n$, Eve can factorize $n$ by computing $gcd(c_A, n) eq.not 1$ (since not coprime) and $eq.not n$ (because $c_A eq.not 0$), so must be $p$ or $q$. This allows Eve to obtain both $p,q$ to compute $d$.

If coprime: Since $gcd(e_A, e_B)=1$, use Extended Euclid to compute $u,v$ with $u e_A + v e_B = 1$. Then, compute $c_A^u dot c_B^v$, giving $c_A^u dot c_B^v equiv (m^(e_A))^u equiv (m^(e_B))^v equiv m^(u e_A + v e_B) equiv m^1 equiv m$.

If negative $u,v$, use EEA to compute inverse, then proceed with inverse base and $|u|, |v|$.

== Series 11
=== Let $F "finite field", cal(C) subset.eq F^n$ be a code with element-wise addition (linear).
*Given $min_(c in cal(C) backslash {0^n}) "hw"(c) = 2t+1$, prove $cal(C)$ is t-error-correcting.*

Let $c_1, c_2 in cal(C), c_1 eq.not c_2$. As $cal(C)$ group, we know $c=c_1-c_2 in cal(C)$. We have $d(c_1, c_2)="hw"(c_1-c_2)="hw"(c) >= 2t+1$.

Justification: Two codewords differ at a position $<==>$ difference of their values at this position is nonzero. Also, $c_1 eq.not c_2 ==> c eq.not 0^n$.

Thus, we have $d_min(cal(C)) >= 2t+1$, so by Theorem 5.41, $cal(C)$ is t-error-correcting.

*Is it possible that for some $c in cal(C)$, up to $t+1$ arbitrary errors can be corrected?*

Let $c in cal(C)$ be arbitrary. Let $c_min in cal(C) backslash {0^n}$ such that its HD is $2t+1$. We have $d(c, c+c_min)="hw"(c_min)=2t+1$. So, $c "and" c+c_min$ differ on exactly $2t+1$ positions.

We can therefore change the first $t+1$ positions of $c$ to the ones of $c+c_min$ to obtain a word $w$ with $d(c,w)=t+1$ and $d(c+c_min, w)=t$. This word cannot be ECed.

As $c$ was arbitrary, there is no codeword such that $t+1$ arbitrary errors can be corrected.

==== Let $U subset.eq F^n, V subset.eq F^n$ be two linear codes.
Let $cal(D) subset.eq F^(2n)$ be defined as $cal(D) := { (u || (u+v)) | u in U, v in V}$. Prove $d_min (cal(D)) = min(2d_min (U), d_min (V))$.

*$<=$ Direction*: For all $u in U, (u||u) in cal(D)$ since $0^n in V$ because $V$ linear. Similarly, for all $v in V, (0^n||v) in cal(D)$.

By choosing $u in U backslash {0^n}$ such that $"hw"(u) = min_(c in U backslash {0^n}) "hw"(c)$ and $v in V$ analogously, we get:
$
  d_min (cal(D)) & = min_(c in cal(D) backslash {0^n}) "hw"(c) <= "hw"(u||u) = 2"hw"(u) \
  d_min (cal(D)) & = min_(c in cal(D) backslash {0^n}) "hw"(c) <= "hw"(0^n||v) = "hw"(v) \
$
Taking the minimum and again using the result ($d_min = min "hw"$) from below: $d_min (cal(D)) <= min(2d_min (U), d_min (V))$

*$>=$ Direction:* Let $u,v$ st $(u,v) eq.not (0^n||0^n)$. We have:
$
  "hw"(u||(u+v)) & = "hw"(u)+"hw"(u+v) = "hw"(-u)+"hw"(u+v) \
                 & >= "hw"(-u+u+v) = "hw"(v)
$
- If $v eq.not 0^n$, $"hw"(v) >= d_min (V)$ by result below
- If $v=0^n$, $"hw"(u||u+v)=2"hw"(u) >= 2d_min (U)$ by result below since $u eq.not 0^n$ by assumption $(u,v) eq.not (0^n||0^n).$
Thus, by taking the minimum:
$
  d_min (cal(D)) >= min(2d_min (U), d_min (V))
$

*Conclusion* $a(>= inter <=)b <==> a=b$

=== Useful for linear codes over finite fields
- Hamming Weight satisfies the triangle inequality. $forall x,y, "hw"(x+y) <= "hw"(x) + "hw"(y)$. Requires proof.
- $d_min (cal(C))= min_(c in cal(C) backslash {0^n}) "hw"(c)$. Requires proof. Show both inequalities for proof.


= Info Dump
To check if $g$ is a generator of $ZZ_p^*$ (Order $n = p-1$): Find prime factors of $n$: $q_1, q_2, ..., q_k$.

Calculate $g^(n/q_i) (mod p)$ for all $i$. If ALL results $eq.not 1$, then $g$ is a generator. If ANY result $equiv 1$, $g$ fails.
