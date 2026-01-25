// --- Helpers ---

#let dot = circle(radius: 2pt, fill: green.darken(10%))

#let rot-header(content) = {
  rotate(270deg, origin: center, content)
}

#let side-label(label, height-em) = {
  stack(
    dir: ltr,
    align(center + horizon, rotate(270deg, text(fill: navy)[#label])),
    h(0.5em),
    align(center + horizon, text(size: height-em, weight: "extralight", fill: navy)[$\{$]),
  )
}

// --- Main Table Function ---

#let algebra_table() = {
  let header-fill = luma(230)
  let label-fill = luma(245)
  let cell-stroke = 0.5pt + gray

  let structures = (
    "Monoid",
    "Group",
    "Abelian Group",
    "Ring",
    "Commutative Ring",
    "Integral Domain",
    "Field",
  )

  let properties = (
    // Additive Group (indices 0-4)
    ("Closure", "add"),
    ("Associative", "add"),
    ("Identity", "add"),
    ("Inverse", "add"),
    ("Commutative", "add"),
    // Multiplicative Group (indices 5-11)
    ("Closure", "mult"),
    ("Associative", "mult"),
    ("Distributive", "mult"),
    ("Commutative", "mult"),
    ("Identity", "mult"),
    ("No zero-divisors", "mult"),
    ("Inverse", "mult"),
  )

  let cells = ()

  // 1. Top-Left Placeholder
  cells.push(table.cell(colspan: 2, stroke: (bottom: 0.5pt + gray, right: 0.5pt + gray))[])

  // 2. Structure Headers
  for s in structures {
    cells.push(table.cell(align: center + bottom, fill: header-fill, inset: 15pt)[
      #rot-header([*#s*])
    ])
  }

  // 3. Data Rows
  let current-group = ""

  for (i, (prop, group)) in properties.enumerate() {
    // Side Labels
    if group != current-group {
      let span = if group == "add" { 5 } else { 7 }
      let brace-size = { 0em }
      let label-text = if group == "add" { "additive" } else { "multiplicative" }

      cells.push(table.cell(
        rowspan: span,
        fill: label-fill,
        align: center + horizon,
      )[#side-label(label-text, brace-size)])

      current-group = group
    }

    // Property Name
    cells.push(table.cell(fill: label-fill, align: left + horizon)[#prop])

    // Dot Matrix Logic
    for col in range(structures.len()) {
      let has-prop = false

      // --- Additive Properties ---
      if i <= 2 { has-prop = true } // Closure, Assoc, Id (Add) - All
      else if i == 3 { has-prop = col >= 1 } // Inverse (Add) - Group+
      else if i == 4 { has-prop = col >= 2 } // Comm (Add) - Abelian Group+
      // --- Multiplicative Properties ---
      else if i >= 5 and i <= 7 { has-prop = col >= 3 } // Closure, Assoc, Dist - Ring+
      else if i == 8 { has-prop = col >= 4 } // Comm (Mult) - Comm Ring+
      // FIXED: Identity applies to Ring and above (col >= 3)
      else if i == 9 { has-prop = col >= 3 } else if i == 10 { has-prop = col >= 5 } // No zero-divisors - Int Dom+
      else if i == 11 { has-prop = col >= 6 } // Inverse (Mult) - Field

      cells.push(
        if has-prop {
          table.cell(align: center + horizon)[#dot]
        } else {
          table.cell(fill: luma(250))[]
        },
      )
    }
  }

  table(
    columns: (30pt, 80pt, ..range(structures.len()).map(_ => 1fr)),
    rows: (auto, ..range(properties.len()).map(_ => 20pt)),
    stroke: cell-stroke,
    ..cells
  )
}

#algebra_table()
