# AGENTS.md — Analysis 1 Cheat Sheet

Notes for AI agents (and humans) editing this cheat sheet.

## Terminology: no citrus fruits for limits

Use **"Limit"** (or **"Grenzwert"**) — never **"Limes"** — when referring to a
limit in prose, headings, or box titles. "Limes" is banned.

## Build & verify

- German sheet, `@preview/boxed-sheet`, 4 columns, 7pt. Straight ASCII quotes
  only (`"..."`), never German `„ "` (`smartquote` is disabled in `main.typ`).
- Compile: `python3 -c "import typst; typst.compile('main.typ', output='main.pdf')"`.
- ALWAYS verify math by rendering PNGs (`ppi=200`) and reading the pixels — not
  the source — before claiming a formula is correct.
