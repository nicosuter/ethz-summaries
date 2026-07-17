#import "../preamble.typ": *

#colbreak()

= Folgen und Reihen

== Folgen und Reihen – Definitionen
#concept-block[
  #Def Eine *Folge* ist eine Abbildung $a: NN^* -> RR$. Wir schreiben $(a_n)_(n >= 1)$.
  #Bsp $a_n = 1/n$

  #Def Sei $(a_n)_(n >= 1)$ eine Folge in $RR$ oder $CC$, so ist die *Reihe* $(S_n)_(n >= 1)$ die Partialsumme $S_n = sum_(k=1)^n a_k$.

  *Arithmetische Folge:* $a_n = a+(n-1)d$

  *Geometrische Folge:* $a_n = q^(n-1) dot a$ (Summe $->$ "Typische Reihen")
]

== Grenzwert und Konvergenz
#concept-block[
  #key[*Grenzwert berechnen?* Unbestimmte Form $-> $ Grenzwert-Dispatch (§ Differenzierbarkeit).]

  #tbox[
    #Def $(a_n)_(n >= 1)$ *konvergiert* gegen $a in CC$ falls $forall epsilon > 0$ $exists N in NN$ mit $|a_n - a| < epsilon$ $forall n >= N$. Äquivalent: $\{n in NN^* : a_n in.not ]l-epsilon, l+epsilon[\}$ endlich. Falls $(S_n)$ gegen $S$ konvergiert: $S = sum_(n=1)^oo a_n$.
  ]

  #Bsp
  #enum(
    [Sei $k in NN$, $a_n = n^k q^n$, $0 <= |q| < 1 => lim_(n -> oo) a_n = 0$],
    [Sei $c >= 1$, $a_n = c^n / (n!) => lim_(n -> oo) a_n = 0$],
    [Sei $b in ZZ$, $lim_(n -> oo) (1 + 1/n)^b = 1$],
  )


  #tbox[#Satz Konvergente Folge ist immer *beschränkt* (nicht umkehrbar!) und hat *genau* einen Grenzwert.]

  #key[#Bem $a_n$ konv. $=> b_n = a_(n+1) - a_n$ konv.]

  #tbox[
    #Satz (Sandwich) $lim a_n = lim c_n = alpha$ und $a_n <= b_n <= c_n$ $forall n >= k$ $=>$ $lim b_n = alpha$.
  ]

  #Satz Falls $(b_n)_(n >= 1)$ gegen $0$ konvergiert und $|a_n - a| <= b_n$, dann konvergiert $(a_n)_(n >= 1)$ gegen $a$.

  #Satz Seien $a = lim a_n$, $b = lim b_n$:

  #enum(
    [$lim(a_n+b_n) = a+b$],
    [$lim(a_n b_n) = a b$],
    [$b != 0 => lim(a_n/b_n) = a/b$],
    [$a_n <= b_n => a <= b$],
  )
]

== Weierstrass Theorem
#concept-block[
  #Def $(a_n)$ ist monoton wachsend [fallend] falls $a_n <= a_(n+1)$ [$a_n >= a_(n+1)$], $forall n >= 1$.

  #tbox[
    #Satz Sei $(a_n)$ monoton wachsend und nach oben beschränkt, dann konvergiert $(a_n)$ mit $lim a_n = sup{a_n : n >= 1}$. [Analog monoton fallend und nach unten beschränkt $->$ inf.]
  ]
]

== Bolzano-Weierstrass Theorem
#concept-block[
  #Def Eine *Teilfolge* von $(a_n)_(n >= 1)$ ist $(a_(l(n)))$ mit $l : NN^* -> NN^*$ streng wachsend.

  #Satz Jede beschränkte Folge besitzt eine konvergente Teilfolge.

  Sei für jedes $n >= 1$: $b_n = inf{a_k : k >= n}$ und $c_n = sup{a_k : k >= n}$.
  $ liminf_(n -> oo) a_n := lim b_n quad "und" quad limsup_(n -> oo) a_n := lim c_n $
  Ist $liminf = limsup$ $=> exists lim$ mit gleichem Wert.

  #Def Ein *abgeschlossenes Intervall* hat die Form $[a,b]$, $]-oo,b]$, $[a,oo[$, $]-oo,oo[$. Länge $L([a,b]) = b-a$.

  #Satz (Cauchy-Cantor) $I_1 supset.eq I_2 supset.eq dots$ abg. Intervalle mit $L(I_1) < oo$: $inter.big_(n >= 1) I_n != nothing$. Ist $lim L(I_n) = 0$, so enthält der Schnitt genau einen Punkt.
]

