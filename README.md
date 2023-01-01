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
  7. `prettier`
  8. `groovy`
  9. `lua`
  10. `stylua`
  11. `black`
  12. `flake8`
  13. `groovy`
  14. `xclip`

For validating health of the installation run inside neovim:

```
$ :checkhealth
```

## First run

Before initializing neovim open the bootstrap configuration and save.

```
$ cd $HOME/.config/nvim/lua/bootstrap.lua
```

This will trigger the download and installation of all the plugins used.
It might fail at first for some packages, saving again should fix it.

This will also trigger installation of the Language Server Protocols (LSP).
In case of some failure type inside neovim and validate outcome:

```
$ :LspInstall {{server}}
```

It will also trigger the download of missing language packs - PT and DE.

## Issues

Error for spell files not found:

```shell
$ nvim -u NORC -c 'set spelllang=pt_pt spell'
$ nvim -u NORC -c 'set spelllang=de_de spell'
```

AFAIK can happen that file is not downloaded because of wrong url event if triggered.

## Aknowledgments

This configuration is heavily inspired by

- https://github.com/LunarVim/nvim-basic-ide

A good video resource for understanding usage

- https://odysee.com/@chrisatmachine
