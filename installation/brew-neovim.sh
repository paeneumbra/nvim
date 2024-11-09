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
  nvim
  npm
  stow
  lua
  luarocks
  stylua
)

print_info "Installing neovim and required packages"

for PKG in "${PKGS[@]}"; do
  print_info "INSTALLING PACKAGE: $PKG"
  brew install "$PKG"
done

print_info "Neovim setup is complete"
