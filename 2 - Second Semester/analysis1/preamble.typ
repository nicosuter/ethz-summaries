#import "@preview/boxed-sheet:0.1.2": concept-block, inline

// Theorem box — white fill inside colored concept-block
#let tbox(content) = block(
  width: 100%,
  fill: white,
  stroke: 0.5pt + luma(160),
  inset: 4pt,
  content,
)

#let Def = [*Def.* ]
#let Bsp = [_E.g.,_ ]
#let Satz = [*Thm.* ]
#let Kor = [*Cor.* ]
#let Bem = [*Rem.* ]

// --- Emphasis system ---------------------------------------------------
// accent : single highlight hue for key results / tricks (was raw `blue`)
// key()  : wrap an important takeaway, e.g. #key[...]
// light(): de-emphasised / secondary text
#let accent = rgb("#1A5FB4")
#let key(content) = text(fill: accent, content)
#let light(content) = text(fill: luma(120), content)

#let limsup = math.op("lim sup", limits: true)
#let liminf = math.op("lim inf", limits: true)
#let Sup = math.op("Sup")
#let Inf = math.op("Inf")
#let Max = math.op("Max")
#let Min = math.op("Min")
