#import "../preamble.typ": *

= Integralrechnung

== Das Riemann Integral
#concept-block[
  #tbox[
    Eine *Partition* $P$ von $[a,b]$ ist eine endliche Teilmenge mit ${a,b} subset.eq P$. Mit $delta_i = x_i - x_(i-1)$:
    $ s(f,P) = sum f_i delta_i, quad S(f,P) = sum F_i delta_i $
    ($f_i = inf$, $F_i = sup$ von $f$ auf $[x_(i-1), x_i]$). Für Verfeinerungen $P'$: $s(f,P) <= s(f,P') <= S(f,P') <= S(f,P)$.

    Sei $s(f) = sup_P s(f,P)$ und $S(f) = inf_P S(f,P)$. $f$ ist *Riemann integrierbar* falls $s(f) = S(f) =: integral_a^b f(x) dif x$.

    *Alternativ:* $f$ integrierbar $<=>$ $forall epsilon > 0$, $exists P$: $S(f,P) - s(f,P) < epsilon$.
  ]

  1. $f$ stetig $=>$ integrierbar
  2. $f$ monoton $=>$ integrierbar
  3. $f+g$, $lambda f$, $f g$, $|f|$, $f/g$ (falls $|g| >= beta > 0$) integrierbar
  4. Jedes Polynom auf $[a,b]$ integrierbar, auch $P(x)/Q(x)$ falls $Q$ keine Nullstellen
  5. Sind $f,g$ in endlich vielen Punkten verschieden, sind entweder beide oder keine integrierbar.

  $ integral_a^b(lambda_1 f + lambda_2 g) dif x = lambda_1 integral_a^b f dif x + lambda_2 integral_a^b g dif x $
]

== Riemannsummen erkennen
#concept-block[
  Für $f$ integrierbar auf $[a,b]$ (gleichmässige Partition):
  $ lim_(n->oo) (b-a)/n sum_(k=1)^n f(a + k (b-a)/n) = integral_a^b f(x) dif x $
  #key[Spezialfall $[0,1]$: $ lim_(n->oo) 1/n sum_(k=1)^n f(k/n) = integral_0^1 f(x) dif x $]
  #Bsp $lim_(n->oo) sum_(k=1)^n n/(n^2+k^2) = lim_(n->oo) 1/n sum_(k=1)^n 1/(1+(k\/n)^2) = integral_0^1 (dif x)/(1+x^2) = pi/4$.
]

== Rechnen mit Integralen
#concept-block[
  $ integral_a^b(lambda_1 f + lambda_2 g) dif x = lambda_1 integral_a^b f dif x + lambda_2 integral_a^b g dif x $
  $
    integral_(a+c)^(b+c) f(x) dif x = integral_a^b f(t+c) dif t; quad integral_a^b f(c t) dif t = 1/c integral_(a c)^(b c) f(x) dif x
  $
  Seien $f,g$ beschränkt, integrierbar, $lambda in RR$: $f+g$, $lambda f$, $f g$, $|f|$, $max(f, g)$, $min(f, g)$, $f/g$ (falls $|g| >= beta > 0$) integrierbar.

  #key[*Symmetrie:* $integral_(-a)^a f = 0$ ($f$ ungerade), $= 2 integral_0^a f$ ($f$ gerade). *Spiegelung:* $integral_0^a f(x) dif x = integral_0^a f(a-x) dif x$.]
]

== Ungleichungen und Mittelwertsatz
#concept-block[
  1. $f <= g$ $=>$ $integral f <= integral g$
  2. $lr(|integral f dif x|) <= integral |f| dif x$;
  3. $lr(|integral f g dif x|) <= sqrt(integral f^2 dif x) dot sqrt(integral g^2 dif x)$.

  #tbox[
    #Satz (Mittelwertsatz) $f:[a,b]->RR$ stetig $=>$ $exists xi in [a,b]$ mit $integral_a^b f dif x = f(xi)(b-a)$.
  ]

  Für $f$ stetig, $g$ beschränkt integrierbar mit $g >= 0$: $exists xi in [a,b]$ mit $integral_a^b f g dif x = f(xi) integral_a^b g dif x$.
]

