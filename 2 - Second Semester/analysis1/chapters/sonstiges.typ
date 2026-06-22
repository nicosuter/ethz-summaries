#import "../preamble.typ": *

= Sonstiges

== Injektiv / Surjektiv
#concept-block[
  *Injektiv:* $f(a)=f(b) => a=b$. *Surjektiv:* $forall y in Y$ $exists x : f(x)=y$. *Bijektiv:* beides.

  *Komposition:* $g compose f$ injektiv $=> f$ injektiv; $g compose f$ surjektiv $=> g$ surjektiv. Sind $f, g$ bijektiv, so ist $g compose f$ bijektiv mit $(g compose f)^(-1) = f^(-1) compose g^(-1)$.

  #key[#Bem $f$ injektiv und $g$ surjektiv liefert #emph[nicht] $g compose f$ bijektiv.]

  #Satz Sei $I subset.eq RR$ Intervall, $f: I -> RR$ stetig. Dann: $f$ injektiv $<=>$ $f$ streng monoton.

  #Bem $f' > 0$ auf $I$ $=>$ $f$ streng monoton wachsend (#emph[nur] diese Richtung; $f(x)=x^3$ ist streng wachsend mit $f'(0)=0$). Streng monoton $=>$ $f' >= 0$.

  *Surjektivität* (Bildbereich $]a,b[$): (1) $lim_(x->oo) f = b$, $lim_(x->-oo) f = a$ zeigen; (2) Für beliebiges $y in ]a,b[$: $exists x_1 < x_2$ mit $f(x_1) < y < f(x_2)$, ZWS liefert $exists c: f(c)=y$.
]

#colbreak()
== Nützliche Formeln
#concept-block[
  $a x^2+b x+c=0 => x = (-b plus.minus sqrt(b^2-4 a c))/(2a)$

  $b^n-a^n = (b-a)(b^(n-1)+b^(n-2)a+dots+a^(n-1))$; $quad binom(n, k) = n!/((n-k)!k!)$; $quad sqrt(a_k dot a_(k+1)) <= (a_k+a_(k+1))/2$

  $(1+x)^n >= 1+n x$ (Bernoulli, $n in NN$, $x>-1$); $quad 2|x y| <= epsilon x^2 + 1/epsilon y^2$ (Young)

  $(x+y)^n = sum_(k=0)^n binom(n, k) x^(n-k) y^k$ (Binomial)

  *AM-GM:* $root(n, a_1 dots a_n) <= 1/n sum_(k=1)^n a_k$ ($a_k >= 0$); $quad$

  *Cauchy-Schwarz:* $(sum_k a_k b_k)^2 <= (sum_k a_k^2)(sum_k b_k^2)$.

  *Standard-Schranken:* $e^x >= 1+x$ $forall x$; $ln x <= x-1$ ($x>0$); $x/(1+x) <= ln(1+x) <= x$ ($x>-1$); $cos x >= 1-x^2/2$; $sin x <= x <= tan x$ auf $[0, pi/2[$.
]

== Exponential und Logarithmus
#concept-block[
  #tbox[
    $exp(z) = sum_(n=0)^oo z^n/(n!) = 1+z+z^2/2+dots = e^z$. $exp(z) = lim(1+z/n)^n$.
  ]
  1. $exp(x+y)=exp(x)exp(y)$
  2. $exp(x) > 1$ $forall x>0$
  3. $x^a = exp(a ln x)$, $x^0=1$
  4. $e^(i z)=cos z + i sin z$
  5. $e^(i pi/2)=i$, $e^(i pi)=-1$, $e^(2 i pi)=1$.

  $ln : ]0,oo[ -> RR$ ist Umkehrabbildung zu $exp$.
  1. $ln(1)=0$
  2. $ln(e)=1$
  3. $ln(a b)=ln a+ln b$
  4. $ln(a/b)=ln a - ln b$
  5. $ln(x^a)=a ln x$
  6. $x^a dot x^b = x^(a+b)$
  7. $(x^a)^b=x^(a b)$. $log_b a = ln a/ln b$.
  $ln(1+x) = sum_(n=1)^oo (-1)^(n-1)/n x^n$ $(-1 <= x <= 1)$.
]

