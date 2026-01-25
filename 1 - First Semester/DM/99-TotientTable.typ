#let gcd(a, b) = {
  while b != 0 {
    let t = b
    b = calc.rem(a, b)
    a = t
  }
  return a
}

#let totient(n) = {
  if n == 0 { return 0 }
  let count = 0
  for i in range(1, n + 1) {
    if gcd(n, i) == 1 {
      count += 1
    }
  }
  return count
}

// Build a compact Euler's totient table (Grid layout).
// Rows represent "tens" (0, 10, 20...), columns represent "units" (1, 2...10).
*Euler's Totient Table* $"cell" = phi("row" + "col")$
#let totient_table(num_tens, num_units) = {
  // colors
  let header-fill = luma(210) // top row & left col
  let empty-fill = luma(240) // for n=0 or invalid

  // Collect all table cells in one flat array
  let cells = (
    table.header(
      table.cell(fill: header-fill)[*+*],
      ..range(1, num_units + 1).map(c => table.cell(fill: header-fill)[*#c*]),
    ),
  )

  for r in range(0, num_tens) {
    let tens = r * 10

    // left column (tens labels: 0, 10, 20...)
    cells.push(
      table.cell(fill: header-fill)[*#tens*],
    )

    for c in range(1, num_units + 1) {
      let n = tens + c
      let val = totient(n)

      cells.push(
        if n == 0 {
          // phi(0) is typically undefined/0, gray it out
          table.cell(fill: empty-fill)[-]
        } else {
          [#val]
        },
      )
    }
  }

  table(
    columns: num_units + 1,
    align: center,
    stroke: 0.2pt,
    ..cells,
  )
}

// Generates 10 rows (0 to 90) and 10 columns (1 to 10)
#totient_table(10, 10)