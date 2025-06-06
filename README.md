# The `css-colors` Package
 <!-- markdownlint-disable MD033 -->
<div align="center">Version 0.1.0</div>

Allows CSS/SVG named colors to be used directly in a Typst document.

## Template adaptation checklist

- [x] Fill out `README.md`
  - Change the `my-package` package name, including code snippets
  - Check section contents and/or delete sections that don't apply
- [x] Check and/or replace `LICENSE` by something that suits your needs
- [x] Fill out `typst.toml`
  - See also the [typst/packages README](https://github.com/typst/packages/?tab=readme-ov-file#package-format)
- [x] Adapt Repository URLs in `CHANGELOG.md`
  - Consider only committing that file with your first release, or removing the "Initial Release" part in the beginning
- [ ] Adapt or deactivate the release workflow in `.github/workflows/release.yml`
  - to deactivate it, delete that file or remove/comment out lines 2-4 (`on:` and following)
  - to use the workflow
    - [ ] check the values under `env:`, particularly `REGISTRY_REPO`
    - [ ] if you don't have one, [create a fine-grained personal access token](https://github.com/settings/tokens?type=beta) with [only Contents permission](https://stackoverflow.com/a/75116350/371191) for the `REGISTRY_REPO`
    - [ ] on this repo, create a secret `REGISTRY_TOKEN` (at `https://github.com/[user]/[repo]/settings/secrets/actions`) that contains the so created token

    if configured correctly, whenever you create a tag `v...`, your package will be pushed onto a branch on the `REGISTRY_REPO`, from which you can then create a pull request against [typst/packages](https://github.com/typst/packages/)
- [x] remove/replace the example test case
- [x] (add your actual code, docs and tests)
- [ ] remove this section from the README

## Getting Started

These instructions will get you a copy of the project up and running on the Typst web app.

```typ
#import "@preview/css-colors:0.1.0": *

Normal text may be #text(fill: css("crimson"))[colored so.]
```

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./thumbnail-dark.svg">
  <img src="./thumbnail-light.svg" alt="">
</picture>

## Installation

Follow these steps to set up your development environment and prepare for contributing to the project:

1. **Typst:**
   Install Typst (version 0.13.0 or higher) using the [official installation instructions](https://github.com/typst/typst?tab=readme-ov-file#installation). Typst is required to work with the core functionality of the project.

1. **Just:**
   Install [Just](https://just.systems/man/en/introduction.html), a handy command runner for executing predefined tasks. You can install it using a package manager or by downloading a pre-built binary. Refer to the [available packages](https://just.systems/man/en/packages.html) for installation instructions specific to your operating system.

1. **tytanic:**
   Install [tytanic](https://tingerrr.github.io/tytanic/index.html), a library essential for testing and working with Typst projects. Use the [quickstart installation guide](https://tingerrr.github.io/tytanic/quickstart/install.html) to get it up and running.

1. **Clone the Repository:**
   Download the project's source code by cloning the repository to your local machine:

    ```bash
    git clone https://github.com/kleinbottle/css-colors.git
    ```

Once you've completed these steps, your development environment will be ready.

### Next Steps

The `css-colors` package source code is located at:

```plaintext
src/css-colors.typ
```

This is where you will make any necessary changes to the module.

### Running Tests

To test the functionality of the module locally, run the predefined test cases using the following command:

```bash
just test
```

Ensure that all tests pass before submitting any changes to maintain the project's integrity.

If you want to test the module with a Typst file, you can install the `css-colors` package locally in the `preview` location by running:

```bash
just install-preview
```

Once installed, you can import the package into your Typst file using the following statement:

```typ
#import "@preview/css-colors:0.1.0": *
```

This setup allows you to experiment with the module in a Typst file before finalizing your changes.

## Usage

The following examples demonstrate the usage of the `css-colors` package in various cases:

```typ
#import "@preview/css-colors:0.1.0": *

#align(center)[
  #polygon.regular(
    fill: css("darkgoldenrod").lighten(60%),
    stroke: (paint: css("darkgoldenrod"), thickness: 4pt, cap: "round"),
    size: 60mm,
    vertices: 6,
  )
]
```

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./thumbnail-2-dark.svg">
  <img src="./thumbnail-2-light.svg" alt="">
</picture>

For additional examples, detailed explanations and the actual PDF output refer to the project manual.

## Acknowledgments

I would like to thank the Typst community on [Discord](https://discord.com/channels/1054443721975922748/1069937650125000807) for giving invaluable support during the development of this package.
