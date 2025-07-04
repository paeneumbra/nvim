# Changelog

## v3.2.4 (2025-07-04)

### Changed

- remove aider

## v3.2.3 (2025-07-01)

### Changed

- bump pre commit plugin version

## v3.2.2 (2025-07-01)

### Changed

- update repositories

## v3.2.1 (2025-06-10)

### Changed

- try smear cursor
- introduce neogen - comment tools
- introduce biome formatter

## v3.2.0 (2025-05-25)

### Changed

- Introduce experimental aider configuration

## v3.1.23 (2025-05-21)

### Changed

- remove mason workaround

### Tools

- bump pre commit plugins

## v3.1.22 (2025-05-10)

### Fixed

- temporary mason workaround

## v3.1.21 (2025-05-08)

### Changed

- add typescript extra

## v3.1.20 (2025-05-04)

### Changed

- extend fzf configuration for hidden files

## v3.1.19 (2025-05-04)

### Changed

- add extension config for snacks picker

## v3.1.18 (2025-05-02)

### Changed

- add guess indent and nvim spider
- add newer lazyvim plugins
- remove lazyvim defaults
- tryout blink
- consolidate editor config in one file

### Tools

- bump pre commit plugins

## v3.1.17 (2025-04-19)

### Changed

- drop black in favor of ruff

## v3.1.16 (2025-04-18)

### Tools

- update pre commit and lua config

## v3.1.15 (2025-03-22)

### Changed

- update pre commit version

### Notes

- update readme

## v3.1.14 (2025-03-14)

### Changed

- cleanup

## v3.1.13 (2025-02-14)

### Changed

- back to tokyonight

## v3.1.12 (2025-02-14)

### Changed

- tryout catppuccin

### Notes

- update readme

## v3.1.11 (2025-02-09)

### Changed

- Try tokyonight moon

## v3.1.10 (2025-02-09)

### Changed

- Restructure extras after last update

## v3.1.9 (2025-02-09)

### Changed

- update lazyvim

## v3.1.8 (2025-01-03)

### Changed

- colorscheme was renamed

## v3.1.7 (2024-12-30)

### Changed

- add prettier to format css

## v3.1.6 (2024-12-27)

### Changed

- remove mardownlint installation, it is managed by mason

## v3.1.5 (2024-12-27)

### Changed

- Fix mardown, remove scala, update sql, clean options

## v3.1.4 (2024-12-27)

### Changed

- Tweak markdown, does not seem to be working

## v3.1.3 (2024-12-22)

### Changed

- adjust clipboard notes and installation

## v3.1.2 (2024-12-16)

### Changed

- Cleanup disabled plugins
- Update plugins in the wake of lazyvim 14

## v3.1.1 (2024-12-14)

### Changed

- lazyvim version update, clean color schemes config file

## v3.1.0 (2024-12-11)

### Changed

- rever the messy structure

## v3.0.5 (2024-12-11)

### Changed

- remove harpoon, fix markdown installation, use markdownlint-cli2

## v3.0.4 (2024-12-09)

### Changed

- split editor, update config

## v3.0.3 (2024-11-20)

### Changed

- add extras for dotfiles, remove robot

### Notes

- Update readme on groovyls warning

## v3.0.2 (2024-11-17)

### Changed

- Update lazyvim, add xclip to installation

## v3.0.1 (2024-11-09)

### Tools

- add lua to nvim script installation

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
