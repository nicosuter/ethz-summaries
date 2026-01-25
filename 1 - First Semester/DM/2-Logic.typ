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
#show: thm-rules

== Basics

#lemma(name: "2.1")[
  1. $A and A equiv A "and" A or A equiv A$ *(Idempotence)*
  2. $A and B equiv B and A "and" A or B equiv B or A$ *(Commutativity)*
  3. $(A and B) and C equiv A and (B and C) "and" (A or B) or C equiv A or (B or C)$ *(Associativity)*
  4. $A and (A or B) equiv A "and" A or (A and B) equiv A$ *(Absorption)*
  5. $A and (B or C) equiv (A and B)or(A and C)$ *(1#super[st] Distributive)*
  6. $A or (B and C) equiv (A or B)and(A or C)$ *(2#super[nd] Distributive)*
  7. $not not A equiv A$ *(Double Negation)*
  8. $not(A and B) equiv not A or not B "and" not(A or B) equiv not A and not B$ *(de Morgan)*
]

*Logical Consequence* $F tack.r.double G$ if $G$ true whenever $F$ true.

*Equivalence* $F equiv G <==> F tack.r.double G "and" G tack.r.double F$

*Alt. Def. Tautology* $tack.r.double F$ is equivalent to $top$.

*Satisfiability* $F$ satisfiable if true for at least one truth assignment.

#lemma(name: "2.3")[
  $(F -> G equiv top) <==> (F tack.r.double G)$
]

== Predicates
A $k$-ary predicate $P$ on $U$ is a function $U^k -> {0, 1}$, i.e., operates on $k$ elements.

Short-hand: $forall x >= 5: F$ instead of $forall x (x >= 5 -> F)$

== Proof Patterns
For proving $S ==> T$:
- Composition of Implications
- Direct Proof (assume $S$, prove $T$)
- Indirect Proof (assume $not T$, prove $not S$)
- Modus Ponens (find statement $R$, prove $R$, prove $R ==> S$)
- Case Distinction
- Proof by Contradiction (find statement $T$, prove $not T$; assume $S$ false and prove $T$ to reach contradiction)
- Existence Proof, Proof by Counterexample, Induction
- Pigeonhole Proof (if a set of $n$ objects is partitioned into $k < n$ sets, at least one contains $ceil.l n/k ceil.r$ objects -- e.g., "one set contains at least two of this")
