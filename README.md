# The `css-colors` Package
<div align="center">Version 0.1.0</div>

Enables CSS colors to be used by their names within a Typst document.

## Template adaptation checklist

- [ ] Fill out `README.md`
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

These instructions will get you a copy of the project up and running on the typst web app. Perhaps a short code example on importing the package and a very simple teaser usage.

```typ
#import "@preview/css-colors:0.1.0": *

Normal text may be #text(fill: css("crimson"))[colored so.]

#rect(width: 100%, height: auto, fill: css("darkorchid"))
```

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./thumbnail-dark.svg">
  <img src="./thumbnail-light.svg">
</picture>

## Installation

Set up your development environment by following these steps:

1. **Typst**
   Install Typst (version 0.13.0 or higher) using the [official installation instructions](https://github.com/typst/typst?tab=readme-ov-file#installation).


1. **Just**
   Install [Just](https://just.systems/man/en/introduction.html) using a package manager or by downloading a pre-built binary. For more information, refer to the [available packages](https://just.systems/man/en/packages.html).

1. **tytanic**
   Install [tytanic](https://tingerrr.github.io/tytanic/index.html) by following the [quickstart installation guide](https://tingerrr.github.io/tytanic/quickstart/install.html).

1. **Clone the Repository**
   Clone the project repository to your local machine:

    ```bash
    git clone https://github.com/kleinbottle/css-colors.git
    ```

Once you've completed these steps, your development environment will be ready.

## Usage

A more in-depth description of usage. Any template arguments? A complicated example that showcases most if not all of the functions the package provides? This is also an excellent place to signpost the manual.

```typ
#import "@preview/my-package:0.1.0": *

#let my-complicated-example = ...
```

## Additional Documentation and Acknowledgments

* Project folder on server:
* Confluence link:
* Asana board:
* etc...

# Needed to install just, rust and tytanic
