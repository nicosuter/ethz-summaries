#import "../preamble.typ": *

#colbreak()
= Beispiele

== DGl
=== Trennbar
#concept-block[
  $ y' = x y^2, y(0)=1 $

  Konst. Lösung $y equiv 0$ (hier verworfen). Trennen:
  $integral y^(-2) dif y = integral x dif x => -1/y = x^2/2 + C$. $y(0)=1 => C=-1$, also
  $y = 2/(2 - x^2)$ (lokal um $0$).
]

=== Linear 1.O
#concept-block[
  $ y' + y = e^x $
  $mu = e^(integral 1 dif x) = e^x$.
  $y = e^(-x)(integral e^x dot e^x dif x + C) = e^(-x)(e^(2x)/2 + C) = e^x/2 + C e^(-x)$.
]

=== Linear 2.O
#concept-block[
  $ y'' - y' - 2y = 0 $

  $lambda^2 - lambda - 2 = (lambda-2)(lambda+1) = 0$
  $=> y = c_1 e^(2t) + c_2 e^(-t)$.
]

=== Komplexe Wurzeln, AWP
#concept-block[
  $ y'' + 4y = 0, y(0)=1, y'(0)=0 $
  $lambda = plus.minus 2i$,
  $y = c_1 cos 2t + c_2 sin 2t$. $y(0)=c_1=1$; $y'(0) = 2 c_2 = 0 => c_2 = 0$. Also $y = cos 2t$.
]

=== Resonanz
#concept-block[
  $ y'' + y = cos t $
  Homogen $lambda = plus.minus i$: $y_h = c_1 cos t + c_2 sin t$.
  Da $cos t$ schon $y_h$ löst ($mu = i$ einfache Nullstelle), Ansatz $y_p = t(A cos t + B sin t)$.
  Einsetzen: $y_p'' + y_p = 2(-A sin t + B cos t) = cos t => A=0, B=1/2$.
  Also $y_p = t/2 sin t$ (unbeschränkt — Resonanz).
]

=== Inhomogen 3.O
#concept-block[
  $ u''' - u' = t^2 $

  Homogen: $r^3 - r = r(r-1)(r+1) = 0 => r = 0, 1, -1$, also $u_h = C_1 + C_2 e^t + C_3 e^(-t)$.

  Partikulär: RHS ist Polynom Grad 2, aber $r=0$ ist Nullstelle (Operator $D(D^2-1)$, $D$ tötet Konstanten) #h(0.3em)=>#h(0.3em) Ansatzgrad um 1 erhöhen, ohne konstanten Term (sonst in $C_1$ absorbiert):
  $ u_p = a t^3 + b t^2 + c t, quad u_p' = 3a t^2 + 2b t + c, quad u_p''' = 6a $
  Einsetzen: $u_p''' - u_p' = -3a t^2 - 2b t + (6a-c) = t^2$. Koeffizientenvergleich: $a=-1/3$, $b=0$, $c=-2$.

  $ u(t) = C_1 + C_2 e^t + C_3 e^(-t) - t^3/3 - 2t $

  #key[Steckt die Form der RHS schon in $y_h$ (hier: Polynom, weil $r=0$ Nullstelle ist), Ansatz mit $t$ multiplizieren — gleiche Regel wie bei $e^t$-Resonanz ($A t e^t$ statt $A e^t$, falls $r=1$ Nullstelle ist).]
]

== Komplexe Zahlen
#concept-block[
  #emph[Potenz (De Moivre).] $(1+i)^10$: mit $1+i = sqrt(2) e^(i pi\/4)$ folgt
  $(1+i)^10 = (sqrt(2))^10 e^(i 10 pi\/4) = 32 e^(i pi\/2) = 32 i$.

  #emph[Wurzeln, $w=1$.] $z^3 = 1$: $z in {1, e^(2 pi i\/3), e^(4 pi i\/3)} = {1, -1/2 plus.minus sqrt(3)/2 i}$.

  #emph[Wurzeln, Betrag $!= 1$.] $z^4 = -16 = 16 e^(i pi)$: $root(4, 16) = 2 => z_k = 2 e^(i(pi + 2 pi k)\/4)$, $k=0,dots,3$, d.h. $sqrt(2)(plus.minus 1 plus.minus i)$.

  #emph[Quadratwurzel algebraisch.] $z = -5i$: $(a+b i)^2 = z <=> a^2 - b^2 = 0$, $2 a b = -5 => plus.minus sqrt(5\/2)(1 - i)$.

  #emph[Trig-Identität (De Moivre).] $(cos phi + i sin phi)^3 = cos 3phi + i sin 3phi$ binomisch entwickeln: Realteil $cos 3phi = 4 cos^3 phi - 3 cos phi$, Imaginärteil $sin 3phi = 3 sin phi - 4 sin^3 phi$.

  #emph[Linearisierung.] $cos^2 phi = 1/4 (e^(i phi)+e^(-i phi))^2 = 1/2(1 + cos 2phi)$.
]

== Folgen
#concept-block[
  *Frage:* Sei $(a_k)_{k >= 1}$ monoton wachsend mit $a_1 = ln(4)$ und $a_(k+1) = exp(a_k) - 1$. Beweise: Folge konvergiert nicht.

  *Lösung:*
  Annahme: Folge konvergiert mit Grenzwert $c in RR$. Wegen Stetigkeit der Exponentialfunktion gilt im Grenzwert:
  $ c = exp(c) - 1. $
  Aus (i) folgt: $c = exp(c) - 1 <==> c = 0$.
  Wegen Monotonie gilt $forall k >= 1: a_k >= a_1 = ln(4)$.
  Daraus folgt $c >= ln(4)$. Widerspruch zu $c = 0$.
]
