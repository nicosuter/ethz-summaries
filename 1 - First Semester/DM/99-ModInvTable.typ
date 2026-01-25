// Modular inverse of a modulo m.
// Returns none if the inverse does not exist.
#let modinv(a, m) = {
  let a0 = calc.rem-euclid(a, m)

  let t = 0
  let newt = 1
  let r = m
  let newr = a0

  // Extended Euclidean algorithm
  while newr != 0 {
    let q = calc.div-euclid(r, newr)
    (t, newt) = (newt, t - q * newt)
    (r, newr) = (newr, r - q * newr)
  }

  if r != 1 {
    none
  } else {
    if t < 0 { t += m }
    t
  }
}

// Build an n×n modular inverse table.
// Rows are moduli m, columns are a,
// cell = a^{-1} mod m (or grayed out if none).
*Modular Inverses* $"cell" = a^(-1) mod m$, where rows are $m$, cols are $a$.
#let modinv_table(n) = {
  // colors
  let header-fill = luma(210) // top row
  let index-fill = luma(210) // left col
  let empty-fill = luma(240) // empty cells
  //
  // Collect all table cells in one flat array
  let cells = (
    table.header(
      table.cell(fill: header-fill)[],
      ..range(1, n + 1).map(a => table.cell(fill: header-fill)[#a]),
    ),
  )

  for m in range(1, n + 1) {
    // left column (modulus labels)
    cells.push(
      table.cell(fill: index-fill)[#m],
    )

    for a in range(1, n + 1) {
      let inv = modinv(a, m)
      cells.push(
        if inv == none {
          table.cell(fill: empty-fill)[]
        } else {
          [#inv]
        },
      )
    }
  }

  table(
    columns: n + 1,
    align: center,
    stroke: 0.2pt,
    ..cells,
  )
}
#modinv_table(25)
