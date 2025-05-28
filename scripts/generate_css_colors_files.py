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
# Last revised : 2025-05-26

# generate_css_colors_files.py

import os
import subprocess

INPUT_FILE = os.path.abspath("css-hex.txt")
OUTPUT_TYP_MODULE = os.path.abspath("../src/css-colors.typ")
OUTPUT_TEST_TYP = os.path.abspath("../src/css-colors-table.typ")
OUTPUT_TEST_PDF = os.path.abspath("../src/css-colors-table.pdf")
OUTPUT_TEST_HTML = os.path.abspath("../src/css-colors-table.html")


def main():
    """Main function to generate all files."""
    color_map = get_css_color_map()
    generate_css_colors_module(color_map)
    generate_css_test_typ(color_map)
    generate_css_test_pdf()
    generate_css_test_html(color_map)


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
    with open(OUTPUT_TYP_MODULE, "w", encoding="utf-8") as out:
        # CSS color map
        out.write("#let css-colors = (\n")
        for name, hexval in sorted(color_map.items()):
            out.write(f'  {name}: rgb("{hexval}"),\n')
        out.write(")\n\n")

        # Function to get GB function from the color map given a color name
        out.write("#let css(color-name) = {\n")
        out.write(
            ".".join(
                [
                    "  css-colors.at(lower(str(color-name))",
                    'replace(" ", "")',
                    'replace("_", "")',
                    'replace("-", ""))\n',
                ]
            )
        )
        out.write("}\n")

    print("✅ Generated css-colors module:")
    print(f"- {OUTPUT_TYP_MODULE}")


def generate_css_test_typ(color_map):
    """Generate the CSS colors Typst file."""
    with open(OUTPUT_TEST_TYP, "w", encoding="utf-8") as out:
        out.write('#import "css-colors.typ": *\n\n')
        out.write("#set page(margin: 25mm)\n")
        out.write('#set text(size: 11pt, font: "Noto Serif")\n\n')
        out.write("#align(center, text(size: 20pt)[CSS Colors Table])\n")
        out.write("#show table.cell.where(y: 0): smallcaps\n")
        out.write("#show table.cell.where(y: 0): strong\n")
        out.write("#align(center)[\n")
        out.write("  #table(\n")
        out.write("    inset: 10pt,\n")
        out.write("    columns: 4,\n")
        out.write("    stroke: none,\n")
        out.write(
            "    align: (center+horizon, center+horizon, "
            "center+horizon, center+horizon),\n"
        )
        out.write("    table.header([Name], [Hex Value], [Swatch], [Stripe]),\n")

        for name in sorted(color_map):
            out.write(
                " ".join(
                    [
                        f"    [{name}],",
                        f' [#text(font: "Fira Mono", size: 11pt)'
                        f'[#css("{name}").to-hex()]],',
                        " [#box(width: 1cm, height: 1cm, stroke: black,"
                        f'fill: css("{name}"))],',
                        " [#box(width: 5cm, height: 1cm, stroke: none,"
                        f'fill: css("{name}"))],\n',
                    ]
                )
            )
        out.write("  )\n")
        out.write("]\n")

    print("✅ Generated CSS Colors Table Typst file:")
    print(f"- {OUTPUT_TEST_TYP}")


def generate_css_test_pdf():
    """Generate the CSS colors PDF file."""
    subprocess.run(["typst", "compile", OUTPUT_TEST_TYP], check=True, encoding="utf-8")
    print("✅ Generated CSS test PDF file:")
    print(f"- {OUTPUT_TEST_PDF}")


def generate_css_test_html(color_map):
    """Generate the CSS colors HTML file."""
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
  <title>CSS Colors Table</title>
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
  <h1 class="noto-serif-600">CSS Colors Table</h1>
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

    with open(OUTPUT_TEST_HTML, "w", encoding="utf-8") as out:
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

    print("✅ Generated CSS test HTML file:")
    print(f"- {OUTPUT_TEST_HTML}")


if __name__ == "__main__":
    main()
