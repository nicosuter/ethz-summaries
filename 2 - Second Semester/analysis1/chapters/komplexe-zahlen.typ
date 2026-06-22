#import "../preamble.typ": *

= Komplexe Zahlen

== Betrag, Konjugation, Polarform
#concept-block[
  $z = a + b i$, $a = "Re"(z)$, $b = "Im"(z)$. Konjugiert $bar(z) = a - b i$.

  $|z| = sqrt(a^2+b^2) = sqrt(z bar(z))$; $quad z bar(z) = |z|^2$; $quad 1/z = bar(z)/|z|^2$.

  *Rechenregeln:* $overline(z+w) = bar(z)+bar(w)$, $overline(z w) = bar(z) bar(w)$, $|z w| = |z||w|$, $|z+w| <= |z|+|w|$, $"Re"(z) = (z+bar(z))/2$, $"Im"(z) = (z-bar(z))/(2i)$.

  #tbox[
    *Polarform:* $z = r(cos phi + i sin phi) = r e^(i phi)$, $r = |z|$, $phi = arg(z) in ]-pi, pi]$ (Hauptwert).
  ]

  $
    arg(z) = cases(arctan(b\/a) & a > 0, arctan(b\/a) + pi & a < 0\, b >= 0, arctan(b\/a) - pi & a < 0\, b < 0, plus.minus pi/2 & a = 0)
  $

  *Multiplikation:* $r_1 e^(i phi_1) dot r_2 e^(i phi_2) = r_1 r_2 e^(i(phi_1+phi_2))$ (Beträge multiplizieren, Argumente addieren).
]

== De Moivre und Einheitswurzeln
#concept-block[
  #tbox[
    #Satz (De Moivre) $(cos phi + i sin phi)^n = cos(n phi) + i sin(n phi)$, d.h. $z^n = r^n e^(i n phi)$.
  ]

  Nützlich für Additionstheoreme: Real-/Imaginärteil von $(cos phi + i sin phi)^n$ vergleichen.

  #tbox[
    *$n$-te Wurzeln* von $w = rho e^(i psi) != 0$: die Gleichung $z^n = w$ hat genau $n$ Lösungen
    $ z_k = root(n, rho) dot e^(i(psi + 2 pi k)/n), quad k = 0, 1, dots, n-1. $
    Sie liegen auf einem Kreis mit Radius $root(n, rho)$, gleichmässig im Winkelabstand $2pi\/n$.
  ]

  *$n$-te Einheitswurzeln* ($w=1$): $zeta_k = e^(2 pi i k\/n)$, $k=0,dots,n-1$. Es gilt $sum_(k=0)^(n-1) zeta_k = 0$ (für $n >= 2$) und $product$ aller $= (-1)^(n+1)$. Alle sind Potenzen von $zeta_1 = e^(2 pi i\/n)$.

  #key[#Bem *Quadratwurzeln algebraisch* (oft schneller als Polarform): $(a+b i)^2 = z$ $<=>$ $a^2 - b^2 = "Re"(z)$ und $2 a b = "Im"(z)$; nach $a, b in RR$ auflösen. Bsp $z=-5i$: $a^2=b^2$, $2 a b = -5$ $=>$ $plus.minus sqrt(5/2)(1-i)$.]

  #Bsp $z^3 = 1$: $z in {1, e^(2 pi i\/3), e^(4 pi i\/3)} = {1, -1/2 plus.minus sqrt(3)/2 i}$.
]

== Fundamentalsatz der Algebra
#concept-block[
  #tbox[
    #Satz Jedes nicht-konstante Polynom $p(z) = sum_(k=0)^n a_k z^k$ mit $a_k in CC$, $a_n != 0$, $n >= 1$, hat mindestens eine Nullstelle in $CC$.
  ]

  #Kor $p$ zerfällt vollständig in Linearfaktoren: $p(z) = a_n product_(k=1)^n (z - lambda_k)$ (mit Vielfachheit), also genau $n$ Nullstellen in $CC$ (mit Vielfachheit gezählt).

  #Bem Bei *reellen* Koeffizienten treten nicht-reelle Nullstellen in konjugierten Paaren $lambda, bar(lambda)$ auf. $=>$ jedes reelle Polynom zerfällt in reelle Linear- und quadratische Faktoren. Polynome ungeraden Grades haben somit mind. eine reelle Nullstelle.
]