== Cauchy-Kriterium (Folgen)
#concept-block[
  #tbox[
    #Satz $(a_n)$ ist genau dann konvergent (*Cauchy-Folge*), falls
    $ forall epsilon > 0, exists N >= 1 "so dass" |a_n - a_m| < epsilon quad forall n,m >= N $
  ]

  Für Cauchy-Folge:
  - $=>$ beschränkt
  - $<=>$ konvergent.

  #Bem $a_n = sum_(i=1)^n 1/i$ konvergiert nicht, aber $|a_(n+1) - a_n|$ konvergiert.
]

== Strategie Folgenkonvergenz
#concept-block[
  #enum(
    [*Brüche:* grösste Potenz von $n$ ausklammern und kürzen.],
    [*Wurzeln:* mit Konjugierter erweitern, $sqrt(a)-sqrt(b) = (a-b)/(sqrt(a)+sqrt(b))$.],
    [Sandwich-Theorem anwenden.],
    [Referenz-Folgen vergleichen.],
    [*Rekursive Folgen:* Weierstrass anwenden, Schranke per Induktion.],
    [Cauchy-Kriterium.],
    [Konvergenten Majoranten suchen.],
    [Ratio Test],
  )

  #Bsp $d_1 = 3$, $d_(n+1) = sqrt(3d_n-2)$: Grenzwert $d = sqrt(3d-2)$, also $d=2$.

  *Divergenz:* #enum([Divergenten Minoranten suchen], [Für alternierende Folgen: $lim a_(p_1(n)) != lim a_(p_2(n))$])

  #tbox[
    *Stolz-Cesàro* (diskretes L'Hospital): $(b_n)$ streng wachsend mit $b_n -> +oo$ (oder $a_n, b_n -> 0$). Falls $lim (a_(n+1)-a_n)/(b_(n+1)-b_n) = L$, dann $lim a_n/b_n = L$.

    *Cesàro-Mittel:* $a_n -> L$ $=>$ $1/n sum_(k=1)^n a_k -> L$ (Spezialfall $b_n = n$).
  ]
]

== Asymptotik & Wachstum
#concept-block[
  #key[*Reduktionsprinzip:* Im Grenzwert-Rennen und unter $root(n, dot)$ zählt nur der dominante Term; Poly-, Konst- und Log-Faktoren $->1$ (da $n^(1\/n)->1$, $a^(1\/n)->1$, $(ln n)^(1\/n)->1$).]

  #tbox[
    *Wachstums-Hierarchie* ($n->oo$; $alpha,beta>0$, $q>1$):
    $ ln^alpha n << n^beta << q^n << n! << n^n $
  ]

  #tbox[
    *Ratio $->$ Wurzel:* existiert $lim |a_(n+1)/a_n|$ ($a_n>0$), so existiert $lim root(n, a_n)$ und ist gleich. #light[($=>$ Wurzellimit via Quotient; Basis des Konvergenzradius-Shortcuts.)]
  ]

  #Bem #light[Stirling $n! tilde sqrt(2 pi n)(n\/e)^n$ $->$ "Nützliche Formeln"; Wurzel-/Wachstumswerte ($root(n, n!)\/n->1\/e$, $(a^n + b^n)^(1\/n)->max$, …) $->$ "Typische Grenzwerte".]
]

== Landau-Symbole
#concept-block[
  Für $x -> x_0$ (bzw. $n -> oo$): $f = O(g)$ falls $|f| <= C|g|$ lokal; $f = o(g)$ falls $f\/g -> 0$; $f tilde g$ falls $f\/g -> 1$.

  #key[*Kalkül* ($x->0$): Negligibles verschmelzen — $o(x^n) plus.minus o(x^n)$, $c dot o(x^n)$ und $o(x^m)$ mit $m >= n$ sind alle $o(x^n)$ (Konstanten egal). Multiplikation addiert Ordnungen: $x^m dot o(x^n) = o(x^m) dot o(x^n) = o(x^(m+n))$.]

  #key[#Bem *Grenzwerte:* Taylor bis zur ersten nicht-verschwindenden Ordnung, Rest als $o(dots)$ mitschleppen. Bsp $(e^x-1-x)/x^2 = (x^2\/2 + o(x^2))/x^2 -> 1/2$.]
]

