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
) = default-theorems(
  "thm-group",
  lang: "en",
)
#let lemma = lemma.with(numbering: none)
#let theorem = theorem.with(numbering: none)
#show: thm-rules

*Equality* $A=B <==> forall x (x in A <-> x in B) "or" (A subset.eq B)and(B subset.eq A)$

*Element Equality* ${a}={b} ==> a=b$

*Subset* $A subset.eq B <==> forall x (x in A -> x in B)$ *[Transitive per L 3.3]*

*Union* $A union B = {x | x in A or x in B}$
- On a set of sets: $union A = {x | x in a "for some" a in A}$

*Intersection* $A inter B = {x | x in A and x in B}$
- On a set of sets: $inter A = {x | x in a "for all" a in A}$

*Difference* $B backslash A = {x in B | x in.not A}$

*Power Set* $P(A) = {S | S subset.eq A}$ -- cardinality $2^(|A|)$

#theorem(name: "3.4 - Set Laws")[
  $forall A,B,C$:

  Idempotence: $A inter A = A "and eq for" union$

  Commutativity: $A inter B = B inter A "and eq for" union$

  Associativity: $A inter (B inter C) = (A inter B) inter C "and eq for" union$

  Absorption: $A inter (A union B) = A "and" A union (A inter B) = A$

  Distributivity: $A inter (B union C) = (A inter B) union (A inter C) "and"$ \ $A union (B inter C) = (A union B) inter (A union C)$

  Consistency: $A subset.eq B <==> A inter B = A <==> A union B = B$
]

*Cartesian Product* $A times B$; Empty set if either $A,B=emptyset$


== Relations
A relation from a set $A "to" B$ is written $a rho b "or" (a,b) in rho$.

The number of relations on $|A| = n$ is $2^n^2$.

*$rho^2 subset.eq rho <==> rho "transitive"$*

*Example -- Definition of $a equiv b (mod m)$*: $a-b=k m "for some" k$. i.e., $m|(a-b)$.

*Identity* $id_A = {(a,a) | a in A}$

*Inverse* $a hat(rho)b = b rho a$ --- for composition, $hat(rho compose sigma) = hat(sigma) compose hat(rho)$

*Composition* $rho compose sigma = {(a,c) | exists b (a rho b and b sigma c)}$ *(Associative)*

*Transitive Closure* $rho^* = union_(n in NN backslash {0}) rho^n$ (for transitive $rho": " rho^n subset.eq rho$)

=== Types
#table(
  stroke: 0.1pt,
  gutter: 0em,
  fill: (x, y) => if y == 0 { gray },
  inset: (right: 1.5em),

  columns: 4,
  [Name], [Formula], [Set], [Example],

  [Reflexive], [$a rho a$], [$id subset.eq rho$], [$id, >=$],
  [Irreflexive], [$not (a rho a)$], [$id inter rho = emptyset$], [$eq.not, >$],
  [Symmetric], [$a rho b <==> b rho a$], [$rho = hat(rho)$], [$id, equiv (mod m)$],
  [Antisymmetric], [$a rho b and b rho a -> a=b$], [$rho inter hat(rho) subset.eq id$], [$id, >=, |$],
  [Transitive], [$a rho b and b rho c -> a rho c$], [$rho^2 subset.eq rho$], [$id, equiv (mod m), >$],
)


*Equivalence Relation* Reflexive, Symmetric, Transitive (e.g., $equiv (mod m) "on" ZZ$). The intersection of two equivalence relations is itself one.

*Equivalence Class* $[a]_theta = {b in A | b theta a}$
- Complete relation $A times A$: $forall a,b: [a]=[b]$;
- $id$ where $forall a,b: [a] eq.not [b]$
Classes form a partition: $S_i inter S_j = emptyset "where" i eq.not j$. $union_{i in I} S_i = A$

The set of equivalence classes $A\/theta$ of a relation $theta={[a]_theta | a in A}$ is a partition of $A$.


*Example -- Definition of Rationals* $(a,b) ~ (c,d) <==> a d = b c$, whereby an equivalence class consists of all the tuples simplifying to the same fraction.

== Partial Order Relations
A partial order $prec.eq$ on $A$ is reflexive, antisymmetric, and transitive. Denoted $(A; prec.eq)$. $>=$ is a partial order on $ZZ$. $>$ is not (not reflexive).

e.g., $|$ is a partial order on $NN backslash {0}$.

*Comparability* $a,b in A$ are comparable if $a prec.eq b$ or $b prec.eq a$. Otherwise incomparable.

*Totally ordered* by $prec.eq$ if $forall a,b$ comparable.

*Well-ordered* if totally ordered and every non-empty subset of $A$ has a least element.

*Direct Product* $(A; prec.eq) times (B; subset.eq.sq)$ is the poset $(A times B; <=)$ defined by:
$ (a_1, b_1) <= (a_2, b_2) <==> a_1 prec.eq a_2 and b_1 subset.eq.sq b_2 $

*Lex Order* The partial order $(A times B; <=_"lex")$ is defined as:
$ (a_1, b_1) <=_"lex" (a_2, b_2) <==> a_1 prec a_2 or (a_1 = a_2 and b_1 subset.eq.sq b_2) $

