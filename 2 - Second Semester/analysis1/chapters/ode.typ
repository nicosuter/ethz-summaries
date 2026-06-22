= Gewöhnliche Differentialgleichungen

== Trennbare DGl (1. Ordnung)
$y' = f(x) g(y)$: Trennen und integrieren:
$ integral (dif y) / g(y) = integral f(x) dif x $
Danach nach $y$ auflösen. #emph[Achtung:] konstante Lösungen $y equiv c$ mit $g(c)=0$ separat prüfen (gehen beim Teilen verloren).

== Lineare DGl 1. Ordnung
$y' + p(x) y = q(x)$. Mit integrierendem Faktor $mu(x) = exp(integral p(x) dif x)$:
$ y(x) = 1/mu(x) ( integral mu(x) q(x) dif x + C ) $
Homogen ($q=0$): $y = C exp(- integral p dif x)$.

#emph[Variation der Konstante:] dieselbe Formel als Methode — erst homogen $y_h = C e^(-integral p)$ lösen, dann $C -> C(x)$ ansetzen und in die DGl einsetzen.

== Substitution (1. Ordnung)
#emph[Lineare Substitution] $y' = f(a x + b y + c)$: setze $u = a x + b y + c$, dann $u' = a + b y' = a + b f(u)$ — #emph[trennbar] in $u$.

#emph[In den Variablen homogen] $y' = f(y/x)$ (rechte Seite hängt nur von $y/x$ ab): setze $u = y/x$, also $y = u x$, $y' = u' x + u$. Es folgt $u' x = f(u) - u$ — #emph[trennbar]:
$ integral (dif u)/(f(u) - u) = integral (dif x)/x. $
#emph[Achtung:] konstante Lösungen $u equiv u_0$ mit $f(u_0) = u_0$ (d.h. Geraden $y = u_0 x$) separat prüfen.

== Lineare DGl 2. Ordnung, konstante Koeffizienten
$ y'' + b y' + c y = g(t) $
Allgemeine Lösung: $y = y_h + y_p$ (homogen + partikulär).

#emph[Homogen.] Charakteristisches Polynom $lambda^2 + b lambda + c = 0$ mit Nullstellen $lambda_(1,2)$:
- Zwei reelle $lambda_1 != lambda_2$: $quad y_h = c_1 e^(lambda_1 t) + c_2 e^(lambda_2 t)$
- Doppelte $lambda_1 = lambda_2 = lambda$: $quad y_h = (c_1 + c_2 t) e^(lambda t)$
- Komplexe $lambda = alpha plus.minus i beta$: $quad y_h = e^(alpha t)(c_1 cos(beta t) + c_2 sin(beta t))$

#emph[Allgemein] (Polynom $p(lambda) = product (lambda - lambda_k)^(m_k)$): jede Wurzel $lambda_k$ der Vielfachheit $m_k$ liefert $e^(lambda_k t), t e^(lambda_k t), dots, t^(m_k - 1) e^(lambda_k t)$.

== Partikuläre Lösung (Ansatz / unbestimmte Koeffizienten)
Ansatz nach Form von $g(t)$:

#table(
  columns: 2,
  align: left,
  [$g(t)$], [Ansatz $y_p$],
  [$P_n(t)$ (Polynom Grad $n$)], [$Q_n(t)$ (Polynom Grad $n$)],
  [$e^(mu t)$], [$A e^(mu t)$],
  [$sin(omega t)$ oder $cos(omega t)$], [$A sin(omega t) + B cos(omega t)$],
  [$e^(mu t) P_n(t)$], [$e^(mu t) Q_n(t)$],
  [$e^(mu t) (sin(omega t) "/" cos(omega t))$], [$e^(mu t)(A sin(omega t) + B cos(omega t))$],
)

#emph[Resonanz (kritisch!):] Löst der Ansatz bereits die homogene Gl. (d.h. $mu$ bzw. $mu plus.minus i omega$ ist Nullstelle von $p(lambda)$ mit Vielfachheit $m$), multipliziere den Ansatz mit $t^m$.

Ansatz in DGl einsetzen, Koeffizienten durch Vergleich bestimmen.

#emph[Superposition:] $g = g_1 + g_2 ==> y_p = y_(p,1) + y_(p,2)$ (je separat ansetzen).

== Anfangswertproblem (AWP)
Erst allgemeine Lösung $y = y_h + y_p$ mit Konstanten $c_1, c_2$ bestimmen, #emph[dann] $y(t_0), y'(t_0)$ einsetzen und das LGS nach $c_1, c_2$ lösen. Reihenfolge zwingend: Konstanten zuletzt.

#emph[Randwertproblem (RWP):] Bedingungen an verschiedenen Stellen, z.B. $y(a) = alpha$, $y(b) = beta$. Gleiches Vorgehen (allgemeine Lösung, dann LGS für $c_1, c_2$), aber das LGS kann #emph[keine, genau eine oder unendlich viele] Lösungen haben (anders als beim AWP).

== Existenz und Eindeutigkeit
Für $y' = f(x, y)$, $y(x_0) = y_0$: sind $f$ und $partial f \/ partial y$ in einer Umgebung von $(x_0, y_0)$ stetig (d.h. $f$ lokal #emph[Lipschitz] in $y$), so existiert #emph[lokal] eine #emph[eindeutige] Lösung (Picard-Lindelöf). Ohne Lipschitz nur Existenz (Peano), Eindeutigkeit kann verletzt sein (Bsp. $y' = sqrt(|y|)$, $y(0)=0$).

== Beschränktheit auf $[0, infinity[$
$y_h = sum c_k t^(j) e^(lambda_k t)$ bleibt beschränkt auf $[0, infinity[$ gdw. für jeden auftretenden Term entweder $"Re"(lambda_k) < 0$, oder $"Re"(lambda_k) = 0$ und Vielfachheit $= 1$ (reines $e^(i beta t)$, kein $t e^(i beta t)$). $"Re"(lambda) > 0$ oder $t^j$ mit $"Re"(lambda)=0, j>=1$ #h(0.3em) $==>$ unbeschränkt.
