#import "/src/niram-css.typ": *

#assert.eq(
  text(fill: css("crimson"))[colored text],
  text(fill: rgb("#dc143c"))[colored text],
  message: "The text 'colored text' is not colored crimson."
)

#assert.eq(
  underline(stroke: css("teal"))[important.],
  underline(stroke: rgb("#008080"))[important.],
  message: "This underline is not in the color teal."
)
