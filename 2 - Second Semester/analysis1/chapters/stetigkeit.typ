#import "../preamble.typ": *

= Stetigkeit

== Stetigkeit – Definitionen
#concept-block[
  #tbox[
    #Def $f : D -> RR$ ist *stetig in $x_0$*, falls $forall epsilon > 0$ $exists delta > 0$ $forall x in D$:
    $ |x - x_0| < delta => |f(x) - f(x_0)| < epsilon $
    Äquivalent: für jede Folge $(a_n)$ mit $lim a_n = x_0$ gilt $lim f(a_n) = f(x_0)$.
  ]

  #tbox[
    *Gleichmässige Stetigkeit:* $f : D -> RR$ gleichmässig stetig falls $forall epsilon > 0$ $exists delta > 0$ $forall x,y in D$: $ |x-y| < delta => |f(x)-f(y)| < epsilon $ Stetig auf kompaktem Intervall $=>$ gleichmässig stetig.
  ]

  #key[*Lipschitz:* $|f(x)-f(y)| <= L|x-y|$ $forall x,y$ $=>$ gleichmässig stetig. $f'$ beschränkt $=>$ Lipschitz mit $L = sup|f'|$ (MWS). Kette: Lipschitz $=>$ glm. stetig $=>$ stetig (nicht umkehrbar).]

  Sei $f, g$ stetig in $x_0$, $lambda in RR$:

  1. $f+g$, $lambda f$, $f dot g$ stetig
  2. $g(x_0) != 0 => f/g$ stetig
  3. $|f|$, $max(f, g)$, $min(f, g)$ stetig
  4. Polynome, $sin$, $cos$, $e^x$ stetig auf $RR$
  5. $g compose f$ stetig.
]

== Zwischenwertsatz
#concept-block[
  #tbox[
    #Satz Sei $I subset.eq RR$ ein Intervall, $f : I -> RR$ stetig und $a, b in I$. Für jedes $c$ zwischen $f(a)$ und $f(b)$ gibt es $z$ zwischen $a$ und $b$ mit $f(z) = c$.
  ]

  Anwendungen:
  1. $f : [a,b] -> RR$ stetig, $f(a) dot f(b) < 0$ $=> exists c in ]a,b[$ mit $f(c) = 0$;
  2. Jedes Polynom ungeraden Grades hat eine Nullstelle in $RR$.
]

== Min-Max und Umkehrsatz
#concept-block[
  #tbox[
    #Satz (Min-Max) Sei $f : [a,b] -> RR$ stetig. Dann gibt es $u, v in [a,b]$ mit $f(u) <= f(x) <= f(v)$ $forall x in [a,b]$. Insbesondere ist $f$ beschränkt.
  ]

  #Satz Sei $I subset.eq RR$ ein Intervall und $f : I -> RR$ stetig, streng monoton. Dann ist $f(I) = J$ ein Intervall und $f^(-1) : J -> I$ ist stetig, streng monoton.
]

== Funktionenfolgen
#concept-block[
  #Def Eine *Funktionenfolge* ist eine Abbildung $NN -> RR^D : n |-> f_n$.

  #tbox[
    $(f_n)$ *konvergiert punktweise* gegen $f : D -> RR$ falls $forall x in D$:
    $ f(x) = lim_(n->oo) f_n(x) $
    *Gleichmässig* falls $forall epsilon > 0$, $exists N >= 1$, $forall n >= N$, $forall x in D$: $ |f_n(x) - f(x)| < epsilon $

    *Alternativ (Cauchy):* $forall epsilon > 0$, $exists N >= 1$, $forall n,m >= N$, $forall x in D$: $ |f_n(x) - f_m(x)| < epsilon $
  ]

  #Def Die Reihe $sum f_k(x)$ *konvergiert gleichmässig*, falls die Funktionenfolge $S_n(x) = sum_(k=0)^n f_k(x)$ gleichmässig konvergiert.

  #Bem Gleichmässig $=>$ punktweise, aber nicht umgekehrt!

  #Satz Sei $f_n : D -> RR$ stetig und $f_n$ konvergiert gleichmässig gegen $f$, dann ist $f$ stetig.

  #tbox[
    #Satz (Weierstrass M-Test) Sei $|f_n(x)| <= c_n$ $forall x in D$. Wenn $sum c_n$ konvergiert, so konvergiert $sum f_k(x)$ gleichmässig und der Grenzwert ist stetig.
  ]

  *Strategie:* (1) Punktweises Limit finden. (2) Gleichmässige Konvergenz: $sup_(x in D)|f_n(x) - f(x)| -> 0$?

  #key[#Bem Ist das punktweise Limit $f$ *unstetig*, so kann die Konvergenz *nicht* gleichmässig sein (oft schneller als $sup$-Abschätzung). Bsp: $e^(-n x^2 \/ 2) -> bb(1)_({x=0})$.]
]

== Pathologische Funktionen (Gegenbeispiele)
#concept-block[
  #tbox[
    *$x sin(1/x)$*, $f(0)=0$: stetig in $0$ (Sandwich: $|x sin(1/x)| <= |x| -> 0$), aber *nicht differenzierbar*: $(f(x)-f(0))\/x = sin(1/x)$ hat keinen Grenzwert.
  ]

  #tbox[
    *$x^2 sin(1/x)$*, $f(0)=0$: überall diff. mit $f'(0)=lim_(x->0) x sin(1/x)=0$ (Sandwich); für $x!=0$ ist $f'(x)=2x sin(1/x)-cos(1/x)$, und $cos(1/x)$ hat keinen Grenzwert $=>$ $f'$ *nicht stetig* in $0$. Standard "diff., aber nicht $C^1$".
  ]

  *$|x|$*: stetig, aber nicht differenzierbar in $0$.
]

== Grenzwerte von Funktionen
#concept-block[
  #tbox[
    $x_0 in RR$ ist *Häufungspunkt* von $D$ falls $forall delta > 0$: $ (]x_0-delta, x_0+delta[ backslash {x_0}) inter D != nothing $

    $A in RR$ ist Grenzwert von $f(x)$ für $x -> x_0$ falls $forall epsilon > 0$, $exists delta > 0$, $ forall x in D inter (]x_0-delta, x_0+delta[ backslash {x_0}): |f(x)-A| < epsilon $
  ]

  #Satz Sei $(a_n)_(n >= 1)$, $a_n in CC$ beschränkt:
  1. Es gibt mindestens einen Häufungspunkt
  2. Falls es genau einen gibt, konvergiert $(a_n)$ gegen ihn.

  Rechenregeln für $lim_(x->x_0)$:
  1. $lim f(x) = A$ $<=>$ für jede Folge $(a_n) -> x_0$ in $D without {x_0}$: $f(a_n) -> A$
  2. $x_0 in D$: $f$ stetig $<=>$ $lim f = f(x_0)$
  3. $(f+g) = f+g$
  4. $(f dot g) = f dot g$
  5. $f <= g => lim f <= lim g$
  6. Sandwich gilt.

  #Satz Falls $g : E -> RR$ stetig in $y_0 = lim_(x->x_0) f(x)$: $lim g(f(x)) = g(y_0)$.

  Rechts-/Linksseitiger Grenzwert: $lim_(x -> x_0^+) f(x)$ bzw. $lim_(x -> x_0^-) f(x)$.
  Erweiterung auf $plus.minus oo$: $lim_(x->x_0^+) f(x) = +oo$ falls $forall epsilon > 0$, $exists delta > 0$, $forall x in D inter ]x_0, x_0+delta[$: $f(x) > 1/epsilon$ (analog für $-oo$ und linksseitig).
]
