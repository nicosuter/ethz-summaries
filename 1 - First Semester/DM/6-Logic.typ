== Proof Systems
A proof system $pi=(S, P, tau, phi)$ is:
- Sound if no incorrect ($tau(s)=0$) statements have a $p in P$ with ($phi(s, p)=1$)
- Complete if for every $s in S$ with ($tau(s)=1$), there is a $p in P$ with ($phi(s, p)=1$)

Soundness can be stated as $F tack.r G ==> F tack.r.double G$. Def. 6.21: A derivation rule is correct if for every set $M$ of formulae and every formula $F$, $M tack.r F ==> M tack.r.double F$ and a calculus is sound if this holds for all rules (Def. 6.22).

Completeness can be stated as $F tack.r.double G ==> F tack.r G$. Def. 6.22: A calculus is complete if this holds $forall M,F$.

$tau$ is the truth function defined as $tau : cal(S) -> {0,1}$, $phi$ is the validation function $cal(S) times cal(P) -> {0,1}$.

*Syntax* Alphabet $A$ of allowed symbols and specification of which strings in $A^*$ are formulae. Def. 6.31:

*Syntax of Propositional logic:*
- An atomic formula $A_i, i in NN$ is a formula.
- If $F,G$ are formulae, then $not F, (F and G), (F or G)$ are.
*Syntax of Predicate logic:*
- A variable symbol is an $x_i, i in NN$
- A function symbol is an $f_i^(k)$ with $i,k in NN$ and $k$ being the number of arguments. $k=0$ is a constant.
- A predicate symbol is a $P_i^(k)$ and analogous to a $f$.
- A formula is defined inductively:
  - $forall i,k$, if $t_i, ..., t_k$ are terms, then $P_i^(k)(t_1, ...)$ is an atomic formula
  - If $F,G$ are formulae, then $not F, (F and G), (F or G)$ are
  - If $F$ is a formula, then for any $i$, $forall x_i F$ and $exists x_i F$ are

*Interpretation*
- Consists of a set $cal(Z) subset.eq A$ of symbols of $A$, a domain for each symbol in $cal(Z)$, and a function that assigns each symbol in $cal(Z)$ a value in its associated domain.
- Suitable if it assigns a value to all free occurrences in $F$
- (Def. 6.36) Written $cal(A) = (U, phi.alt, psi, xi)$
  - $cal(A)(t)$ of a term $t$ is defined recursively as:
    - $t$ variable, then $cal(A)(t) = xi(x_i)$
    - $t$ function $f(t_1, ..., t_k)$ for terms $t_i$ and $k$-ary function $f$, then $cal(A)(t) = phi.alt(f)(cal(A)(t_1), ...)$
  - $cal(A)(F)$ of a formula is defined recursively as:
    - $F$ in form $F=P(t_1, ..., t_k)$ for terms $t_i$ and k-ary $P$, then $cal(A)(F)=psi(P)(cal(A)(t_1), ...)$
    - If $F$ is of the form $forall x G$ or $exists x G$, then let $cal(A)_[x->u]$ for $u in U$ be the same structure as $cal(A)$, except that $xi(x)$ is overwritten by $u$:
      - $
          cal(A)(forall x G) = cases(
            1 "if" cal(A)_[x->u](G)=1 "for all" u in U,
            0 "else"
          )
        $
      - Analog for $exists$ and some $u in U$.

*Model* A suitable $cal(A)$ for which $F$ is true is a model, and is written $cal(A) tack.r.double F$. If $A$ is not a model, one writes $cal(A) tack.r.double.not F$.

*Universal Instantiation (L6.11)* For any formula and term, we have $forall x F tack.r.double F[x\/t]$, allowing the quantifier to be eliminated.

*Satisfiability* A formula $F$ is satisfiable if there exists a model for $F$, otherwise unsatisfiable.

== Semantics
The definition of the meaning of a formula. Defines under which conditions a formula is true. Defines a function _free_ which assigns each formula $F=(f_1, ..., f_k) in A^*$ a subset $"free"(F) subset.eq {1,...,k}$ of the indices. If $i in "free"(F)$, $f_i$ occurs free in $F$.
- Defines a function $sigma$ assigning to each formula $F$ and suitable interpretation $cal(A)$ a truth value $cal(A)(F) in {0,1}$.

== Semantics of $and, or, not$
If $F,G$ are formulae, then $not F, (F and G), (F or G)$ also are.

*Lemma 6.1* Rules from Lemma 2.1, but for formulae ($F, G$) and with the following additions
- $F or top equiv top$ and $F and top equiv F$
- $F or bot equiv F$ and $F and bot equiv bot$
- $F or not F equiv top$ and $F and not F equiv bot$

*Lemma 6.3* The following statements are equivalent:
- ${F_1, F_2, ..., F_k} tack.r.double G$
- $(F_1 and F_2 and ... and F_k) -> G$ is a tautology
- ${F_1, F_2, ..., F_k, not G}$ is unsatisfiable

== Resolution Calculus
Given a set of clauses in CNF, ${A, B} tack.r_"res" A backslash {C} union B backslash {C}$. e.g., ${{A, B, C}, {C}} tack.r_"res" {A, B}$

A set of formulas $M$ is unsatisfiable $<==>$ $cal(K)(M) tack.r_"res" emptyset$ (i.e., derive the empty set to show unsatisfiability). To show a tautology (i.e., that a formula is valid), derive the empty set from $not F$. To show that a formula $F$ can be derived from a set of clauses $M$, show that ${M, not F} tack.r_"res" emptyset$

== Normal Forms
- *Rectified Form* if no variable is both bounded and free. So $(exists x P(x)) or Q(x) ==> (exists u P(u)) or Q(x)$. Rename *bound* variables only.
- *Prenex Normal Form* if all quantifiers are in front (rename variables bound to quantifiers to prevent collisions and then rearrange)
- *CNF* an AND of ORs $(C_1 or C_2) and (C_3 or C_4)$
- *DNF* an OR of ANDs $(C_1 and C_2) or (C_3 and C_4)$


== Theorem 6.12
$
  not exists x forall y P(y,x) <-> not P(y,y) [equiv forall x exists y P(y,x) <-> P(y,y)]
$
Example: There exists no set that contains all sets S that do not contain themselves, i.e., ${S:S in.not S}$ is not a set.
