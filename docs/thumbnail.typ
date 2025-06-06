#import "@preview/css-colors:0.1.0": *

#set page(height: auto, margin: 5mm, fill: none)

// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#set text(22pt)
Normal text may be #text(fill: css("crimson"))[colored so.]
#align(center)[_a thumbnail showing the package's output_]
