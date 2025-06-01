#import "@preview/css-colors:0.1.0": *

#assert.eq(
  css("aliceblue"), rgb("#f0f8ff"), message: "The color name aliceblue should be the same as the hex value #f0f8ff.",
)
#assert.eq(
  css("AliceBlue"), rgb("#f0f8ff"), message: "The color name AliceBlue should be the same as the hex value #f0f8ff.",
)
#assert.eq(css("color"), rgb("#000000"), message: "The color name color should default to black.",
)
