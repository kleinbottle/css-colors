#import "/src/niram-css.typ": *

#assert.eq(
  css("AliceBlue"),
  rgb("#f0f8ff"),
  message: "The color name AliceBlue does not have the hex value #f0f8ff."
)

#assert.eq(
  css("aliceblue"),
  rgb("#f0f8ff"),
  message: "The color name AliceBlue does not have the hex value #f0f8ff."
)
