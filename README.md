# My neovim config

'cause I had nothing better to do...

Installation of my version of [lazyvim](https://www.lazyvim.org/).

This repository overrides LazyVim default configurations.

## Requirements

- Ensure version of installed neovim is at least `0.8.0`

  1. `git`
  2. `make`
  3. `pip`
  4. `python`
  5. `npm`
  6. `node`
  7. `groovy`
  8. `lua`
  9. `xclip`
  10. `(macos) gnu-sed`

For validating health of the installation run inside neovim:

```shell
:checkhealth
```

## First run

Go into lazy menu `:Lazy` and validate all the installations and all updates are done.

Validate Mason plugins by typing `:Mason` and if required install extra plugins through
`:MasonInstall {{lsp/linter/formatter}}`

## Issues

Error for spell files not found:

```shell
nvim -u NORC -c 'set spelllang=pt_pt spell'
nvim -u NORC -c 'set spelllang=de_de spell'
```

AFAIK can happen that file is not downloaded because of wrong url event if triggered.

## Aknowledgments

This configuration is heavily inspired by

- <https://github.com/LunarVim/nvim-basic-ide>
- <https://github.com/LazyVim/LazyVim/tree/main>
