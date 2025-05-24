#set page(margin: 25mm)
#set text(size: 11pt, font: "Noto Serif")

#show link: set text(fill: blue)

= SVG Colors Module

This module allows #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG colors] to be used by their names rather than by their RGB or Hex values.

== Notes

The table below is a comparison of the RBG/Hex values of the eighteen predefined colors shipped with Typst and the corresponding SVG colors having the same name:

#show table.cell.where(y: 0): smallcaps
#show table.cell.where(y: 0): strong
#align(center)[
  #table(
    table.header([Color Name], [Typst Hex Code], [Swatch], [SVG Hex Code], [Swatch]),
    columns: 5,
    stroke: none,
    align: (left+horizon, left+horizon, center+horizon, left+horizon, center+horizon),
    inset: 10pt,
    [aqua],	[`rgb("#7fdbff")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#7fdbff"))], [`rgb("#00ffff")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#00ffff"))],

    [black], [`rgb("#000000")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000000"))],  [`rgb("#000000")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000000"))],

    [blue],	[`rgb("#0074d9")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#0074d9"))], [`rgb("#0000ff")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#0000ff"))],

    [eastern], [`rgb("#239dad")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#239dad"))], [N/A], [N/A],

    [fuchsia], [`rgb("#f012be")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#f012be"))],  [`rgb("#ff00ff")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff00ff"))],

    [gray], [`rgb("#aaaaaa")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#aaaaaa"))], [`rgb("#808080")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#808080"))],

    [green], [`rgb("#2ecc40")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#2ecc40"))], [`rgb("#008000")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#008000"))],

    [lime],	[`rgb("#01ff70")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#01ff70"))], [`rgb("#00ff00")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#00ff00"))],

    [maroon],	[`rgb("#85144b")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#85144b"))],  [`rgb("#800000")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#800000"))],

    [navy],	[`rgb("#001f3f")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#001f3f"))], [`rgb("#000080")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000080"))],

    [olive], [`rgb("#3d9970")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#3d9970"))],  [`rgb("#808000")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#808000"))],

    [orange], [`rgb("#ff851b")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff851b"))], [`rgb("#ffa500")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffa500"))],

    [purple], [`rgb("#b10dc9")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#b10dc9"))], [`rgb("#800080")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#800080"))],

    [red], [`rgb("#ff4136")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff4136"))],  [`rgb("#ff0000")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff0000"))],

    [silver], [`rgb("#dddddd")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#dddddd"))], [`rgb("#c0c0c0")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#c0c0c0"))],

    [teal], [`rgb("#39cccc")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#39cccc"))], [`rgb("#008080")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#008080"))],

    [white], [`rgb("#ffffff")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffffff"))], [`rgb("#ffffff")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffffff"))],

    [yellow],	[`rgb("#ffdc00")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffdc00"))], [`rgb("#ffff00")`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffff00"))],
  )
]
