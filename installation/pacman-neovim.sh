#!/bin/bash

set -uo pipefail

# Define some colors for output
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

# Print an info message
function print_info() {
  echo
  echo -e "${GREEN}$1${RESET}"
}

PKGS=(
  lua
  luarocks
  markdownlint-cli2
  neovim
  npm
  python-pynvim
  stow
  stylua
  xclip
)

print_info "Installing neovim and required packages"

for PKG in "${PKGS[@]}"; do
  print_info "INSTALLING PACKAGE: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

print_info "Neovim setup is complete"
