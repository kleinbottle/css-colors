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

Finally, the #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG 1.0 Specification] of 2001 and the #link("https://www.w3.org/TR/css-color-3/#html4")[CSS Color Module Level 3] of 2011 have standardized #link("https://www.w3.org/TR/SVG11/types.html#ColorKeywords")[a list of 147 color names], known as the "extended color keywords" or the "recognized color keyword names" which included the original 16 colors, `orange`, and additional colors from the X11 set. This standardization aims to provide a consistent color naming scheme across the Web, and has remained relatively stable. It is this set of color names that forms the basis for this module. These named colors are standard both for CSS and SVG, although we shall refer to them here as CSS Colors.

=== CSS colors vis-a-vis Typst

Typst comes with #link("https://typst.app/docs/reference/visualize/color/")[seven standard _color functions_] for accessing colors.

It also ships with _eighteen pre-defined colors_ which include the sixteen named colors, plus `orange`, plus one more color named `eastern`. The color `eastern` is undefined in the CSS colors. The remaining seventeen colors have identical names, but different RGB/Hex values, as tabulated below.

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

For easy reference, tabulations of the CSS color name, its RGB/Hex value, a color swatch, and a color stripe are available as

a. #link("src/css-test.pdf")[PDF]; and

b. #link("src/css-test.html")[HTML]

files.

== Usage

The CSS Color Module provides a single function called `css()` which takes a valid CSS color name as argument, and returns the corresponding Typst `rgb()` code with the hexadecimal representation of the color.

The CSS Color module accepts lowercase and CamelCase names as valid CSS colors.
```
#import "@preview/css-colors:0.1.0": *


```

== Notes




== References

https://www.youtube.com/watch?v=HmStJQzclHc
Alex Sexton: Peachpuffs and Lemonchiffons [CSSConfUS2014]
