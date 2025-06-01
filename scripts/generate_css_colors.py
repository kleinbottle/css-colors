#! /usr/bin/env python
"""Generate css-colors Typst module and CSS colors table files."""
#
# Put together with help from ChatGPT
#
# https://chatgpt.com/share/68275dae-5034-8011-a7a8-a8040fb232c0
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# chyavana@gmail.com
#
# Nandakumar Chandrasekhar
# CloudOps Engineer
# navanitachora@gmail.com
#
# First written: 2025-05-21
# Last revised : 2025-05-29

# generate_css_colors.py

import os

CSS_COLORS_MODULE = os.path.abspath("../src/css-colors.typ")
HTML_COLORS_TABLE = os.path.abspath("../docs/css-colors-table.html")
INPUT_FILE = os.path.abspath("css-hex.txt")


def main():
    """Generate css-colors module and HTML colors table."""
    color_map = get_css_color_map()
    generate_css_colors_module(color_map)
    generate_html_colors_table(color_map)


def get_css_color_map():
    """Get the CSS color map from the input file."""
    color_map = {}
    with open(INPUT_FILE, "r", encoding="utf-8") as input_file:
        for line in input_file:
            if line.strip():
                parts = line.strip().split()
                if len(parts) == 2:
                    name, hexval = parts
                    color_map[name.lower()] = hexval.lower()
    return color_map

def generate_css_colors_module(color_map):
    """Generate the css-colors module."""
    with open(CSS_COLORS_MODULE, "w", encoding="utf-8") as out:
        # CSS color map
        out.write("#let css-colors = (\n")
        for name, hexval in sorted(color_map.items()):
            out.write(f'  {name}: rgb("{hexval}"),\n')
        out.write(")\n\n")

        # Function to get GB function from the color map given a color name
        out.write("#let css(color-name) = {\n")
        out.write('  css-colors.at(lower(str(color-name)), default: rgb("#000000"))\n')
        out.write("}\n")

    print("✅ Generated css-colors module:")
    print(f"- {CSS_COLORS_MODULE}")


def generate_html_colors_table(color_map):
    """Generate the HTML colors table."""
    html_begin = """<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fira+Mono:wght@400;500;700&
    display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,100..
    900;1,100..900&display=swap" rel="stylesheet">
  <title>Available CSS Colors</title>
  <style>
    .noto-serif-400 {
      font-family: "Noto Serif", serif;
      font-optical-sizing: auto;
      font-weight: 400;
      font-style: normal;
      font-variation-settings: "wdth" 100;
    }
    .noto-serif-600 {
      font-family: "Noto Serif", serif;
      font-optical-sizing: auto;
      font-weight: 600;
      font-style: normal;
      font-variation-settings: "wdth" 100;
    }
    h1 { text-align: center; }
    table { border-collapse: collapse; width: 60%; margin: 0 auto; }
    th { font-variant: small-caps; }
    th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
    th:nth-child(3), td:nth-child(3), th:nth-child(4), td:nth-child(4) {
      text-align: center; /* Center-align specific columns */
    }
    code { font-family: "Fira Mono", monospace; }
    .swatch {
      width: 24px;
      height: 24px;
      display: inline-block;
      border: 1px solid #000;
    }
    .stripe { width: 100%; height: 16px; }
  </style>
</head>
<body class="noto-serif-400">
  <h1 class="noto-serif-600">Available CSS Colors</h1>
  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Hex Value</th>
        <th>Color Swatch</th>
        <th>Color Stripe</th>
      </tr>
    </thead>
    <tbody>
"""

    html_end = """
    </tbody>
  </table>
</body>
</html>
"""

    with open(HTML_COLORS_TABLE, "w", encoding="utf-8") as out:
        out.write(html_begin)
        for name, hexval in color_map.items():
            out.write("      <tr>\n")
            out.write(f"        <td>{name}</td>\n")
            out.write(f"        <td><code>{hexval}</code></td>\n")
            out.write(
                f'        <td><span class="swatch" style="background-color: '
                f'{hexval};"></span></td>\n'
            )
            out.write(
                '        <td><div class="stripe" style="background-color: '
                f'{hexval};"></div></td>\n'
            )
            out.write("      </tr>\n")
        out.write(html_end)

    print("✅ Generated HTML colors table:")
    print(f"- {HTML_COLORS_TABLE}")


if __name__ == "__main__":
    main()
