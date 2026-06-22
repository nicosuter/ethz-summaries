#import "@preview/boxed-sheet:0.1.2": *
#import "preamble.typ": *

#set text(lang: "de")
#set page(numbering: "1/1", number-align: right + bottom)

// Cohesive, muted "academic rainbow" — neighbors alternate cool/warm so
// adjacent concept-blocks stay distinct. All mid-dark: white title text reads.
#let my-colors = (
  rgb("#1F4E79"), // deep blue
  rgb("#B5651D"), // ochre
  rgb("#2C6E63"), // teal / pine
  rgb("#A33A4E"), // crimson
  rgb("#4F7A28"), // moss green
  rgb("#6D4C91"), // muted violet
  rgb("#9A7D0A"), // goldenrod
  rgb("#356B9E"), // steel blue
)

#let homepage = link("https://nicosuter.me")[https://nicosuter.me]
#let author = link("mailto:nicsuter@ethz.ch")[Nico Suter \<nicsuter\@ethz.ch\>]
#let title = "Analysis 1 Cheat Sheet"

#show: boxedsheet.with(
  title: title,
  homepage: homepage,
  authors: author,
  write-title: false,
  title-align: left,
  title-number: true,
  scaling-size: true,
  font-size: 7pt,
  line-skip: 7pt,
  x-margin: 10pt,
  y-margin: 30pt,
  num-columns: 4,
  column-gutter: 2pt,
  numbered-units: false,
  color-box: my-colors,
)

#include "chapters/reelle-zahlen.typ"
#include "chapters/komplexe-zahlen.typ"
#include "chapters/folgen-reihen.typ"
#include "chapters/stetigkeit.typ"
#include "chapters/differenzierbarkeit.typ"
#include "chapters/integrale.typ"
#include "chapters/ode.typ"
#include "chapters/sonstiges.typ"
#include "chapters/aufgaben.typ"
