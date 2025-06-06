#import "@preview/css-colors:0.1.0": *

#set page(height: auto, margin: 5mm, fill: none)

// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#align(center)[
  #polygon.regular(
    fill: css("darkgoldenrod").lighten(60%),
    stroke: (paint: css("darkgoldenrod"), thickness: 4pt, cap: "round"),
    size: 60mm,
    vertices: 6,
  )
]
