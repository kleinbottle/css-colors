// Global Styles
#set page(margin: 25mm)
#set text(size: 11pt, font: "Noto Serif")

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

#show link: set text(fill: blue)

// End of setup

= CSS Colors Module

== Introduction

The #link("https://en.wikipedia.org/wiki/X11_color_names")[X11 color names], developed in the 1980s, included a file named `rgb.txt` that was shipped with every #link("https://en.wikipedia.org/wiki/X_Window_System")[X11] installation. It mapped over 400 color names to specific RGB values. This list was used in Unix-based systems to standardize color representation, but it suffered from inconsistencies in invocation and usage.

The #link("https://www.w3.org/MarkUp/Wilbur/features.html")[HTML 3.2 specification] of 1996  introduced sixteen color names, derived from the standard 16 colors supported by the Windows VGA palette. These named colors are: `aqua`, `black`, `blue`, `fuchsia`, `gray`, `green`, `lime`, `maroon`, `navy`, `olive`, `purple`, `red`, `silver`, `teal`, `white`, and `yellow`. These named colors allowed users the convenience of names to be used for colors reliably and consistently across HTML documents, without recourse to their hexadecimal values.

The CSS Level 1 colors in 1996 introduced the same sixteen colors as the HTML 3.2 colors above while the CSS Level 2 colors augmented this by `orange` to seventeen named colors.

Finally, the #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG 1.0 Specification] of 2001 and the #link("https://www.w3.org/TR/css-color-3/#html4")[CSS Color Module Level 3] of 2011 have standardized #link("https://www.w3.org/TR/SVG11/types.html#ColorKeywords")[a list of 147 color names], known as the "extended color keywords" or the "recognized color keyword names" which included the original 16 colors, `orange`, and additional colors from the X11 set. This standardization aims to provide a consistent color naming scheme across web, and has remained relatively stable. It is this set of color names that forms the basis for this module.

== Purpose

This module allows #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG colors] to be used by their names rather than by their RGB or Hex values from within a typst file. It is principally a convenience for those who use SVG colors in their documents.

== Context

Typst comes with #link("https://typst.app/docs/reference/visualize/color/")[seven standard color functions] for accessing colors.

For LaTeX users, the standard way of invoking colors would have been something like:

`\usepackage[svgnames]{xcolor}` or `\usepackage[dvipsnames]{xcolor}`.

This would allow files to access _named colors_ from within `.tex` documents.

A module that allows named SVG colors to be used within `.typ` files would be a convenience for LaTeX users transitioning to Typst.

Moreover, _any_ user who wishes to use SVG named colors would also benefit from this module.

== Reference documentation

For easy reference, tabulations of the SVG color name, its RGB/Hex value, a color swatch, and a color stripe are available as

a. #link("svg-test-table.pdf")[PDF]; and

b. #link("svg-test-table.html")[HTML]

files.

== Usage

svg.(

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

== References

https://www.youtube.com/watch?v=HmStJQzclHc
Alex Sexton: Peachpuffs and Lemonchiffons [CSSConfUS2014]
