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

The #link("https://en.wikipedia.org/wiki/X11_color_names")[X11 color names], developed in the 1980s, included a file named `rgb.txt` that was shipped with every #link("https://en.wikipedia.org/wiki/X_Window_System")[X11] installation. It mapped over 400 color names to specific RGB values. This list was used in Unix-based systems to standardize color representation, but it suffered from inconsistencies in invocation and usage.

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

Finally, the #link("https://www.w3.org/TR/css-color-3/#svg-color")[SVG 1.0 Specification] of 2001 and the #link("https://www.w3.org/TR/css-color-3/#html4")[CSS Color Module Level 3] of 2011 have standardized #link("https://www.w3.org/TR/SVG11/types.html#ColorKeywords")[a list of 147 color names], known as the "extended color keywords" or the "recognized color keyword names" which included the original 16 colors, `orange`, and additional colors from the X11 set. This standardization aims to provide a consistent color naming scheme across the Web, and has remained relatively stable. It is this set of color names that forms the basis for this module. These named colors are standard both for CSS and SVG, although we shall refer to them here as CSS Colors.

== Purpose

The CSS Colors Module is a robust convenience that allows #link("https://www.w3.org/TR/css-color-3/#html4")[CSS colors] to be used by their names within a Typst file.

== Context

Typst comes with #link("https://typst.app/docs/reference/visualize/color/")[seven standard color functions] for accessing colors.

Any user who is familiar with CSS or SVG named colors may continue to use them in Typst documents by invoking this module.

== Reference documentation

For easy reference, tabulations of the SVG color name, its RGB/Hex value, a color swatch, and a color stripe are available as

a. #link("src/css-test.pdf")[PDF]; and

b. #link("src/css-test.html")[HTML]

files.

== Usage

Here is an example of how to use the CSS Colors Module:

```
#import "@preview/css-colors:0.1.0": *


```

== Notes

+ The eighteen predefined colors shipped with Typst include the sixteen named colors, plus `orange` and `eastern`. The name `eastern` is undefined in the CSS colors. The remaining seventeen colors have identical names, but different RGB/Hex values, as tabulated below.

#show table.cell.where(y: 0): smallcaps
#show table.cell.where(y: 0): strong
#align(center)[
  #table(
    table.header([Color Name], [Typst Hex Code], [Swatch], [CSS Hex Code], [Swatch]),
    columns: 5,
    stroke: none,
    align: (left+horizon, left+horizon, center+horizon, left+horizon, center+horizon),
    inset: 10pt,
    [aqua],	[`#7fdbff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#7fdbff"))], [`#00ffff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#00ffff"))],

    [black], [`#000000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000000"))],  [`#000000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000000"))],

    [blue],	[`#0074d9`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#0074d9"))], [`#0000ff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#0000ff"))],

    [eastern], [`#239dad`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#239dad"))], [Not Defined], [Not Defined],

    [fuchsia], [`#f012be`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#f012be"))],  [`#ff00ff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff00ff"))],

    [gray], [`#aaaaaa`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#aaaaaa"))], [`#808080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#808080"))],

    [green], [`#2ecc40`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#2ecc40"))], [`#008000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#008000"))],

    [lime],	[`#01ff70`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#01ff70"))], [`#00ff00`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#00ff00"))],

    [maroon],	[`#85144b`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#85144b"))],  [`#800000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#800000"))],

    [navy],	[`#001f3f`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#001f3f"))], [`#000080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#000080"))],

    [olive], [`#3d9970`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#3d9970"))],  [`#808000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#808000"))],

    [orange], [`#ff851b`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff851b"))], [`#ffa500`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffa500"))],

    [purple], [`#b10dc9`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#b10dc9"))], [`#800080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#800080"))],

    [red], [`#ff4136`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff4136"))],  [`#ff0000`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ff0000"))],

    [silver], [`#dddddd`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#dddddd"))], [`#c0c0c0`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#c0c0c0"))],

    [teal], [`#39cccc`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#39cccc"))], [`#008080`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#008080"))],

    [white], [`#ffffff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffffff"))], [`#ffffff`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffffff"))],

    [yellow],	[`#ffdc00`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffdc00"))], [`#ffff00`], [#box(width: 1cm, height: 1cm, stroke: black, fill: rgb("#ffff00"))],
  )
]

== References

https://www.youtube.com/watch?v=HmStJQzclHc
Alex Sexton: Peachpuffs and Lemonchiffons [CSSConfUS2014]