== Trigonometrische Funktionen
#concept-block[
  $sin z = sum ((-1)^n z^(2n+1))/((2n+1)!) = (e^(i z)-e^(-i z))/(2i)$; $quad cos z = sum ((-1)^n z^(2n))/((2n)!) = (e^(i z)+e^(-i z))/2$

  #tbox[$sin, cos : RR -> RR$ stetig; beide Reihen absolut konvergent mit Konvergenzradius $+oo$.]

  1. $cos(-z)=cos z$, $sin(-z)=-sin z$
  2. $cos(pi-x)=-cos x$, $sin(pi-x)=sin x$
  3. $sin(z+w)=sin z cos w + cos z sin w$;
  4. $cos(z+w)=cos z cos w - sin z sin w$
  5. $cos^2+sin^2=1$
  6. $sin(2z)=2sin z cos z$
  7. $cos(2z)=cos^2 z - sin^2 z$.

  #block(breakable: false)[#table(
    columns: 10,
    stroke: 0.3pt,
    align: center,
    [$alpha$/deg], [0°], [30°], [45°], [60°], [90°], [120°], [150°], [180°], [270°],
    [$alpha$/rad], [0], [$pi/6$], [$pi/4$], [$pi/3$], [$pi/2$], [$(2pi)/3$], [$(5pi)/6$], [$pi$], [$(3pi)/2$],
    [$sin$], [0], [$1/2$], [$sqrt(2)/2$], [$sqrt(3)/2$], [1], [$sqrt(3)/2$], [$1/2$], [0], [-1],
    [$cos$], [1], [$sqrt(3)/2$], [$sqrt(2)/2$], [$1/2$], [0], [$-1/2$], [$-sqrt(3)/2$], [-1], [0],
    [$tan$], [0], [$sqrt(3)/3$], [1], [$sqrt(3)$], [—], [$-sqrt(3)$], [$-sqrt(3)/3$], [0], [—],
  )]

  #table(
    columns: 8,
    stroke: 0.3pt,
    align: center,
    [],
    [$-alpha$],
    [90°$-alpha$],
    [90°$+alpha$],
    [180°$-alpha$],
    [180°$+alpha$],
    [$k dot$360°$-alpha$],
    [$k dot$360°$+alpha$],

    [$sin$], [$-sin alpha$], [$cos$], [$cos$], [$sin$], [$-sin$], [$-sin$], [$sin$],
    [$cos$], [$cos$], [$sin$], [$-sin$], [$-cos$], [$-cos$], [$cos$], [$cos$],
    [$tan$], [$-tan$], [$cot$], [$-cot$], [$-tan$], [$tan$], [$-tan$], [$tan$],
  )

  $tan z = sin z/cos z$ ($z in.not pi/2+pi ZZ$); $cot z = cos z/sin z$ ($z in.not pi ZZ$). $quad tan(a plus.minus b) = (tan a plus.minus tan b)/(1 minus.plus tan a tan b)$.

  $sin(arctan x) = x/sqrt(x^2+1)$; $cos(arctan x) = 1/sqrt(x^2+1)$.

  *Produkt $->$ Summe:* $sin a cos b = 1/2[sin(a{+}b)+sin(a{-}b)]$; $cos a cos b = 1/2[cos(a{-}b)+cos(a{+}b)]$; $sin a sin b = 1/2[cos(a{-}b)-cos(a{+}b)]$.

  *Summe $->$ Produkt:* $sin a plus.minus sin b = 2 sin((a plus.minus b)/2) cos((a minus.plus b)/2)$; $cos a + cos b = 2 cos((a{+}b)/2) cos((a{-}b)/2)$; $cos a - cos b = -2 sin((a{+}b)/2) sin((a{-}b)/2)$.

  *Nullstellen:*
  $cos: pi/2+k pi$; $sin: k pi$.
  *Arc:* $arcsin, arctan : [-1,1] -> [-pi/2, pi/2]$; $arccos: [-1,1] -> [0,pi]$.

  $sin^2 x = (1-cos 2x)/2$; $cos^2 x = (1+cos 2x)/2$. $pi := inf{t > 0: sin t = 0}$; $sin(pi)=0$, $pi in ]2,4[$, $forall x in ]0,pi[$: $sin x > 0$.
]

