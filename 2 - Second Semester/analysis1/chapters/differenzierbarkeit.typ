#import "../preamble.typ": *

= Differentialrechnung

#tbox[
  *Extremalstelle:* eine Stelle $x_0$, an der $f$ ein lokales Maximum oder Minimum annimmt.
]

== Differenzierbarkeit
#concept-block[
  #tbox[
    $f$ ist in $x_0$ *differenzierbar*, falls $lim_(x->x_0)(f(x)-f(x_0))/(x-x_0) = lim_(h->0)(f(x_0+h)-f(x_0))/h$ existiert. Dieser Grenzwert heisst $f'(x_0)$.
  ]

  #tbox[
    #Satz (Weierstrass) Äquivalent: $exists c in RR$ und $r: D -> RR$ mit $ f(x) = f(x_0) + c(x-x_0) + r(x)(x-x_0), $ $ r(x_0) = 0, $ $r$ stetig in $x_0$. Dann $c = f'(x_0)$.

    Äquivalent: $exists phi(x)$ stetig in $x_0$ mit $ f(x) = f(x_0) + phi(x)(x-x_0) $ und $phi(x_0) = f'(x_0)$.
  ]

  #Kor $f$ differenzierbar in $x_0$ $=>$ $f$ stetig in $x_0$.

  #tbox[$f : D -> RR$ ist *in $D$ differenzierbar*, falls für jeden Häufungspunkt $x_0 in D$, $f$ in $x_0$ differenzierbar ist.]

  #Kor *(Umkehrsatz)* Sei $f: D -> E$ bijektiv, $x_0$ HP, $f$ diff. in $x_0$ mit $f'(x_0) != 0$, und $f^(-1)$ stetig in $y_0 = f(x_0)$. Dann ist $y_0$ HP von $E$, $f^(-1)$ diff. in $y_0$ und $ (f^(-1))'(y_0) = 1/(f'(f^(-1)(y_0))) $

  #Bem Tangentengleichung: $y = f(x_0) + f'(x_0)(x-x_0)$.

  *Rechenregeln:*
  1. $(f+g)' = f'+g'$
  2. $(f g)' = f'g + g'f$ #light[(Produktr.)]
  3. $(f/g)' = (f'g-f g')/g^2$ #light[(Quotientenr.)]
  4. $(g compose f)' = g'(f) dot f'$ #light[(Kettenr.)]
  5. #key[$(f^(-1))'(y_0) = 1/(f'(x_0)), space y_0 = f(x_0)$] #light[(Umkehrr.)]
  6. $(a^f)' = ln(a) dot a^f dot f'$
  7. $(f^g)' = f^g [ln(f) dot g]'$.

  #tbox[#key[#Bem *Umkehrregel — richtige Stelle!* $f'$ wird an der #emph[Urbildstelle] $x_0 = f^(-1)(y_0)$ ausgewertet, #emph[nicht] an $y_0$: $ (f^(-1))'(y_0) = 1/(f'(f^(-1)(y_0))). $ Geometrisch: Graph von $f^(-1)$ ist Spiegelung von $f$ an $y=x$, Steigungen werden zu Kehrwerten. Waagrechte Tangente ($f'(x_0)=0$) $->$ senkrechte $=>$ $f^(-1)$ dort nicht diff. #Bsp $f(x)=x^3$: $(f^(-1))'(8) = 1/(f'(2)) = 1/12$ #light[(nicht $1/(f'(8))$!)].]]
]