== Rechnen mit Reihen
#concept-block[
  #tbox[
    #Satz Seien $sum a_k$, $sum b_j$ konvergent, $alpha in CC$: #enum([$sum(a_k+b_k) = sum a_k + sum b_j$], [$sum(alpha a_k) = alpha sum a_k$.])
  ]

  #tbox[
    #Satz Die Reihe $sum_(k=1)^oo a_k$ konvergiert $<=>$
    $forall epsilon > 0, exists N >= 1$ mit $lr(|sum_(k=n)^m a_k|) < epsilon$ $forall m >= n >= N$

    *Nullfolgenkriterium* $sum a_n$ divergiert falls $lim a_n != 0$.
  ]

  #Kor Sei $a_n >= 0$: $sum_(n=1)^oo a_n$ konvergiert $<=>$ $(s_n)$ ist v.o.b. Falls $0 <= b_n <= a_n$ und $sum a_n$ konvergiert, so konvergiert auch $sum b_n$.
]

== Absolute Konvergenz und Kriterien
#concept-block[
  #tbox[
    #Def $sum a_k$ (*$a_n in CC$*) heisst *absolut konvergent*, falls $sum |a_k|$ konvergiert. Abs. konvergent $=>$ konvergent und $lr(|sum a_k|) <= sum |a_k|$.
  ]

  #tbox[
    #Kor (Vergleichssatz) $0 <= a_k <= b_k$ $forall k >= K$: $sum b_k$ konv. $=> sum a_k$ konv.; $sum a_k$ div. $=> sum b_k$ div.
  ]

  #tbox[
    #Satz (Leibnitz) $(a_n)$ monoton fallend, $a_n >= 0$, $lim a_n = 0$:

    $S = sum(-1)^(k+1) a_k$ konvergiert und $a_1 - a_2 <= S <= a_1$.

    Restglied: $lr(|sum_(k=n+1)^oo (-1)^(k+1) a_k|) <= a_(n+1)$.
  ]

  #key[
    #Satz (Dirichlet) Abs. konv. $=>$ jede Umordnung konv. mit gleichem Wert. \
    #Satz (Riemann) Nur konv. $=>$ es gibt Umordnung zu beliebigem $x in RR$.
  ]

  #tbox[
    *Quotientenkriterium:* $limsup |a_(n+1)/a_n| < 1$ $=>$ abs. konv.; $liminf > 1$ $=>$ div.

    *Wurzelkriterium:* $limsup root(n, |a_n|) < 1$ $=>$ abs. konv.; $> 1$ $=>$ div.
  ]

  #tbox[
    *Grenzwertvergleich:* $a_n, b_n > 0$, $L = lim a_n\/b_n$. $L in ]0,oo[$: $sum a_n$, $sum b_n$ gleiches Verhalten. $L=0$: $sum b_n$ konv. $=> sum a_n$ konv. $L=oo$: $sum b_n$ div. $=> sum a_n$ div.
  ]

  #tbox[
    *Dirichlet / Abel* (für $sum a_n b_n$): (D) Partialsummen $sum_(k=1)^n a_k$ beschränkt $+$ $(b_n)$ monoton mit $b_n -> 0$ $=>$ konv. (A) $sum a_n$ konv. $+$ $(b_n)$ monoton & beschränkt $=>$ konv.
  ]

  #tbox[
    *Verdichtung (Cauchy):* $a_n >= 0$ monoton fallend $=>$ ($sum a_n$ konv. $<=>$ $sum 2^n a_(2^n)$ konv).
  ]

  #Bsp $a_n = z^n/(n!)$: $|a_(n+1)/a_n| = |z|/n -> 0$ $=>$ $sum z^n/(n!)$ konvergiert $forall z in CC$.
]

