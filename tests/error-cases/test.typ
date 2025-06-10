#import "/src/niram-css.typ": *

#assert.eq(
  catch(() => css("invalidcolor")),
  "panicked with: \"error: invalid CSS color name: invalidcolor\""
)