== Aussagen der Ableitung
#concept-block[
  Sei $f$ differenzierbar auf $D$:
  - Lok. Maximum: $f'(x_0)=0$ und $f''(x_0)<0$
  - Lok. Minimum: $f'(x_0)=0$ und $f''(x_0)>0$
  - Wendepunkt: $f''(x_0) = 0$, $x_0$ keine Extremalstelle
  - Sattelpunkt: $f'(x_0) = 0$, $f''(x_0) = 0$

  Für $f,g:[a,b]->RR$ stetig, in $]a,b[$ diff.: (1) $f'=0$ $forall ]a,b[$ $=>$ $f$ konstant; (2) $f'=g'$ $forall ]a,b[$ $=>$ $f=g+c$; (3) $f' <= 0$ $=>$ $f$ [streng] monoton fallend; (4) $f' >= 0$ $=>$ $f$ [streng] monoton wachsend.

  #Satz (Rolle) $f:[a,b]->RR$ stetig, in $]a,b[$ diff., $f(a)=f(b)$ $=> exists epsilon in ]a,b[$ mit $f'(epsilon)=0$.

  #Satz (Mittelwertsatz) $exists epsilon in ]a,b[$ mit $f(b)-f(a) = f'(epsilon)(b-a)$.

  #Satz (Verallg. MWS, Cauchy) $f,g$ stetig auf $[a,b]$, diff. auf $]a,b[$, $g' != 0$: $exists epsilon in ]a,b[$ mit $ (f(b)-f(a))/(g(b)-g(a)) = (f'(epsilon))/(g'(epsilon)) $ ($g(x)=x$ liefert gew. MWS; Basis von L'Hospital).

  #key[#Bem *Hypothesen prüfen!* Rolle/MWS/ZWS brauchen Stetigkeit auf dem #emph[abgeschlossenen] $[a,b]$. Ist $f$ nur auf $]a,b[$ diff. (somit nur dort stetig), ohne garantierte Stetigkeit in den Randpunkten, gilt #emph[keiner] der Sätze.]

  #key[#Bem *Strategie (Existenz $f'(c) = E(c)$):* Konstruiere Hilfsfunktion $g$ so, dass $E$ zu $g'$ wird, dann Rolle/MWS auf $g$ anwenden. Bsp: $g = arctan(f)$ macht aus $pi/4 (1+f^2)$ gerade $g'$.]
]

== Grenzwert-Dispatch
#concept-block[
  Erst *einsetzen*. Unbestimmt $->$ Form erkennen, dann:
  #tbox[
    #table(
      columns: (auto, 1fr),
      stroke: 0.3pt,
      align: (left + horizon, left + horizon),
      [$0/0$, $oo/oo$], [L'Hospital #emph[oder] Taylor. #light[Taylor bei $x->0$ oft schneller; L'H nur falls $f'\/g'$-Limit existiert.]],
      [$0 dot oo$], [als $0/0$ bzw. $oo/oo$ schreiben, dann L'H/Taylor],
      [$oo - oo$], [gemeins. Nenner; oder dominanten Term ausklammern; oder $f/g=(1\/g)/(1\/f)$],
      [$1^oo, 0^0, oo^0$], [$exp(lim g ln f)$ #light[(Basis-Trick)]],
      [$x->oo$, Poly/Exp/Log], [dominanter Term, Rest $->0$ #light[(Hierarchie $->$ Asymptotik)]],
      [$x->oo$ unübersichtl.], [Subst. $u=1/x -> 0$],
      [Muster bekannt], [$->$ Tab. "Typische Grenzwerte" ($(sin x)/x$, $(e^x - 1)/x$, $(1 + 1/x)^x$)],
      [$root(n, dot)$ / Produkt $product$], [$ln$ $->$ Summe (evtl. Riemannsumme); Wurzel-Limites $->$ Asymptotik],
      [rekursiv $a_(n+1)=f(a_n)$], [Fixpunkt $c=f(c)$ — #emph[nur nach] Konvergenzbeweis (Weierstrass)],
    )
  ]
  #key[*Reflex:* nur der dominante Wachstumstyp zählt $->$ Asymptotik & Wachstum.]
]

== L'Hospital
#concept-block[
  #tbox[
    #Satz Falls $lim_(x->b^-) f = lim_(x->b^-) g = 0$ und $lim_(x->b^-) f'/g' = lambda$ existiert:
    $ lim_(x->b^-) f(x)/g(x) = lim_(x->b^-) f'(x)/g'(x) = lambda $
  ]

  Gilt auch für $b=+oo$, $x->a^+$, $lambda=+oo$, oder $lim f = lim g = oo$. #light[(Routing $->$ Grenzwert-Dispatch.)]

  *Substitution:* unübersichtliche Grenze $x->oo$ via $u=1/x$ auf $u->0$ bringen. Bsp $lim_(x->oo) x^2(1-cos(1/x)) = lim_(u->0)(1-cos u)/u^2 = 1/2$.

  #Bsp $lim_(x->0)(1/(sin x) - 1/x) = lim_(x->0)(x-sin x)/(x sin x)$
]