== Fundamentalsatz der Analysis
#concept-block[
  #tbox[
    Sei $f:[a,b]->RR$ stetig. Dann ist $F(x) = integral_a^x f(t) dif t$ stetig differenzierbar und $F'(x) = f(x)$. Es gibt eine Stammfunktion $F$ (eindeutig bis auf Konstante) mit $integral_a^b f dif x = F(b) - F(a)$.
  ]
]
== Fundamentalsatz (Leibniz-Form, mit Funktionsgrenzen)

Sei $h$ stetig, $a(x), b(x)$ differenzierbar. Dann:
$ dif / (dif x) integral_(a(x))^(b(x)) h(t) dif t = h(b(x)) dot b'(x) - h(a(x)) dot a'(x) $

#emph[Merke:] Integrand an oberer Grenze $times$ Ableitung oberer Grenze, minus dasselbe für untere Grenze.

Spezialfälle:
- Untere Grenze konstant: $dif / (dif x) integral_c^(b(x)) h = h(b(x)) b'(x)$
- Beide Grenzen konstant: Ableitung $= 0$
- Obere Grenze $= x$: $dif / (dif x) integral_c^x h = h(x)$ (Basis-FTC)

== Partielle Integration und Substitution
#concept-block[
  #tbox[
    $ integral_a^b f(x) g'(x) dif x = [f(x) g(x)]_a^b - integral_a^b f'(x) g(x) dif x $
  ]

  $arrow.t$ arc-/log-Funktion, $x^n$; $quad$ $arrow.b$ $x^n$, arc-Funk.; $quad$ "egal" $e^x$, $sin$, $cos$.

  #tbox[
    $ integral_a^b f(phi(t)) phi'(t) dif t = integral_(phi(a))^(phi(b)) f(x) dif x $
  ]

  #tbox[
    *Nützliche Substitutionen:*
    #list(
      [$e^x$, $sinh$, $cosh$: $t=e^(a x)$, $dif x = dif t\/(a t)$, dann $sinh=cosh=(t^2-1)\/(2t)$],
      [$log x$: $t=log x$, $x=e^t$, $dif x = e^t dif t$],
      [gerade $n$, $cos^n/sin^n$: $t=tan x$, $dif y=dif t\/(1+t^2)$, $sin^2=t^2\/(1+t^2)$, $cos^2=1\/(1+t^2)$],
      [ungerade $n$, $cos^n/sin^n$: $t=tan(x/2)$, $dif y=2 dif t\/(1+t^2)$, $sin=2t\/(1+t^2)$, $cos=(1-t^2)\/(1+t^2)$],
      [$sqrt(1-x^2)$: $x=sin t$ oder $cos t$],
      [$sqrt(1+x^2)$: $x=sinh t$],
    )
  ]

  #tbox[
    *Wallis:* $integral_0^(pi/2) sin^n x dif x = integral_0^(pi/2) cos^n x dif x = cases((pi/2) ((2m-1)!!)/((2m)!!) & n = 2m, ((2m)!!)/((2m+1)!!) & n = 2m+1)$

    *Reduktion:* $integral x^n e^x dif x = x^n e^x - n integral x^(n-1) e^x dif x$.
  ]

]

== Strategie - Berechnung von Integralen
#concept-block[
  *Bruchform:* (1) Vereinfachen, so dass einfacher Nenner entsteht. (2) Partialbruchzerlegung. (3) #key[$u'/(2sqrt u) -> sqrt u$ oder $u'/u -> log|u|$ erkennen].

  *Produktform:* (1) Partielle Integration anwenden (evtl. mehrmals). (2) Kettenregel verwenden.

  *Potenzen:* $integral f^c = integral(f^c dot 1)$ oder $integral(f^(c-1) dot f)$ umformen, dann partielle Integration.

  *Exponentenform:* $e slash log$ Trick: $f^g = e^(g ln f)$, wenn Variable im Exponenten.

  *Produkt mit $e$, $sin$, $cos$:* Mehrmals part. Int., wobei $sin slash cos$ immer $g'$ und $e$ immer $f$.

  *Summe im Integral:* Reihe herausziehen (gleichmässige Konvergenz nötig).
]

== Integration von konvergenten Reihen
#concept-block[
  Sei $f_n$ gleichmässig gegen $f$ konvergent: $lim integral_a^b f_n dif x = integral_a^b f dif x$.

  Wenn $sum f_n$ auf $[a,b]$ gleichmässig konvergiert: $sum integral_a^b f_n dif x = integral_a^b sum f_n dif x$.

  Sei $f(x) = sum c_k x^k$ mit $rho > 0$: $integral_0^x f(t) dif t = sum_(k=0)^oo c_k/(k+1) x^(k+1)$ $forall x in [-rho,rho]$.
]

