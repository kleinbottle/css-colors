#import "/src/css-colors.typ": *

#assert.eq(
  catch(() => css("invalidcolor")),
  "panicked with: \"error: invalid CSS color name: invalidcolor\""
)