== Konvexität und Höhere Ableitungen
#concept-block[
  $f$ ist [streng] *konvex* auf $I$ falls $f(lambda x + (1-lambda)y) <= [<] lambda f(x) + (1-lambda)f(y)$.

  1. Summe konvexer Funktionen ist konvex.
  2. $f$ konvex $<=>$ für $x_0 <= x <= x_1$ in $I$: $(f(x)-f(x_0))/(x-x_0) <= (f(x_1)-f(x))/(x_1-x)$. (3) $f$ konvex $<=>$ $f'$ monoton wachsend $<=>$ $f'' >= 0$.

  #Bem Alle Aussagen gelten analog für *Konkavität* (Ungleichzeichen umkehren).

  #key[#Satz (Jensen) $f$ konvex, $lambda_k >= 0$, $sum_(k) lambda_k = 1$: $f(sum_k lambda_k x_k) <= sum_k lambda_k f(x_k)$. (Konkav: $>=$.)]

  #Def $f$ ist *$n$-mal differenzierbar* in $D$, falls $f^((n-1))$ in $D$ differenzierbar ist; $n$-mal diff. $=>$ $(n-1)$-mal stetig diff. $f$ ist *glatt*, falls $n$-mal diff. $forall n >= 1$.

  #Bem Alle Polynome sowie $e^x$, $sin$, $cos$ sind glatte Funktionen.

  *Höhere Ableitungsregeln:*
  1. $(f+g)^((n)) = f^((n)) + g^((n))$
  2. $(f dot g)^((n)) = sum_(k=0)^n binom(n, k) f^((k)) dot g^((n-k))$ (Leibniz)
  3. $f/g$ ist $n$-mal diff. falls $g != 0$
  4. $g compose f$ ist $n$-mal diff.

  #Bem Für gerade $k$: $cosh^((k))(x) = cosh(x)$; für ungerade $k$: $cosh^((k))(x) = sinh(x)$. Analog für $sinh$.

  #Satz Sei $(f_n)$ eine Folge einmal stetig differenzierbarer Funktionen. Falls $(f_n)$ und $(f_n')$ beide gleichmässig konvergieren mit $lim f_n = f$ und $lim f_n' = p$, dann ist $f$ stetig diff. und $f' = p$.

  #tbox[
    #Satz Sei $sum c_k (x-x_0)^k$ eine Potenzreihe mit Konvergenzradius $rho > 0$.
    Dann ist $f(x) = sum_(k>=0) c_k (x-x_0)^k$ auf $]x_0-rho, x_0+rho[$ differenzierbar
    und
    $ f'(x) = sum_(k>=1) k c_k (x-x_0)^(k-1). $
    Die abgeleitete Reihe hat denselben Konvergenzradius $rho$. Iteriert folgt:
    $f$ ist glatt auf $]x_0-rho, x_0+rho[$ und stimmt dort mit ihrer Taylorreihe überein,
    d.h. $c_k = f^((k))(x_0) \/ k!$.
  ]
]

== Taylor Approximation
#concept-block[
  #tbox[
    Sei $f:[a,b]->RR$ stetig, in $]a,b[$ $(n+1)$-mal diff. $forall a < x <= b$ $exists epsilon in ]a,x[$:
    $ f(x) = sum_(k=0)^n (f^((k))(a))/(k!)(x-a)^k + (f^((n+1))(epsilon))/((n+1)!)(x-a)^(n+1) $
  ]

  #Bem Der Restterm wird zur Fehlerabschätzung verwendet: $epsilon in ]a,x[$ so wählen, dass Fehler maximal.

  #key[#Bem *Zusammengesetzte Taylor:* bekannte Reihen einsetzen/multiplizieren statt ableiten. Bsp: $sin(x y) = x y - (x y)^3/3! + dots$; $e^x sin x = (1+x+x^2/2+dots)(x-x^3/6+dots) = x + x^2 + x^3/3 + dots$ (bis Grad $n$ ausmultiplizieren).]

  Sei $f'(x_0) = dots = f^((n))(x_0) = 0$, $f$ $(n+1)$-mal stetig diff. auf $]a,b[$:
  1. Falls $n$ *gerade* und $x_0$ lokale Extremalstelle $=>$ $f^((n+1))(x_0) = 0$.
  2. Falls $n$ *ungerade* und $f^((n+1))(x_0) > 0$: striktes lok. Minimum; $< 0$: striktes lok. Maximum.
]
