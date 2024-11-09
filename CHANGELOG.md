# Changelog

## v3.0.0 (2024-11-09)

### Breaking Change

- Decouple from anvil dotfiles

## v2.1.23 (2024-11-09)

### Changed

- Update lazyvim version

## v2.1.22 (2024-10-23)

### Changed

- Taskfile correction

## v2.1.21 (2024-10-23)

### Changed

- Add yamlfmt configuration

## v2.1.20 (2024-10-23)

### Changed

- Update yamlfmt configuration

## v2.1.19 (2024-08-05)

### Changed

- makefile cleanup

## v2.1.18 (2024-07-28)

### Changed

- Update conform configuration

## v2.1.17 (2024-07-28)

### Tools

- Update nvim version 28.07.24

## v2.1.16 (2024-06-14)

### Changed

- Add rename extra config

## v2.1.15 (2024-05-30)

### Changed

- Trouble v3 is now default remove extra config

## v2.1.14 (2024-05-25)

### Changed

- Tryout yanky

### Tools

- Introduce checkmate, update pre commit hooks version
- Update makefile and cz config
- Introduce checkmate, update pre commit hooks version

## v2.1.13 (2024-05-25)

### Tools

- Introduce checkmate, update pre commit hooks version
- Update makefile and cz config

## v2.1.12 (2024-05-25)

### Patch

- Update to latest lazyvim, use extras for kotlin markdown and toml, remove unused color schemes

## v2.1.11 (2024-04-04)

### Patch

- Force telescope to search hidden files

## v2.1.10 (2024-03-28)

### Patch

- Update lazyvim to 10.20, add helm extra

## v2.1.9 (2024-03-24)

### Fix

- Update colorscheme
- Remove commit links from changelog

### Patch

- Add sed to list of requirements, needed for spectre

## v2.1.8 (2024-03-19)

### Patch

- Remove empty line

## v2.1.7 (2024-03-08)

### Patch

- Reconfig for the newest update, remove conflicting configs

## v2.1.6 (2024-03-06)

### Patch

- Update and tweak pre commit config

## v2.1.5 (2024-03-06)

### Patch

- Start using editorconfig, remove checkmake

## v2.1.4 (2024-03-01)

### Patch

- Introduce checkmake validation to pre-commit config

## v2.1.3 (2024-03-01)

### Patch

- Update pre commit configuration
- Remove conflicting none-ls

## v2.1.2 (2024-02-23)

### Patch

- Add glow, remove headers

## v2.1.1 (2024-02-17)

### Patch

- Update pre commit configuration
- Update markdown and shell configuration, add sql linter and formatter

## v2.1.0 (2023-10-29)

### Feature

- Migrate to commitizen

### Patch

- Add robot file configuration

## v2.0.4 (2023-10-23)


### Changed

* Add configuration to prevent formatting on save
* Add formatters for json and yaml
* Recognize jenkinsfile as groovy file, improve treesitter config
* Split python config to own file, split data structures config to own file, add toml formatting

## v2.0.3 (2023-10-20)


### Changed

* Add lsp keymaps, add luacheckrc global vim to prevent warnings
* Add my own colorscheme, update plugins
* Add treesitter extra configuration
* Adjust plugin config to use conform for formatting and nonels for linting and diagnostics
* **infra:** Regular plugin update
* **infra:** Update pre commit and nvim plugins
* Refactor colorscheme config
* Refactor markdown config to a smaller file
* Remove duplicated  pre commit configuration, exclude lazy lock from EOF fixer
* Remove lazy lock file to prevent constant conflicts and constant commits for updating versions
* Remove personal config for python in favor of lazyvim extras
* Split and refactor jvm related configuration
* Update lazyvim to v10

## v2.0.2 (2023-10-04)


### Changed

* **infra:** Regular plugin update
* **main:** Remove licence and update readme
* **nvim:** Add kotlin formatter and linter
* **nvim:** Add kotlin to tree-sitter
* **nvim:** Add python formatter and linter
* **nvim:** Replace deprecated null-ls with none-ls

## v2.0.1 (2023-09-21)


### Changed

* **infra:** Plugin update
* **nvim:** Make hidden files visible in neo tree file explorer
* **nvim:** Refactor lsp, language options and update plugin versions

## v2.0.0 (2023-09-19)


### ⚠ BREAKING CHANGES

* Reconfigure setup based on lazyvim project

### Added

* Reconfigure setup based on lazyvim project


### Changed

* **infra:** Setup stylua configuration
* **nvim:** Fix configuration, deactivate plugins
* **nvim:** Refactor settings and other utils functions
* **nvim:** Update plugins and options

## v1.0.0 (2023-09-18)


### Added

* **infra:** Setup makefile, pre-commit, markdownlint and github workflows