*Definitions* $(A; prec.eq)$ poset, $S subset.eq A$.
1. $a in A$ is a minimal (maximal) element of $A$ if there is no $b in A$ with $b prec a$. ($a prec b$)
2. $a in A$ is the least (greatest) element of $A$ if $forall b in A: a prec.eq b$. ($b prec.eq a$)
3. $a in A$ is a lower (upper) bound of $S$ if $forall b in S: a prec.eq b$. ($b prec.eq a$)
4. $a in A$ is the greatest lower bound (least upper bound) of $S$ if $a$ is the greatest (least) element of the set of all lower (upper) bounds of $S$.
#figure(image("media/Poset_Definitions.png"))

=== Hasse Diagrams
*Cover* $a "covers" b <==> b prec a$ and no $c$ between $a,b$.

Directed graph where vertices are $a in A$ and edge $(a,b) <==> a "covers" b$.
#figure(image("media/Hasse_Diagrams.png"))

=== Meet, Join, Lattices
$(A; prec.eq)$:\
If $a,b in A$ have a glb, it is the meet of $a,b$, denoted $a and b$.\
If $a,b$ have lub, it is the join of $a,b$ ($a or b$).

If every pair of elements has a meet and join, the poset is called a lattice -- e.g., $(NN; <=)$.

== Functions
$f: A -> B, f: a |-> a^2$ (domain $A$, codomain $B$, outputs $a^2$) is a relation from $A$ to $B$ with:
- $forall a in A, exists b in B: a f b$ (totally defined; otherwise partial function)
- $forall a in A, forall b,b' in B: (a f b and a f b' -> b=b')$ (well-defined)

Thm: If there are injective $f: A->B, g: B->A$, there is a bijective $h: A->B$.

The set of all functions $A->B$ is denoted $B^A$.

A function has a left inverse $<==>$ injective, right inverse $<==>$ surjective.

*Image* The image of $f: A->B$ and $S subset.eq A$, the image $f(S) "of" S "under" f$ is the set $f(S)={f(a) | a in S}$. In other words, the output values for a given subset.

*Preimage* $f^(-1)(T)={a in A | f(a) in T}$ (set of values in $A$ mapping into $T$)

*Definitions*
1. Injective (one-to-one) if for $a eq.not a'": " f(a) eq.not f(a')$
2. Surjective if $f(A)=B$, i.e., for every $b in B, b=f(a)$ for some $a in A$ -- that is, the codomain is fully mapped to.
3. Bijective if both injective and surjective.

*Composition* $g compose f$ or $g f = g(f(a))$ *(Associative)*

== Countability
$A~B$ if bijection exists. The relation $~$ is an equivalence relation. $A subset.eq B ==> A prec.eq B$.

$A prec.eq B$ if injection $A->B$ or $A ~ C$, where $C$ is a subset of $B$. ($prec.eq$ transitive)

$"Countable" <==> A prec.eq NN$

*Examples*
- Bijection $f: NN -> ZZ$ -- $n |-> (-1)^n ceil.l n/2 ceil.r$
- ${0,1}^* = {epsilon, 0, 1, 00, ...}$ countable by prepending 1
- $A times B$ countable if $A,B prec.eq NN$ because $A,B prec.eq {0,1}^* prec.eq NN$ and bijection\ ${0,1}^* times {0, 1}^*: (a,b) |-> (0^(|a|) ||1 ||a ||b)$. Hence $QQ~NN$.
- $NN times NN$ countable because $2^x 3^y$ is an injection from $(x,y) -> NN$ (unique prime factor decomposition)
- $cal(P)(NN)$ uncountable per diagonalization. Consider the sets inside the powerset $S_1, S_2, ...$. Define $f_S (n) = cases(1 "if" n in S, 0 "else")$. Then construct a new set that differs from each subset by one element (if $S_1$ contains 1, this new set won't contain 1, ...). This set will differ from each set within the powerset by at least one element, and hence is not part of the enumeration. So $S_1, S_2, ...$ is clearly not a full enumeration and thus $cal(P)(NN) succ NN$.

#theorem[ $A, A_i$ countable sets.

  $forall n in NN, A^n$ ($n$-tuples -- i.e., ordered set of $n$ elements -- over $A$) countable

  $union_(i in NN) A_i$ of countable list $A_0, A_1,...$ of countable sets countable

  $A^*$ of finite sequences of elements from $A$ countable.
]

*${0, 1}^infinity$ uncountable*.
#proof[
  Assume bijection $f: NN->{0,1}^infinity$. Let $beta_(i,j)$ be the $j$th bit of the $i$th bitstring. Let $overline(beta)$ be the complement of a given $beta$. Construct a new bitstring $alpha = overline(beta_(0,0)), overline(beta_(1,1)),...$. This bitstring differs by at least one bit from any possible countable bitstring $s$ since $beta_(s,n) eq.not s_(n)$. So this cannot be a bijection.
]

Treat this as binary expansion of a real number in $[0,1]$ to prove that $RR succ.eq [0,1] succ NN$.

Function $f$ computable $<==>$ there is a program that outputs $f(n)$ for every $n in NN$.
