# My neovim config

'cause I had nothing better to do...

## Requirements

- Ensure version of installed neovim is at least `0.8.0`
- Ensure the following packages are installed on your machine:

  1. `git`
  2. `make`
  3. `pip`
  4. `python`
  5. `npm`
  6. `node`
  7. `groovy`
  8. `lua`
  9. `groovy`
  10. `xclip`

- Some others are supposed to be installed automatically using `mason` plugin:

  1. `prettier`
  2. `black`
  3. `flake8`
  4. `stylua`

For validating health of the installation run inside neovim:

```shell
:checkhealth
```

## First run

Before initializing neovim open the bootstrap configuration and save.

```shell
cd $HOME/.config/nvim/lua/bootstrap.lua
```

It will trigger the download of configured missing language packs - PT and DE.

After it will trigger the download and installation of all the plugins used.
It might fail at first for some packages, saving again should fix it.
If it does not do the next step and save after it is successful.

It should also trigger installation of the Language Server Protocols (LSP),
linters and formatters.

In case of some failure type inside neovim and validate outcome:

```shell
:Mason
:MasonInstall {{lsp/linter/formatter}}
```

More formatters can be found via `null-ls` plugin, some might not be available
via `mason`, these need to be installed manually.

- <https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting>

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
