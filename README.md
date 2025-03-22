# My neovim config

'cause I had nothing better to do...

Installation of my version of [lazyvim](https://www.lazyvim.org/).

This repository overrides LazyVim default configurations.

## Requirements

- git
- python
- npm
- lua
- xclip(x11), pbcopy(macos) or  wl-copy(wayland)
- (macos) gnu-sed

## Install

Clone the repository

```shell
git clone git@github.com:itzalak/nvim.git
```

Installing minimal packages for linux

```shell
./installation/pacman-nvim.sh
```

Symlink the configuration

```shell
stow --verbose --target=$HOME/.config nvim
```

## First run

Go into lazy menu `:Lazy` and validate all the installations and all updates are done.

Validate Mason plugins by typing `:Mason`. Lazyvim should install all required plugins.

## Healthcheck

For validating health of the installation run inside neovim:

```shell
:checkhealth
```

## Issues

Error for spell files not found:

```shell
nvim -u NORC -c 'set spelllang=de_de spell'
```

AFAIK can happen that file is not downloaded because of wrong url event if triggered.

Groovyls cannot install via MasonInstall. Groovy is not installed by the minimal installation script because I tend to install it through sdkman.
Installing groovy should fix the issue.

## Acknowledgments

This configuration is heavily inspired by

- <https://github.com/LunarVim/Launch.nvim>
- <https://github.com/LazyVim/LazyVim>
