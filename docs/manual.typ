#import "@preview/css-colors:0.1.0": *
// Global Styles
#set page(margin: 25mm)
#set text(size: 11pt, font: "Noto Serif")
#set par(spacing: 1.5em)
//Customize appearance
#show raw: set text(font: "Fira Mono", size: 11pt)
#show raw.where(block: true): set block(
  fill: css("AntiqueWhite"), inset: 1em, radius: 0.5em, width: 100%
)
#show link: set text(fill: blue, font: "Source Sans Pro", size: 12pt)

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

= CSS Colors Module

== History

=== X11 colors

The #link("https://en.wikipedia.org/wiki/X11_color_names")[X11 color names], developed in the 1980s, included a file named `rgb.txt` that was shipped with every #link("https://en.wikipedia.org/wiki/X_Window_System")[X11] installation. It mapped over 400 color names to specific RGB values. This list was used in Unix-based systems to standardize color representation, but it suffered from inconsistencies in invocation and usage.

=== Sixteen named colors

The #link("https://www.w3.org/MarkUp/Wilbur/features.html")[HTML 3.2 specification] of 1996  introduced sixteen color names, derived from the standard 16 colors supported by the Windows VGA palette. These colors, hitherto called the _sixteen named colors_, are:
```
- aqua
- black
- blue
- fuchsia
- gray
- green
- lime
- maroon
- navy
- olive
- purple
- red
- silver
- teal
- white
- yellow
```

Thanks to this standard, these sixteen color names could be used reliably and consistently in documents across the Web, without recourse to their hexadecimal values.

The CSS Level 1 colors introduced in 1996 specified these same sixteen colors, while the CSS Level 2 colors, introduced in 1998, augmented this list to seventeen named colors, with the addition of `orange`.

=== CSS/SVG colors

Finally, the #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG 1.0 Specification] of 2001 and the #link("https://www.w3.org/TR/css-color-3/#html4")[CSS Color Module Level 3] of 2011 have standardized #link("https://www.w3.org/TR/SVG11/types.html#ColorKeywords")[a list of 147 color names], known as the "extended color keywords" or the "recognized color keyword names" which included the original 16 colors, `orange`, and additional colors from the X11 set. This standardization aims to provide a consistent color naming scheme across the Web, and has remained relatively stable. It is this set of color names that forms the basis for this module. These named colors are standard both for CSS and SVG, although we shall refer to them here as CSS Colors. How the CSS colors were given their rather idiosyncratic names is explained in #link("https://www.youtube.com/watch?v=HmStJQzclHc")[this You Tube video] #cite(<CSShistory>).

=== CSS colors vis-a-vis Typst

Typst ships with #link("https://typst.app/docs/reference/visualize/color/#predefined-colors")[eighteen predefined colors] which include the sixteen named colors, plus `orange`, plus one more color named `eastern`. The color `eastern` is undefined in the CSS colors. The remaining seventeen colors have identical names, but different RGB/Hex values, as tabulated below.