== Hyperbol- und verwandte Funktionen
#concept-block[
  $cosh x = (e^x+e^(-x))/2$; $sinh x = (e^x-e^(-x))/2$; $tanh x = sinh x/cosh x$. $cosh^2-sinh^2=1$.

  *Additionstheoreme:* $sinh(a+b) = sinh a cosh b + cosh a sinh b$; $cosh(a+b) = cosh a cosh b + sinh a sinh b$.

  *Umkehrfunktionen:* $"arcsinh" x = ln(x+sqrt(x^2+1))$; $"arccosh" x = ln(x+sqrt(x^2-1))$ ($x>=1$); $"artanh" x = 1/2 ln((1+x)/(1-x))$ ($|x|<1$).

  Reduktionsformeln:
  $integral cos^n x dif x = (n-1)/n integral cos^(n-2) x dif x + (cos^(n-1) x sin x)/n$

  $integral sin^n x dif x = (n-1)/n integral sin^(n-2) x dif x - (cos x sin^(n-1) x)/n$

  Bogenlänge: $L = integral_a^b sqrt(1+(f'(x))^2) dif x$.
  $|sin x| <= |x|$, da $f(x)=x-sin x$, $f'(x)=1-cos x >= 0$, $f(0)=0$.
]

== (Un)gerade Funktionen
#concept-block[
  $f$ ist *gerade*, falls $f(-x) = f(x)$; *ungerade*, falls $f(-x) = -f(x)$.

  $f$ gerade $=>$ $f'$ ungerade; $f$ ungerade $=>$ $f'$ gerade.

  Gerade $f$: Taylor hat nur gerade Potenzen ($c_(2k+1)=0$). Ungerade $f$: nur ungerade Potenzen ($c_(2k)=0$, also $f(0)=0$).
]

== Bekannte Taylorreihen
#concept-block[
  #text(size: 5.5pt)[
    $
              e^x & = 1+x+x^2/2+x^3/(3!)+cal(O)(x^4); quad
                    sin x = x-x^3/(3!)+x^5/(5!)+cal(O)(x^7) \
            cos x & = 1-x^2/2+x^4/(4!)+cal(O)(x^6); quad
                    sinh x = x+x^3/(3!)+x^5/(5!)+cal(O)(x^7) \
           cosh x & = 1+x^2/2+x^4/(4!)+cal(O)(x^6); quad
                    tan x = x+x^3/3+(2x^5)/15+cal(O)(x^7) \
           tanh x & = x-x^3/3+(2x^5)/15+cal(O)(x^7); quad
                    ln(1+x) = x-x^2/2+x^3/3+cal(O)(x^4) \
      (1+x)^alpha & = 1+alpha x+(alpha(alpha-1))/2 x^2+cal(O)(x^3); quad
                    sqrt(1+x) = 1+x/2-x^2/8+cal(O)(x^3) \
         arctan x & = x-x^3/3+x^5/5+cal(O)(x^7); quad
                    arcsin x = x+x^3/6+(3x^5)/40+cal(O)(x^7) \
          1/(1-x) & = sum_(n>=0) x^n = 1+x+x^2+cal(O)(x^3); quad
                    1/(1-x)^2 = sum_(n>=0)(n+1)x^n
    $
  ]
]