== Reihen-Implikationen (Gegenbeispiele)
#concept-block[
  Sei $sum a_n$ Reihe, $(b_n)$ beschränkt.

  #tbox[
    #Bem $sum a_n$ konv. $+ (b_n)$ beschr. $arrow.r.double.not$ $sum a_n b_n$ konv. \
    Gegenbsp: $a_n = (-1)^n/n$, $b_n = (-1)^n => a_n b_n = 1/n$ div.
  ]

  #key[#Bem $sum a_n$ abs. konv. $+ (b_n)$ beschr. $=> sum a_n b_n$ abs. konv. (da $|a_n b_n| <= M |a_n|$).]

  #tbox[
    #Bem $sum a_n^2$ konv. $arrow.r.double.not$ $sum a_n$ abs. konv. \
    Gegenbsp: $a_n = 1/n$.
  ]

  #tbox[
    #Bem $sum a_n$ konv. $arrow.r.double.not$ $sum a_n^2$ konv. \
    Gegenbsp: $a_n = (-1)^n/sqrt(n)$ (Leibniz), $a_n^2 = 1/n$ div.
  ]
]

== Potenzreihen
#concept-block[
  Potenzreihe: $sum_(k=0)^oo c_k z^k$.
  #tbox[
    *Konvergenzradius $rho$ — Rezept.*
    #enum(
      [*Immer gültig* (Cauchy-Hadamard): $1\/rho = limsup_(k) root(k, |c_k|)$ — existiert stets ($rho=+oo$ falls $=0$; $rho=0$ falls $=oo$).],
      [*Shortcut:* $rho = lim_(k) |c_k\/c_(k+1)|$ — nur falls Limit existiert #emph[und] $c_k != 0$ ab einem $k$.],
    )
    #key[*Reflex:* Poly-/Konst-/Log-Faktoren in $c_k$ streichen ($root(k, dot)->1$); nur exp. Wachstum zählt $->$ Asymptotik.]
  ]

  #tbox[
    *Shortcut scheitert?*
    #enum(
      [*Lücken* (fehlende Potenzen: $sum a_n x^(2n)$, $sum x^(n^2)$): Koeff.-Formel gibt $0/0$. $->$ Quotiententest auf die #emph[Terme], bzw. Subst. $u=x^2$, dann $rho_x=sqrt(rho_u)$.],
      [*$|c_n|$ oszilliert* (z.B. $2^n$/$3^n$ alternierend): kein Quotientenlimit $->$ nur $limsup$-Wurzel, $rho=1\/max$.],
    )
  ]

  #Kor Konvergiert absolut für $|z| < rho$, divergiert für $|z| > rho$.

  #key[*Rand $|z|=rho$:* separat prüfen $->$ Leibniz / $p$-Reihe / Vergleich. #emph[Jetzt] zählen die zuvor gestrichenen Poly-Faktoren! ($sum x^n\/n$ div. bei $x=1$, $sum x^n\/n^2$ konv.)]

  #Satz $f(x) = sum c_k x^k$ mit $rho > 0$ konvergiert gleichmässig auf $[-rho,rho]$; $f : ]-rho,rho[ -> RR$ ist stetig.

  #Bem Absolut konvergente Potenzreihen sind stetig.

  #tbox[
    #Def *Cauchy Produkt:* $sum_(i=0)^oo a_i dot sum_(j=0)^oo b_j = sum_(n=0)^oo sum_(j=0)^n a_(n-j) b_j$. Falls beide konvergieren, mind. 1 davon absolut, konvergiert auch das Produkt.
  ]

  #Satz (Vertauschung) Sei $f_n : NN -> RR$, $f(j) := lim_(n->oo) f_n(j)$ existiert $forall j$, und $|f_n(j)| <= g(j)$ mit $sum g(j) < oo$. Dann gilt $sum_(j=0)^oo f(j) = lim_(n->oo) sum_(j=0)^oo f_n(j)$.
]

== Strategie Reihenkonvergenz
#concept-block[
  #enum(
    [Spezielle Reihe? (Geometrisch, Teleskop, Harmonisch, $zeta$-Funktion)],
    [Ist $lim a_n = 0$? (Nullfolgenkriterium)],
    [Quotienten- oder Wurzelkriterium anwendbar?],
    [Konvergierender Majorant / divergierender Minorant?],
    [Leibnitz anwenden?],
    [Integral Test: $f$ stetig, positiv, monoton fallend auf $[k,oo[$, $f(n) = a_n$: $integral_k^oo f dif x$ konv. $<=>$ $sum a_n$ konv.],
  )

  #key[*Nach Termtyp:* $n!$ oder $c^n$ $->$ Quotient; $(dots)^n$ $->$ Wurzel; $tilde 1\/n^p$ $->$ $p$-Reihe/$zeta$; alternierend $->$ Leibniz; $a_n b_n$ $->$ Dirichlet/Abel.]
]
