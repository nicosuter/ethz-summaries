#import "@preview/boxed-sheet:0.1.0": *
#import "@preview/lemmify:0.1.8": *

#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof,
  rules: thm-rules,
) = default-theorems("thm-group", lang: "en")
#show: thm-rules


#set text(font: (
  "Times New Roman",
))

#let homepage = link("https://nicosuter.me")[https://nicosuter.me]
#let author = link("mailto:nicsuter@ethz.ch")[Nico Suter \<nicsuter\@ethz.ch\>]
#let title = "Discrete Mathematics Cheat Sheet"

#show: cheatsheet.with(
  title: title,
  homepage: homepage,
  authors: author,
  write-title: false,
  title-align: left,
  title-number: true,
  title-delta: 2pt,
  scaling-size: true,
  font-size: 5.5pt,
  line-skip: 5.5pt,
  x-margin: 10pt,
  y-margin: 30pt,
  num-columns: 4,
  column-gutter: 2pt,
  numbered-units: false,
)

= Logic
#include "2-Logic.typ"

= Sets
#include "3-Sets.typ"

= Number Theory
#include "4-NumberTheory.typ"

= Algebra
#include "5-Algebra.typ"

= Logic
#include "6-Logic.typ"

//#colbreak()
#include "99-Tips.typ"
