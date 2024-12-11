# My neovim config

'cause I had nothing better to do...

Installation of my version of [lazyvim](https://www.lazyvim.org/).

This repository overrides LazyVim default configurations.

## Requirements

- Ensure version of installed neovim is at least `0.8.0`

    1. git
    2. python
    3. npm
    4. lua
    5. xclip
    6. (macos) gnu-sed

## Install

Clone the repository

```shell
git clone git@github.com:itzalak/nvim.git
```

Install minimal packages

```shell
cd nvim
```

Installing minimal packages for linux

```shell
./installation/pacman-nvim.sh
```

Symlink the configuration

```shell
stow --verbose --target=$HOME nvim
```

## First run

Go into lazy menu `:Lazy` and validate all the installations and all updates are done.

Validate Mason plugins by typing `:Mason`. Lazyvim should install all required plugins.
If required install extra plugins through `:MasonInstall {{lsp/linter/formatter}}`

## Healthcheck

For validating health of the installation run inside neovim:

```shell
:checkhealth
```

## Issues

Error for spell files not found:

```shell
nvim -u NORC -c 'set spelllang=pt_pt spell'
nvim -u NORC -c 'set spelllang=de_de spell'
```

AFAIK can happen that file is not downloaded because of wrong url event if triggered.

Groovyls cannot install via MasonInstall. Groovy is not installed by the minimal installation script because I tend to install it through sdkman.
Installing groovy should fix the issue.

## Aknowledgments

This configuration is heavily inspired by

- <https://github.com/LunarVim/Launch.nvim>
- <https://github.com/LazyVim/LazyVim>
