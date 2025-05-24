#show link: set text(fill: blue)

= SVG Colors Module

This module allows #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG colors] to be used by their names rather than by their RGB or Hex values.



== Notes

The table below is a comparison of the RBG/Hex values of the eighteen predefined colors shipped with Typst and the corresponding SVG colors having the same name:


#table(
  table.header([Color Name], [Typst Hex Code], [Swatch], [SVG Hex Code], [Swatch]),
  columns: 5,
  stroke: none, 
  align: (left+horizon, left+horizon, center+horizon, left+horizon, center+horizon),
  inset: 10pt,
  [aqua],	[`rgb("#7fdbff")`], [#box(width: 1cm, height: 1cm, fill: rgb("#7fdbff"))], [`rgb("#00ffff")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [black], [`rgb("#000000")`], [#box(width: 1cm, height: 1cm, fill: rgb("#000000"))],  [`rgb("#000000")`], [#box(width: 1cm, height: 1cm, fill: rgb("#000000"))],

  [blue],	[`rgb("#0074d9")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#0000ff")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [eastern], [`rgb("#239dad")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [Not Applicable], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [fuchsia], [`rgb("#f012be")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],  [`rgb("#ff00ff")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [gray], [`rgb("#aaaaaa")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#808080")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [green], [`rgb("#2ecc40")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#008000")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [lime],	[`rgb("#01ff70")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#00ff00")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [maroon],	[`rgb("#85144b")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],  [`rgb("#800000")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [navy],	[`rgb("#001f3f")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#000080")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [olive], [`rgb("#3d9970")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],  [`rgb("#808000")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [orange], [`rgb("#ff851b")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#ffa500")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [purple], [`rgb("#b10dc9"))`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#800080")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [red], [`rgb("#ff4136")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],  [`rgb("#ff0000")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [silver], [`rgb("#dddddd"`)], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#c0c0c0")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [teal], [`rgb("#39cccc")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#008080")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [white], [`rgb(#ffffff")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#ffffff")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],

  [yellow],	[`rgb("#ffdc00)")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))], [`rgb("#ffff00")`], [#box(width: 1cm, height: 1cm, fill: rgb("#00ffff"))],
)
