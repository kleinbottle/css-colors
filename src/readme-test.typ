// readme-test.typ
// 
// See
// https://forum.typst.app/t/how-to-properly-change-background-color-of-a-block-raw-element/1175
// for giving a background for a code/raw blosk.
// 

#import "css-colors.typ": *

// Global Styles
#set page(margin: 25mm)
#set text(size: 11pt, font: "Noto Serif")
#set par(spacing: 1.5em)
//Customize appearance
#show raw: set text(font: "Fira Mono", size: 11pt)
#show link: set text(fill: blue)
// Global Styles
#set page(margin: 25mm)
#set text(size: 11pt, font: "Noto Serif")
#set par(spacing: 1.5em)
//Customize appearance
#show raw: set text(font: "Fira Mono", size: 11pt)
#show link: set text(fill: blue)

// Text Element configuration
#show heading.where(level: 1): h1 => {
    set block(above: 2em, below: 1.5em)
    set text(weight: "semibold")
    h1
  }

#show heading.where(level: 2): h2 => {
    set block(above: 2em, below: 1.5em)
    set text(weight: "semibold")
    h2
  }

#show heading.where(level: 3): h3 => {
    set block(above: 2em, below: 1.5em)
    set text(weight: "semibold")
    h3
  }

// End of setup
// Text Element configuration
#show heading.where(level: 1): h1 => {
    set block(above: 2em, below: 1.5em)
    set text(weight: "semibold")
    h1
  }

#show heading.where(level: 2): h2 => {
    set block(above: 2em, below: 1.5em)
    set text(weight: "semibold")
    h2
  }

#show heading.where(level: 3): h3 => {
    set block(above: 2em, below: 1.5em)
    set text(weight: "semibold")
    h3
  }

#show raw.where(block: true): set block(fill: css("AntiqueWhite"), inset: 1em, radius: 0.5em, width: 100%)
// End of setup

// Start of README test code and results

== README Code Samples and Results

A CSS color may be invoked with `css("color-name")` wherever Typst expects a color value.

+ Coloring text.

  ```
  #import "css-colors.typ": *

  Normal text may be #text(fill: css("crimson"))[colored so.]
  ```

  Normal text may be #text(fill: css("crimson"))[colored so.]

+ A rectangle may be colored with `fill`.

  ```
  #import "css-colors.typ": *

  #rect(width: 100%, height: auto, fill: css("darkorchid"))
  ```

  #rect(width: 100%, height: auto, fill: css("darkorchid"))

+ CSS Colors may be invoked either with lowercase or CamelCase.

  ```
  #import "css-colors.typ": *

  (a) saddlebrown: #box(width: 30mm, height: 1em, fill: css("saddlebrown"))

  (b) SaddleBrown: #box(width: 30mm, height: 1em, fill: css("SaddleBrown"))
  ```

  (a) saddlebrown: #box(width: 30mm, height: 1em, fill: css("saddlebrown"))

  (b) SaddleBrown: #box(width: 30mm, height: 1em, fill: css("SaddleBrown"))

+ The maroon shipped with Typst is different from the maroon specified in CSS Colors. Their hex codes are different as shown below. The CSS color is deliberately written as "Maroon" with an initial capital letter to distinguish it here.

  ```
  #import "css-colors.typ": *

  Typst maroon: #color.maroon.to-hex(): #box(width: 30mm, height: 1em, fill: maroon)

  CSS maroon: #css("Maroon").to-hex():: #box(width: 30mm, height: 1em, fill: css("Maroon"))
  ```
  
  #grid(columns: 3, rows: 2, row-gutter: 10pt, column-gutter: 10pt, 
  [Typst maroon], [#color.maroon.to-hex()], [#box(width: 30mm, height: 1em, fill: maroon)], 

  [CSS maroon], [#css("Maroon").to-hex()], [#box(width: 30mm, height: 1em, fill: css("Maroon"))]
  )

+ CSS Colors may also be used in the context of drawing and data visualization.

  ```
  #import "css-colors.typ": *

  #align(center)[
  #polygon.regular(
    fill: css("DarkGoldenRod").lighten(60%),
    stroke: (paint: css("darkgoldenrod"), thickness: 4pt, cap: "round"),
    size: 90mm,
    vertices: 6,
  )]
  ```

  #align(center)[
  #polygon.regular(
    fill: css("darkgoldenrod").lighten(60%),
    stroke: (paint: css("darkgoldenrod"), thickness: 4pt, cap: "round"),
    size: 80mm,
    vertices: 6,
  )]

+ CSS Colors may be used to underline text with a line of default thickness. The thickness of the underline may be changed manually if desired.

  ```
  This is #underline(stroke: css("teal"))[important.]
  This is #underline(stroke: (paint: css("teal"), thickness: 2pt))[important.]
  ```

  This is #underline(stroke: css("teal"))[important.] This is #underline(stroke: (paint: css("teal"), thickness: 2pt))[important.]