== Typische Grenzwerte
#concept-block[
  #text(size: 5.5pt)[
    #table(
      columns: 2,
      stroke: 0.3pt,
      align: left,
      [$lim_(x->oo) 1/x = 0$], [$lim_(x->0)(1+x)^(1/x)=e$],
      [$lim_(x->oo) e^x = oo$], [$lim_(x->-oo) e^x = 0$],
      [$lim_(x->oo) e^(-x) = 0$], [$lim_(x->-oo) e^(-x) = oo$],
      [$lim_(x->oo) e^x/x^m = oo$], [$lim_(x->-oo) x e^x = 0$],
      [$lim_(x->oo) ln x = oo$], [$lim_(x->0) ln x = -oo$],
      [$lim_(x->oo)(1+x)^(1/x) = 1$], [$lim_(x->oo)(1+1/x)^b = 1$],
      [$lim_(x->oo) x^a q^x = 0$ ($0<=q<1$)], [$lim_(x->oo) root(x, x)=1$],
      [$lim_(x->plus.minus oo)(1+1/x)^x=e$], [$lim_(x->oo)(1-1/x)^x=1/e$],
      [$lim_(x->plus.minus oo)(1+k/x)^(m x)=e^(k m)$], [$lim_(x->0) sin(x)/x=1$],
      [$lim_(x->0) 1/cos x=1$], [$lim_(x->0)(cos x-1)/x=0$],
      [$lim_(x->0)(1-cos x)/x^2=1/2$], [$lim_(x->0)(e^x-1)/x=1$],
      [$lim_(x->0) x/arctan x=1$], [$lim_(x->oo) arctan x=pi/2$],
      [$lim_(x->oo)(x/(x+k))^x=e^(-k)$], [$lim_(x->0)(e^(a x)-1)/x=a$],
      [$lim_(x->0) ln(x+1)/x=1$], [$lim_(x->oo) ln x/x=0$],
      [$lim_(x->0) log(1-x)/x=-1$], [$lim_(x->1) ln x/(x-1)=1$],
      [$lim_(x->oo) log(x)/x^a=0$], [$lim_(x->oo) 2x/2^x=0$],
      [$lim_(x->0^+) x ln x=0$], [$lim_(x->0) a^x/x-1=ln a$],
      [$lim_(x->pi/2^-) tan x=+oo$], [$lim_(x->pi/2^+) tan x=-oo$],
      [$lim_(x->oo) sin(x)/x=0$], [$lim_(x->0^+) x ln x=0$],
      [$lim_(n->oo) a^(1/n)=1$ ($a>0$)], [$lim_(n->oo) (P(n))^(1/n)=1$],
      [$lim_(n->oo) root(n, n!)/n=1/e$], [$lim_(n->oo) n/root(n, n!)=e$],
      [$lim_(n->oo)(a^n+b^n)^(1/n)="max"(a,b)$], [$binom(2n, n) tilde 4^n/sqrt(pi n)$],
    )
  ]
]

== Typische Reihen
#concept-block[
  #table(
    columns: 2,
    stroke: 0.3pt,
    align: left,
    [$sum_(i=1)^n i = n(n+1)/2$], [$sum_(i=1)^n i^2 = n(n+1)(2n+1)/6$],
    [$sum_(i=1)^n i^3 = n^2(n+1)^2/4$], [$sum_(i=1)^oo 1/n^2 = pi^2/6$],
    [$sum_(i=1)^oo 1/(n(n+1)) = 1$], [$sum_(i=1)^oo z^i = (1-z^(i+1))/(1-z)$],
    [$sum_(k=0)^n q^k = (1-q^(n+1))/(1-q)$; $|q|<1: sum_(k=0)^oo q^k = 1/(1-q)$],
    [Versch. Start ($|q|<1$): $sum_(k=m)^oo q^k = q^m/(1-q)$],

    [$sum 1/n$ div.; $sum 1/n^s$ konv. $s>1$],
  )

  *Harmonisch:* $sum_(n=1)^oo 1/n$ divergent; alternierend $sum(-1)^n/n$ konvergent. *Zeta:* $zeta(s) = sum_(n=1)^oo 1/n^s$ konv. für $s>1$.

  *Teleskop:* $sum log(n/(n+1)) = log(1) - lim log(n+1) = -oo$.

  *Bekannte Werte:* $sum_(n=0)^oo 1/n! = e$; $quad sum_(n=0)^oo (-1)^n/(2n+1) = pi/4$ (Leibniz); $quad sum_(n=1)^oo (-1)^(n-1)/n = ln 2$; $quad sum_(n "ung.") 1/n^2 = pi^2/8$; $quad sum_(n=1)^oo 1/n^4 = pi^4/90$.

  *Harmonische Zahl:* $H_n = sum_(k=1)^n 1/k = ln n + gamma + 1/(2n) + O(1/n^2)$, $gamma approx 0.5772$ (Euler-Mascheroni).

  *Arithmetisch-geometrisch* ($|q|<1$): $sum_(n>=1) n q^n = q/(1-q)^2$; $quad sum_(n>=0)(n+1)q^n = 1/(1-q)^2$; $quad sum_(n>=1) n^2 q^n = (q(1+q))/(1-q)^3$.

  *Teleskop-Familie:* $sum_(n>=1) 1/(n(n+k)) = H_k/k$; $quad sum_(n>=1) 1/(n(n+1)(n+2)) = 1/4$.

  *Faulhaber (asympt.):* $sum_(k=1)^n k^p tilde n^(p+1)/(p+1)$, also $1/n^(p+1) sum_(k=1)^n k^p -> 1/(p+1)$. $quad zeta(6) = sum 1/n^6 = pi^6/945$.
]

