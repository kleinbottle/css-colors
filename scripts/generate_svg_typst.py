#! /usr/bin/env python
# SVG module generator and generator for test files
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
# Last revised : 2025-05-23

# generate_svg_typst.py

import subprocess

input_file = "svg-hex.txt"
output_typ_module = "svg-colors.typ"
output_typ_preview = "svg-test.typ"
output_typ_preview_pdf = "svg-test.pdf"
output_typ_preview_html = "svg-test.html"
# Step 1: Read color name and hex value pairs
colors = {}
with open(input_file, "r", encoding="utf-8") as f:
    for line in f:
        if line.strip():
            parts = line.strip().split()
            if len(parts) == 2:
                name, hexval = parts
                colors[name.lower()] = hexval.lower()

# Step 2: Generate svg-colors.typ module
with open(output_typ_module, "w", encoding="utf-8") as out:
    out.write("#let svg = (\n")
    for name, hexval in sorted(colors.items()):
        out.write(f'  {name}: rgb("{hexval}"),\n')
    out.write(")\n")

# Step 3: Generate svg-test.typ preview file with hex values
with open(output_typ_preview, "w", encoding="utf-8") as out:
    out.write('#import "svg-colors.typ": svg\n\n')
    out.write("#set page(margin: 25mm)\n")
    out.write('#set text(size: 11pt, font: "Noto Serif")\n\n')
    out.write("#align(center, text(size: 20pt)[SVG Colors Table])\n")
    out.write("#show table.cell.where(y: 0): smallcaps\n")
    out.write("#show table.cell.where(y: 0): strong\n")
    out.write("#align(center)[\n")
    out.write("  #table(\n")
    out.write("    inset: 10pt,\n")
    out.write("    columns: 4,\n")
    out.write("    stroke: none,\n")
    out.write(
        "    align: (left+horizon, left+horizon, center+horizon, center+horizon),\n"
    )
    out.write("    table.header([Name], [Hex Value], [Swatch], [Stripe]),\n")

    for name in sorted(colors):
        hexval = colors[name]
        out.write(
            " ".join(
                [
                    f"    [{name}],"
                    f' [#str("{hexval}")],'
                    f" [#box(width: 1cm, height: 1cm, stroke: black, fill: svg.{name})],"
                    f" [#box(width: 5cm, height: 1cm, stroke: none, fill: svg.{name})],\n"
                ]
            )
        )
    out.write("  )\n")
    out.write("]\n")

print("✅ Done! Typst files created with hex values:")
print(f"- {output_typ_module}")
print(f"- {output_typ_preview}")

# Step 4: Generate svg-test.pdf preview file with hex values
subprocess.run(["typst", "compile", output_typ_preview], encoding="utf-8")
print("✅ Done! PDF file created with hex values:")
print(f"- {output_typ_preview_pdf}")

# Step 5: Generate svg-test.html file with hex values
with open(input_file, "r", encoding="utf-8") as f:
    # Open the output HTML file
    with open(output_typ_preview_html, "w", encoding="utf-8") as out:
        # Write the initial HTML structure
        out.write("""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <title>SVG Colors Table</title>
  <style>
    .noto-serif-400 {
      font-family: "Noto Serif", serif;
      font-optical-sizing: auto;
      font-weight: 400;
      font-style: normal;
      font-variation-settings:
        "wdth" 100;
    }
    .noto-serif-600 {
      font-family: "Noto Serif", serif;
      font-optical-sizing: auto;
      font-weight: 600;
      font-style: normal;
      font-variation-settings:
        "wdth" 100;
    }
    h1 { text-align: center; }
    table { border-collapse: collapse; width: 60%; margin: 0 auto; /* Centers the table horizontally */}
    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
    th:nth-child(3), td:nth-child(3), th:nth-child(4), td:nth-child(4) {
      text-align: center; /* Center-align specific columns */
    }
    .swatch { width: 24px; height: 24px; display: inline-block; border: 1px solid #000; }
    .stripe { width: 100%; height: 16px; }
  </style>
</head>
<body class="noto-serif-400">
  <h1 class="noto-serif-600">SVG Colors Table</h1>
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
""")

        # Generate table rows from the input file
        for line in f:
            if line.strip():  # Skip empty lines
                name, hexval = line.strip().split()
                out.write(f"""      <tr>
        <td>{name}</td>
        <td>{hexval}</td>
        <td><span class="swatch" style="background-color: {hexval};"></span></td>
        <td><div class="stripe" style="background-color: {hexval};"></div></td>
      </tr>
""")

        # Close the HTML structure
        out.write("""    </tbody>
  </table>
</body>
</html>
""")

print(f"✅ Done! HTML file successfully created:")
print(f"- {output_typ_preview_html}")