#show table.cell.where(y: 0): smallcaps
#show table.cell.where(y: 0): strong
#align(center)[
  #table(
    table.header([Color Name], [Typst Hex Code], [Swatch], [CSS Hex Code], [Swatch]),
    columns: 5,
    stroke: none,
    align: (center+horizon, center+horizon, center+horizon, center+horizon, center+horizon),
    inset: 10pt,
    [aqua],	[#text(font: "Fira Mono", size: 11pt)[#color.aqua.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(aqua))], [`#00ffff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#00ffff"))],

    [black], [#text(font: "Fira Mono", size: 11pt)[#color.black.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(black))],  [`#000000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000000"))],

    [blue],	[#text(font: "Fira Mono", size: 11pt)[#color.blue.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(blue))], [`#0000ff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#0000ff"))],

    [eastern], [#text(font: "Fira Mono", size: 11pt)[#color.eastern.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(eastern))], [Not Defined], [Not Defined],

    [fuchsia], [#text(font: "Fira Mono", size: 11pt)[#color.fuchsia.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(fuchsia))],  [`#ff00ff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff00ff"))],

    [gray], [#text(font: "Fira Mono", size: 11pt)[#color.gray.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(gray))], [`#808080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#808080"))],

    [green], [#text(font: "Fira Mono", size: 11pt)[#color.green.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(green))], [`#008000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#008000"))],

    [lime],	[#text(font: "Fira Mono", size: 11pt)[#color.lime.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(lime))], [`#00ff00`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#00ff00"))],

    [maroon],	[#text(font: "Fira Mono", size: 11pt)[#color.maroon.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(maroon))],  [`#800000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#800000"))],

    [navy],	[#text(font: "Fira Mono", size: 11pt)[#color.navy.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(navy))], [`#000080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000080"))],

    [olive], [#text(font: "Fira Mono", size: 11pt)[#color.olive.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(olive))],  [`#808000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#808000"))],

    [orange], [#text(font: "Fira Mono", size: 11pt)[#color.orange.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(orange))], [`#ffa500`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffa500"))],

    [purple], [#text(font: "Fira Mono", size: 11pt)[#color.purple.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(purple))], [`#800080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#800080"))],

    [red], [#text(font: "Fira Mono", size: 11pt)[#color.red.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(red))],  [`#ff0000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff0000"))],

    [silver], [#text(font: "Fira Mono", size: 11pt)[#color.silver.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(silver))], [`#c0c0c0`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#c0c0c0"))],

    [teal], [#text(font: "Fira Mono", size: 11pt)[#color.teal.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(teal))], [`#008080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#008080"))],

    [white], [#text(font: "Fira Mono", size: 11pt)[#color.white.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(white))], [`#ffffff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffffff"))],

    [yellow],	[#text(font: "Fira Mono", size: 11pt)[#color.yellow.to-hex()]], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb(yellow))], [`#ffff00`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffff00"))],
  )
]

== Purpose

The CSS Colors Module is a robust convenience which allows #link("https://www.w3.org/TR/css-color-3/#html4")[CSS colors] to be used by their names within a Typst file, rather than by their RGB/Hex codes, which have to be looked up.

== Reference documentation

For easy reference the CSS color names, their RGB/Hex codes, color swatches, and color stripes have been tabulated and are available #link(<available-css-colors>)[here].

You may also view them in a browser by clicking on this #link("https://htmlpreview.github.io/?https://github.com/kleinbottle/css-colors/blob/main/docs/css-colors-table.html")[link].

== Usage

=== Definition

The CSS Colors Module provides a function `css` defined as:

```
css(
  str color-name
) -> color
```

=== Parameters

- `color-name`

A string representing the color name. The `color-name` parameter can be specified in either lowercase or CamelCase formats, both of which are valid.

=== Exports

- `color`

The `css` function returns an RGB color corresponding to the specified `color-name`.

Since the returned value is of type `color`, it can be used with any of Typst's #link("https://typst.app/docs/reference/visualize/color/#definitions-space")[color functions].

=== Examples

The following examples demonstrate the usage of the `css` function in various cases:

+ Coloring text.

  ```
  #import "@preview/css-colors:0.1.0": *

  Normal text may be #text(fill: css("crimson"))[colored so.]
  ```

  Normal text may be #text(fill: css("crimson"))[colored so.]

+ A rectangle may be colored with `fill`.

  ```
  #import "@preview/css-colors:0.1.0": *

  #rect(width: 100%, height: auto, fill: css("darkorchid"))
  ```

  #rect(width: 100%, height: auto, fill: css("darkorchid"))

+ CSS colors may be specified in either lowercase or CamelCase.

  ```
  #import "@preview/css-colors:0.1.0": *

  (a) saddlebrown: #box(width: 30mm, height: 1em, fill: css("saddlebrown"))

  (b) SaddleBrown: #box(width: 30mm, height: 1em, fill: css("SaddleBrown"))
  ```

  (a) saddlebrown: #box(width: 30mm, height: 1em, fill: css("saddlebrown"))

  (b) SaddleBrown: #box(width: 30mm, height: 1em, fill: css("SaddleBrown"))

+ The maroon color in Typst differs from the Maroon color defined in CSS, as evidenced by their distinct hex codes. To emphasize this distinction, the CSS Maroon is intentionally capitalized with an initial uppercase letter.

  ```
  #import "@preview/css-colors:0.1.0": *

  #grid(
    columns: 3,
    rows: 2,
    row-gutter: 10pt,
    column-gutter: 10pt,
    [Typst maroon], [#color.maroon.to-hex()], [#box(width: 30mm, height: 1em, fill: maroon)],
    [CSS maroon], [#css("Maroon").to-hex()], [#box(width: 30mm, height: 1em, fill: css("Maroon"))]
  )
  ```

  #grid(
    columns: 3,
    rows: 2,
    row-gutter: 10pt,
    column-gutter: 10pt,
    [Typst maroon], [#color.maroon.to-hex()], [#box(width: 30mm, height: 1em, fill: maroon)],
    [CSS maroon], [#css("Maroon").to-hex()], [#box(width: 30mm, height: 1em, fill: css("Maroon"))]
  )

+ CSS colors may also be used in the context of drawing and data visualization.

  ```
  #import "@preview/css-colors:0.1.0": *

  #align(center)[
  #polygon.regular(
    fill: css("darkgoldenrod").lighten(60%),
    stroke: (paint: css("darkgoldenrod"), thickness: 4pt, cap: "round"),
    size: 80mm,
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

+ CSS colors may be used to underline text with a line of default thickness. The thickness of the underline may be changed manually if desired.

  ```
  #import "@preview/css-colors:0.1.0": *

  This is #underline(stroke: css("teal"))[important.]

  This is #underline(stroke: (paint: css("teal"), thickness: 2pt))[important.]
  ```

  This is #underline(stroke: css("teal"))[important.]

  This is #underline(stroke: (paint: css("teal"), thickness: 2pt))[important.]

== Available CSS Colors <available-css-colors>

#show table.cell.where(y: 0): smallcaps
#show table.cell.where(y: 0): strong
#align(center)[
  #table(
    inset: 10pt,
    columns: 4,
    stroke: none,
    align: (center+horizon, center+horizon, center+horizon, center+horizon),
    table.header([Name], [Hex Value], [Swatch], [Stripe]),
    [aliceblue],  [#text(font: "Fira Mono", size: 11pt)[#css("aliceblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("aliceblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("aliceblue"))],
    [antiquewhite],  [#text(font: "Fira Mono", size: 11pt)[#css("antiquewhite").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("antiquewhite"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("antiquewhite"))],
    [aqua],  [#text(font: "Fira Mono", size: 11pt)[#css("aqua").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("aqua"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("aqua"))],
    [aquamarine],  [#text(font: "Fira Mono", size: 11pt)[#css("aquamarine").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("aquamarine"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("aquamarine"))],
    [azure],  [#text(font: "Fira Mono", size: 11pt)[#css("azure").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("azure"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("azure"))],
    [beige],  [#text(font: "Fira Mono", size: 11pt)[#css("beige").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("beige"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("beige"))],
    [bisque],  [#text(font: "Fira Mono", size: 11pt)[#css("bisque").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("bisque"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("bisque"))],
    [black],  [#text(font: "Fira Mono", size: 11pt)[#css("black").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("black"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("black"))],
    [blanchedalmond],  [#text(font: "Fira Mono", size: 11pt)[#css("blanchedalmond").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("blanchedalmond"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("blanchedalmond"))],
    [blue],  [#text(font: "Fira Mono", size: 11pt)[#css("blue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("blue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("blue"))],
    [blueviolet],  [#text(font: "Fira Mono", size: 11pt)[#css("blueviolet").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("blueviolet"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("blueviolet"))],
    [brown],  [#text(font: "Fira Mono", size: 11pt)[#css("brown").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("brown"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("brown"))],
    [burlywood],  [#text(font: "Fira Mono", size: 11pt)[#css("burlywood").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("burlywood"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("burlywood"))],
    [cadetblue],  [#text(font: "Fira Mono", size: 11pt)[#css("cadetblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("cadetblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("cadetblue"))],
    [chartreuse],  [#text(font: "Fira Mono", size: 11pt)[#css("chartreuse").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("chartreuse"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("chartreuse"))],
    [chocolate],  [#text(font: "Fira Mono", size: 11pt)[#css("chocolate").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("chocolate"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("chocolate"))],
    [coral],  [#text(font: "Fira Mono", size: 11pt)[#css("coral").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("coral"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("coral"))],
    [cornflowerblue],  [#text(font: "Fira Mono", size: 11pt)[#css("cornflowerblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("cornflowerblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("cornflowerblue"))],
    [cornsilk],  [#text(font: "Fira Mono", size: 11pt)[#css("cornsilk").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("cornsilk"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("cornsilk"))],
    [crimson],  [#text(font: "Fira Mono", size: 11pt)[#css("crimson").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("crimson"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("crimson"))],
    [cyan],  [#text(font: "Fira Mono", size: 11pt)[#css("cyan").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("cyan"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("cyan"))],
    [darkblue],  [#text(font: "Fira Mono", size: 11pt)[#css("darkblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkblue"))],
    [darkcyan],  [#text(font: "Fira Mono", size: 11pt)[#css("darkcyan").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkcyan"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkcyan"))],
    [darkgoldenrod],  [#text(font: "Fira Mono", size: 11pt)[#css("darkgoldenrod").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkgoldenrod"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkgoldenrod"))],
    [darkgray],  [#text(font: "Fira Mono", size: 11pt)[#css("darkgray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkgray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkgray"))],
    [darkgreen],  [#text(font: "Fira Mono", size: 11pt)[#css("darkgreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkgreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkgreen"))],
    [darkgrey],  [#text(font: "Fira Mono", size: 11pt)[#css("darkgrey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkgrey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkgrey"))],
    [darkkhaki],  [#text(font: "Fira Mono", size: 11pt)[#css("darkkhaki").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkkhaki"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkkhaki"))],
    [darkmagenta],  [#text(font: "Fira Mono", size: 11pt)[#css("darkmagenta").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkmagenta"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkmagenta"))],
    [darkolivegreen],  [#text(font: "Fira Mono", size: 11pt)[#css("darkolivegreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkolivegreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkolivegreen"))],
    [darkorange],  [#text(font: "Fira Mono", size: 11pt)[#css("darkorange").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkorange"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkorange"))],
    [darkorchid],  [#text(font: "Fira Mono", size: 11pt)[#css("darkorchid").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkorchid"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkorchid"))],
    [darkred],  [#text(font: "Fira Mono", size: 11pt)[#css("darkred").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkred"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkred"))],
    [darksalmon],  [#text(font: "Fira Mono", size: 11pt)[#css("darksalmon").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darksalmon"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darksalmon"))],
    [darkseagreen],  [#text(font: "Fira Mono", size: 11pt)[#css("darkseagreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkseagreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkseagreen"))],
    [darkslateblue],  [#text(font: "Fira Mono", size: 11pt)[#css("darkslateblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkslateblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkslateblue"))],
    [darkslategray],  [#text(font: "Fira Mono", size: 11pt)[#css("darkslategray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkslategray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkslategray"))],
    [darkslategrey],  [#text(font: "Fira Mono", size: 11pt)[#css("darkslategrey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkslategrey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkslategrey"))],
    [darkturquoise],  [#text(font: "Fira Mono", size: 11pt)[#css("darkturquoise").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkturquoise"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkturquoise"))],
    [darkviolet],  [#text(font: "Fira Mono", size: 11pt)[#css("darkviolet").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("darkviolet"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("darkviolet"))],
    [deeppink],  [#text(font: "Fira Mono", size: 11pt)[#css("deeppink").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("deeppink"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("deeppink"))],
    [deepskyblue],  [#text(font: "Fira Mono", size: 11pt)[#css("deepskyblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("deepskyblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("deepskyblue"))],
    [dimgray],  [#text(font: "Fira Mono", size: 11pt)[#css("dimgray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("dimgray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("dimgray"))],
    [dimgrey],  [#text(font: "Fira Mono", size: 11pt)[#css("dimgrey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("dimgrey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("dimgrey"))],
    [dodgerblue],  [#text(font: "Fira Mono", size: 11pt)[#css("dodgerblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("dodgerblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("dodgerblue"))],
    [firebrick],  [#text(font: "Fira Mono", size: 11pt)[#css("firebrick").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("firebrick"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("firebrick"))],
    [floralwhite],  [#text(font: "Fira Mono", size: 11pt)[#css("floralwhite").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("floralwhite"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("floralwhite"))],
    [forestgreen],  [#text(font: "Fira Mono", size: 11pt)[#css("forestgreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("forestgreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("forestgreen"))],
    [fuchsia],  [#text(font: "Fira Mono", size: 11pt)[#css("fuchsia").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("fuchsia"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("fuchsia"))],
    [gainsboro],  [#text(font: "Fira Mono", size: 11pt)[#css("gainsboro").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("gainsboro"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("gainsboro"))],
    [ghostwhite],  [#text(font: "Fira Mono", size: 11pt)[#css("ghostwhite").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("ghostwhite"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("ghostwhite"))],
    [gold],  [#text(font: "Fira Mono", size: 11pt)[#css("gold").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("gold"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("gold"))],
    [goldenrod],  [#text(font: "Fira Mono", size: 11pt)[#css("goldenrod").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("goldenrod"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("goldenrod"))],
    [gray],  [#text(font: "Fira Mono", size: 11pt)[#css("gray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("gray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("gray"))],
    [green],  [#text(font: "Fira Mono", size: 11pt)[#css("green").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("green"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("green"))],
    [greenyellow],  [#text(font: "Fira Mono", size: 11pt)[#css("greenyellow").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("greenyellow"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("greenyellow"))],
    [grey],  [#text(font: "Fira Mono", size: 11pt)[#css("grey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("grey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("grey"))],
    [honeydew],  [#text(font: "Fira Mono", size: 11pt)[#css("honeydew").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("honeydew"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("honeydew"))],
    [hotpink],  [#text(font: "Fira Mono", size: 11pt)[#css("hotpink").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("hotpink"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("hotpink"))],
    [indianred],  [#text(font: "Fira Mono", size: 11pt)[#css("indianred").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("indianred"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("indianred"))],
    [indigo],  [#text(font: "Fira Mono", size: 11pt)[#css("indigo").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("indigo"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("indigo"))],
    [ivory],  [#text(font: "Fira Mono", size: 11pt)[#css("ivory").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("ivory"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("ivory"))],
    [khaki],  [#text(font: "Fira Mono", size: 11pt)[#css("khaki").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("khaki"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("khaki"))],
    [lavender],  [#text(font: "Fira Mono", size: 11pt)[#css("lavender").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lavender"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lavender"))],
    [lavenderblush],  [#text(font: "Fira Mono", size: 11pt)[#css("lavenderblush").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lavenderblush"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lavenderblush"))],
    [lawngreen],  [#text(font: "Fira Mono", size: 11pt)[#css("lawngreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lawngreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lawngreen"))],
    [lemonchiffon],  [#text(font: "Fira Mono", size: 11pt)[#css("lemonchiffon").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lemonchiffon"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lemonchiffon"))],
    [lightblue],  [#text(font: "Fira Mono", size: 11pt)[#css("lightblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightblue"))],
    [lightcoral],  [#text(font: "Fira Mono", size: 11pt)[#css("lightcoral").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightcoral"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightcoral"))],
    [lightcyan],  [#text(font: "Fira Mono", size: 11pt)[#css("lightcyan").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightcyan"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightcyan"))],
    [lightgoldenrodyellow],  [#text(font: "Fira Mono", size: 11pt)[#css("lightgoldenrodyellow").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightgoldenrodyellow"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightgoldenrodyellow"))],
    [lightgray],  [#text(font: "Fira Mono", size: 11pt)[#css("lightgray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightgray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightgray"))],
    [lightgreen],  [#text(font: "Fira Mono", size: 11pt)[#css("lightgreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightgreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightgreen"))],
    [lightgrey],  [#text(font: "Fira Mono", size: 11pt)[#css("lightgrey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightgrey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightgrey"))],
    [lightpink],  [#text(font: "Fira Mono", size: 11pt)[#css("lightpink").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightpink"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightpink"))],
    [lightsalmon],  [#text(font: "Fira Mono", size: 11pt)[#css("lightsalmon").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightsalmon"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightsalmon"))],
    [lightseagreen],  [#text(font: "Fira Mono", size: 11pt)[#css("lightseagreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightseagreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightseagreen"))],
    [lightskyblue],  [#text(font: "Fira Mono", size: 11pt)[#css("lightskyblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightskyblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightskyblue"))],
    [lightslategray],  [#text(font: "Fira Mono", size: 11pt)[#css("lightslategray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightslategray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightslategray"))],
    [lightslategrey],  [#text(font: "Fira Mono", size: 11pt)[#css("lightslategrey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightslategrey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightslategrey"))],
    [lightsteelblue],  [#text(font: "Fira Mono", size: 11pt)[#css("lightsteelblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightsteelblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightsteelblue"))],
    [lightyellow],  [#text(font: "Fira Mono", size: 11pt)[#css("lightyellow").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lightyellow"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lightyellow"))],
    [lime],  [#text(font: "Fira Mono", size: 11pt)[#css("lime").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("lime"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("lime"))],
    [limegreen],  [#text(font: "Fira Mono", size: 11pt)[#css("limegreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("limegreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("limegreen"))],
    [linen],  [#text(font: "Fira Mono", size: 11pt)[#css("linen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("linen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("linen"))],
    [magenta],  [#text(font: "Fira Mono", size: 11pt)[#css("magenta").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("magenta"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("magenta"))],
    [maroon],  [#text(font: "Fira Mono", size: 11pt)[#css("maroon").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("maroon"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("maroon"))],
    [mediumaquamarine],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumaquamarine").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumaquamarine"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumaquamarine"))],
    [mediumblue],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumblue"))],
    [mediumorchid],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumorchid").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumorchid"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumorchid"))],
    [mediumpurple],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumpurple").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumpurple"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumpurple"))],
    [mediumseagreen],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumseagreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumseagreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumseagreen"))],
    [mediumslateblue],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumslateblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumslateblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumslateblue"))],
    [mediumspringgreen],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumspringgreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumspringgreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumspringgreen"))],
    [mediumturquoise],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumturquoise").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumturquoise"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumturquoise"))],
    [mediumvioletred],  [#text(font: "Fira Mono", size: 11pt)[#css("mediumvioletred").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mediumvioletred"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mediumvioletred"))],
    [midnightblue],  [#text(font: "Fira Mono", size: 11pt)[#css("midnightblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("midnightblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("midnightblue"))],
    [mintcream],  [#text(font: "Fira Mono", size: 11pt)[#css("mintcream").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mintcream"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mintcream"))],
    [mistyrose],  [#text(font: "Fira Mono", size: 11pt)[#css("mistyrose").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("mistyrose"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("mistyrose"))],
    [moccasin],  [#text(font: "Fira Mono", size: 11pt)[#css("moccasin").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("moccasin"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("moccasin"))],
    [navajowhite],  [#text(font: "Fira Mono", size: 11pt)[#css("navajowhite").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("navajowhite"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("navajowhite"))],
    [navy],  [#text(font: "Fira Mono", size: 11pt)[#css("navy").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("navy"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("navy"))],
    [oldlace],  [#text(font: "Fira Mono", size: 11pt)[#css("oldlace").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("oldlace"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("oldlace"))],
    [olive],  [#text(font: "Fira Mono", size: 11pt)[#css("olive").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("olive"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("olive"))],
    [olivedrab],  [#text(font: "Fira Mono", size: 11pt)[#css("olivedrab").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("olivedrab"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("olivedrab"))],
    [orange],  [#text(font: "Fira Mono", size: 11pt)[#css("orange").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("orange"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("orange"))],
    [orangered],  [#text(font: "Fira Mono", size: 11pt)[#css("orangered").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("orangered"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("orangered"))],
    [orchid],  [#text(font: "Fira Mono", size: 11pt)[#css("orchid").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("orchid"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("orchid"))],
    [palegoldenrod],  [#text(font: "Fira Mono", size: 11pt)[#css("palegoldenrod").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("palegoldenrod"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("palegoldenrod"))],
    [palegreen],  [#text(font: "Fira Mono", size: 11pt)[#css("palegreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("palegreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("palegreen"))],
    [paleturquoise],  [#text(font: "Fira Mono", size: 11pt)[#css("paleturquoise").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("paleturquoise"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("paleturquoise"))],
    [palevioletred],  [#text(font: "Fira Mono", size: 11pt)[#css("palevioletred").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("palevioletred"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("palevioletred"))],
    [papayawhip],  [#text(font: "Fira Mono", size: 11pt)[#css("papayawhip").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("papayawhip"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("papayawhip"))],
    [peachpuff],  [#text(font: "Fira Mono", size: 11pt)[#css("peachpuff").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("peachpuff"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("peachpuff"))],
    [peru],  [#text(font: "Fira Mono", size: 11pt)[#css("peru").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("peru"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("peru"))],
    [pink],  [#text(font: "Fira Mono", size: 11pt)[#css("pink").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("pink"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("pink"))],
    [plum],  [#text(font: "Fira Mono", size: 11pt)[#css("plum").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("plum"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("plum"))],
    [powderblue],  [#text(font: "Fira Mono", size: 11pt)[#css("powderblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("powderblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("powderblue"))],
    [purple],  [#text(font: "Fira Mono", size: 11pt)[#css("purple").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("purple"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("purple"))],
    [red],  [#text(font: "Fira Mono", size: 11pt)[#css("red").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("red"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("red"))],
    [rosybrown],  [#text(font: "Fira Mono", size: 11pt)[#css("rosybrown").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("rosybrown"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("rosybrown"))],
    [royalblue],  [#text(font: "Fira Mono", size: 11pt)[#css("royalblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("royalblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("royalblue"))],
    [saddlebrown],  [#text(font: "Fira Mono", size: 11pt)[#css("saddlebrown").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("saddlebrown"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("saddlebrown"))],
    [salmon],  [#text(font: "Fira Mono", size: 11pt)[#css("salmon").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("salmon"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("salmon"))],
    [sandybrown],  [#text(font: "Fira Mono", size: 11pt)[#css("sandybrown").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("sandybrown"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("sandybrown"))],
    [seagreen],  [#text(font: "Fira Mono", size: 11pt)[#css("seagreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("seagreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("seagreen"))],
    [seashell],  [#text(font: "Fira Mono", size: 11pt)[#css("seashell").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("seashell"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("seashell"))],
    [sienna],  [#text(font: "Fira Mono", size: 11pt)[#css("sienna").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("sienna"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("sienna"))],
    [silver],  [#text(font: "Fira Mono", size: 11pt)[#css("silver").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("silver"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("silver"))],
    [skyblue],  [#text(font: "Fira Mono", size: 11pt)[#css("skyblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("skyblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("skyblue"))],
    [slateblue],  [#text(font: "Fira Mono", size: 11pt)[#css("slateblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("slateblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("slateblue"))],
    [slategray],  [#text(font: "Fira Mono", size: 11pt)[#css("slategray").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("slategray"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("slategray"))],
    [slategrey],  [#text(font: "Fira Mono", size: 11pt)[#css("slategrey").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("slategrey"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("slategrey"))],
    [snow],  [#text(font: "Fira Mono", size: 11pt)[#css("snow").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("snow"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("snow"))],
    [springgreen],  [#text(font: "Fira Mono", size: 11pt)[#css("springgreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("springgreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("springgreen"))],
    [steelblue],  [#text(font: "Fira Mono", size: 11pt)[#css("steelblue").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("steelblue"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("steelblue"))],
    [tan],  [#text(font: "Fira Mono", size: 11pt)[#css("tan").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("tan"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("tan"))],
    [teal],  [#text(font: "Fira Mono", size: 11pt)[#css("teal").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("teal"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("teal"))],
    [thistle],  [#text(font: "Fira Mono", size: 11pt)[#css("thistle").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("thistle"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("thistle"))],
    [tomato],  [#text(font: "Fira Mono", size: 11pt)[#css("tomato").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("tomato"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("tomato"))],
    [turquoise],  [#text(font: "Fira Mono", size: 11pt)[#css("turquoise").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("turquoise"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("turquoise"))],
    [violet],  [#text(font: "Fira Mono", size: 11pt)[#css("violet").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("violet"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("violet"))],
    [wheat],  [#text(font: "Fira Mono", size: 11pt)[#css("wheat").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("wheat"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("wheat"))],
    [white],  [#text(font: "Fira Mono", size: 11pt)[#css("white").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("white"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("white"))],
    [whitesmoke],  [#text(font: "Fira Mono", size: 11pt)[#css("whitesmoke").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("whitesmoke"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("whitesmoke"))],
    [yellow],  [#text(font: "Fira Mono", size: 11pt)[#css("yellow").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("yellow"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("yellow"))],
    [yellowgreen],  [#text(font: "Fira Mono", size: 11pt)[#css("yellowgreen").to-hex()]],  [#box(width: 1cm, height: 1cm, stroke: black,fill: css("yellowgreen"))],  [#box(width: 5cm, height: 1cm, stroke: none,fill: css("yellowgreen"))],
  )
]

#bibliography("manual.yml", title: "References")