== Ableitungen und Stammfunktionen
#concept-block[
  #text(size: 5.5pt)[
    #table(
      columns: 4,
      stroke: 0.3pt,
      align: center,
      [$F(x)$], [$f(x)$], [$F(x)$], [$f(x)$],
      [$x^a$], [$a x^(a-1)$], [$e^x$], [$e^x$],
      [$x^(a+1)/(a+1)$], [$x^a$], [$ln|x|$], [$1/x$],
      [$log_a |x|$], [$1/(x ln a)$], [$1/f(x)$], [$-f'(x)/f(x)^2$],
      [$(1/(a(n+1)))(a x+b)^(n+1)$], [$(a x+b)^n$], [$1/a ln|a x+b|$], [$1/(a x+b)$],
      [$sqrt(x)$], [$1/(2 sqrt(x))$], [$root(n, x)$], [$1/n x^(1/n-1)$],
      [$(2/3) x^(3/2)$], [$sqrt(x)$], [$(n/(n+1)) x^(1/n+1)$], [$root(n, x)$],
      [$sin x$], [$cos x$], [$cos x$], [$-sin x$],
      [$tan x$], [$1/cos^2 x$], [$cot x$], [$-1/sin^2 x$],
      [$ln|tan(x/2)|$], [$1/sin x$], [$ln|tan(x/2+pi/4)|$], [$1/cos x$],
      [$arcsin x$], [$1/sqrt(1-x^2)$], [$arccos x$], [$-1/sqrt(1-x^2)$],
      [$arctan x$], [$1/(1+x^2)$], [$(1/a)arctan(x/a)$], [$1/(x^2+a^2)$],
      [$x arcsin x + sqrt(1-x^2)$], [$arcsin x$], [$x arccos x - sqrt(1-x^2)$], [$arccos x$],
      [$sinh x$], [$cosh x$], [$cosh x$], [$sinh x$],
      [$tanh x$], [$1/cosh^2 x$], [$ln(cosh x)$], [$tanh x$],
      [$"arcsinh" x$], [$1/sqrt(1+x^2)$], [$"arccosh" x$], [$1/sqrt(x^2-1)$],
      [$-1/a cos(a x+b)$], [$sin(a x+b)$], [$(1/a)sin(a x+b)$], [$cos(a x+b)$],
      [$-ln|cos x|$], [$tan x$], [$ln|sin x|$], [$cot x$],
      [$tan x - x$], [$tan^2 x$], [$-cot x - x$], [$cot^2 x$],
      [$ln|f|$], [$f'/f$], [$x(ln|x|-1)$], [$ln|x|$],
      [$1/(n+1)(ln x)^(n+1)$], [$1/x (ln x)^n$], [$x^(n+1)/(n+1)(ln x - 1/(n+1))$], [$x^n ln x$],
      [$(1/(b ln a))a^(b x)$], [$a^(b x)$], [$(c x-1)/c^2 e^(c x)$], [$x e^(c x)$],
      [$(e^(c x)(c sin(a x+b)-a cos(a x+b)))/(a^2+c^2)$],
      [$e^(c x) sin(a x+b)$],
      [$(e^(c x)(c cos(a x+b)+a sin(a x+b)))/(a^2+c^2)$],
      [$e^(c x) cos(a x+b)$],

      [$(1/2)(x-sin x cos x)$], [$sin^2 x$], [$(1/2)(x+sin x cos x)$], [$cos^2 x$],
      [$arcsin(x/|a|)$], [$1/sqrt(a^2-x^2)$], [$(1/(2a))ln|(x-a)/(x+a)|$], [$1/(x^2-a^2)$],
      [$x/2 sqrt(a^2-x^2)+a^2/2 arcsin(x/a)$],
      [$sqrt(a^2-x^2)$],
      [$x/2 sqrt(x^2 plus.minus a^2) plus.minus a^2/2 ln|x+sqrt(x^2 plus.minus a^2)|$],
      [$sqrt(x^2 plus.minus a^2)$],

      [$ln(x+sqrt(x^2 plus.minus a^2))$], [$1/sqrt(x^2 plus.minus a^2)$], [$x arctan x - 1/2 ln(1+x^2)$], [$arctan x$],
      [$x^x (1+ln x)$], [$x^x$], [$(x^x)^x (x+2x ln x)$], [$(x^x)^x$],
    )
  ]
]

== Funktionen
#concept-block[
  #align(center)[#image("../funktionen.png", width: 100%)]
]
