#import "../preamble.typ": *

= Reelle Zahlen

== Archimedisches Prinzip und Betrag
#concept-block[
  Sei $x in RR$ mit $x > 0$ und $y in RR$. Dann gibt es $n in NN$ mit $y <= n dot x$.

  #Def $|x| := max{x,-x}$

  #key[
    $|x y| = |x| |y|$ \
    $|x+y| <= |x|+|y|$ #h(0.5em) (Dreiecksungl.) \
    $|x+y| >= lr(||x|-|y||)$ #h(0.5em) (umgekehrte)
  ]
]

== Supremum und Infimum
#concept-block[
  #Def $A subset.eq RR$ heisst von oben [unten] beschränkt (v.o.b. [v.u.b.]), falls es $x in RR$ gibt, sodass $x >= a$ [$x <= a$] für alle $a in A$. Falls $A$ eine obere Schranke mit $x in A$ hat, ist $x$ das *Maximum* von $A$, $x = Max(A)$.

  #tbox[
    #Satz Falls $A subset.eq RR$, $A != nothing$ v.o.b. [v.u.b.] ist, gibt es eine kleinste obere Schranke [grösste untere Schranke] $x$ von $A$: *Supremum [Infimum]* $x = Sup(A)$ [$x = Inf(A)$].
  ]

  Wenn *$x = Sup(A)$* so gilt:
  #enum(
    [
      $x >= a$ für alle $a in A$
    ],
    [
      für alle $y < x$ ist $y$ keine obere Schranke, d.h. $exists a in A$ mit $y < a$.
    ],
  )
  Falls $A$ ein Maximum besitzt: $Max(A) = Sup(A)$.

  *Eigenschaften*
  #enum(
    [Wenn $A subset.eq B subset.eq RR$ und $B$ beschränkt: $Sup(A) <= Sup(B)$, $Inf(A) >= Inf(B)$],
    [Wenn $a <= b$ für alle $a in A$, $b in B$: $Sup(A) <= Inf(B)$],
    [Notation: $Sup(A) = oo$ falls nicht v.o.b., $Inf(A) = -oo$ falls nicht v.u.b.],
  )

  #Bsp $A = {x in RR : x^2 - x < 2} = ]-1, 2[$: $Sup(A) = 2$, $Inf(A) = -1$ (beide $in.not A$, also #emph[kein] Max/Min). Vorgehen: Ungleichung $->$ Nullstellen $->$ Intervall ablesen.
]
