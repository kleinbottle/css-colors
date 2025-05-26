#import "css-colors.typ": *

#text("A rectangle filled with darkorchid:")

#rect(width: 2cm, height: 1cm, fill: css("darkorchid"))

#text("A rectangle filled with DarkOrchid:")

#rect(width: 2cm, height: 1cm, fill: css("DarkOrchid"))

#text("A rectangle filled with Dark Orchid:")

#rect(width: 2cm, height: 1cm, fill: css("Dark Orchid"))

#text("A rectangle filled with dark_orchid:")

#rect(width: 2cm, height: 1cm, fill: css("dark_orchid"))

Maroon as pre-defined color in Typst is:

#rect(width: 2cm, height: 1cm, fill: maroon)

Whereas the CSS named color Maroon is:

#rect(width: 2cm, height: 1cm, fill: css("maroon"))

and has hex value #get-hex-value("maroon").