== Stirling-Formel
#concept-block[
  $n! approx sqrt(2 pi n) (n/e)^n$; genauer $n! = sqrt(2 pi n) (n/e)^n exp(1/(12n) + R(n))$ mit $|R(n)| <= sqrt(3)/216 dot 1/n^2$.
]

== Uneigentliche Integrale
#concept-block[
  #tbox[
    $f:[a,oo[ -> RR$: integrierbar falls $lim_(b->oo) integral_a^b f dif x$ existiert. $f:]a,b] -> RR$: integrierbar falls $lim_(epsilon->0^+) integral_(a+epsilon)^b f dif x$ existiert.
  ]

  Auch hier kann das Minoranten/Majoranten-Kriterium verwendet werden.

  $f:[1,oo[ -> [0,oo[$ monoton fallend: $sum a_n$ konv. $<=>$ $integral_1^oo f dif x$ konv.

  #tbox[
    *Log-Potenz-Integral:* $integral_a^oo (dif x)/(x (ln x)^s)$ konvergiert $<=>$ $s > 1$ (Subst. $u = ln x -> integral u^(-s) dif u$). Verallgemeinert das Integralkriterium / die $zeta$-Reihe.
  ]

  #tbox[
    *Potenz-Dichotomie:* $integral_0^1 x^(-s) dif x$ konv. $<=>$ $s < 1$; $quad integral_1^oo x^(-s) dif x$ konv. $<=>$ $s > 1$.
  ]

  #key[*Gauss-Integral:* $integral_(-oo)^oo e^(-x^2) dif x = sqrt(pi)$, allg. $integral_(-oo)^oo e^(-a x^2) dif x = sqrt(pi\/a)$ ($a > 0$).]

  #Bsp $integral_0^1 t^x dif t = 1/(x+1)$ für $x>-1$; $integral_1^oo t^x dif t = -1/(1+x)$ für $x<-1$.
]

== Unbestimmte Integrale
#concept-block[
  Sei $f : I -> RR$ stetig. Dann gibt es eine Stammfunktion $F$ für $f$, eindeutig bis auf Konstante: $integral f(x) dif x = F(x) + C$. Das unbestimmte Integral ist die Umkehrung der Ableitung.
]

== Stammfunktionen rationaler Funktionen
#concept-block[
  $R(x) = P(x)/Q(x)$: erst Polynomdivision falls grad$(P) >=$ grad$(Q)$. Dann Partialbruchzerlegung:

  *Reelle Nullstelle* $gamma_i$ von $Q$: $integral 1/(x-gamma_i)^n dif x = cases(ln|x-gamma_i| & n=1, -1/((n-1)(x-gamma_i)^(n-1)) & n>1)$

  #key[#Bem *Zuhalte-Methode* (einfache Pole): Koeffizient von $1/(x-gamma)$ ist $A = lim_(x->gamma)(x-gamma)R(x)$, d.h. Faktor $(x-gamma)$ "zuhalten" und $x=gamma$ einsetzen; äquiv. $A = P(gamma)\/Q'(gamma)$.]

  $R(x) = sum_(k=1)^N R_k(x) + sum_(k=1)^M Z_k(x)$ ($N$ reelle, $M$ komplexe Nullstellen).

  *Komplexe Nullstelle* $alpha plus.minus i beta$: $(A+ B x)/((x-alpha)^2+beta^2)^j$ aufteilen in $(B(x-alpha))/((...)^j) + (A+ B alpha)/((...)^j)$.

  $integral (B(x-alpha))/((x-alpha)^2+beta^2)^j dif x = cases(B/2 ln((x-alpha)^2+beta^2) & j=1, B/(2(1-j)((x-alpha)^2+beta^2)^(j-1)) & j>1)$

  $integral (A+B alpha)/((x-alpha)^2+beta^2)^j dif x$: Substitution $(x-alpha) = beta t$ $->$ $(A+B alpha)/beta^(2j-1) integral 1/(t^2+1)^j dif t$.

  #Bsp $integral (x^2-x+2)/(x^3-x^2+x-1) dif x$: Nullstellen $(x-1)$ und $(x^2+1)$; Partialbruch $-> ln(x-1) - arctan(x) + C$.
]
