#import "/src/lib.typ" as my-package: *

#set page(width: 10cm, height: auto, margin: 5mm, fill: none)

// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#align(center)[_a thumbnail showing the package's output_]
