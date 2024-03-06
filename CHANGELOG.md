# Changelog

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

## [2.0.4](https://github.com/simao-ferreira/nvim/compare/v2.0.3...v2.0.4) (2023-10-23)


### Changed

* Add configuration to prevent formatting on save ([1c9579b](https://github.com/simao-ferreira/nvim/commit/1c9579b2a787e8b152244d22de676de3d30fadb0))
* Add formatters for json and yaml ([a447be6](https://github.com/simao-ferreira/nvim/commit/a447be6b2f23de759f367e1e4bf95b6a721bedc1))
* Recognize jenkinsfile as groovy file, improve treesitter config ([40d0c81](https://github.com/simao-ferreira/nvim/commit/40d0c8161edc5045d43f935dbe989e4f1c10f897))
* Split python config to own file, split data structures config to own file, add toml formatting ([39ba3f3](https://github.com/simao-ferreira/nvim/commit/39ba3f380af859f7b922e262adaa7a6d3f3e7fc2))

## [2.0.3](https://github.com/simao-ferreira/nvim/compare/v2.0.2...v2.0.3) (2023-10-20)


### Changed

* Add lsp keymaps, add luacheckrc global vim to prevent warnings ([91a58a6](https://github.com/simao-ferreira/nvim/commit/91a58a699f38c011a0eb75e921145cef1416b185))
* Add my own colorscheme, update plugins ([e416806](https://github.com/simao-ferreira/nvim/commit/e41680644c978cd9e7843f7883c5155c610f3241))
* Add treesitter extra configuration ([451aa17](https://github.com/simao-ferreira/nvim/commit/451aa17dc3643862f19010d8e007058852990e66))
* Adjust plugin config to use conform for formatting and nonels for linting and diagnostics ([9685848](https://github.com/simao-ferreira/nvim/commit/968584852b90c91fc948677afd0fc593d5bce5c7))
* **infra:** Regular plugin update ([94c7eeb](https://github.com/simao-ferreira/nvim/commit/94c7eeb905aa81b0466c783a02591e559e73bf4d))
* **infra:** Update pre commit and nvim plugins ([631ac99](https://github.com/simao-ferreira/nvim/commit/631ac99a9c78691ec8afda3b743059714819b6b0))
* Refactor colorscheme config ([792c780](https://github.com/simao-ferreira/nvim/commit/792c780b5aa42047447c53a6781cdb6e7cf121b0))
* Refactor markdown config to a smaller file ([4195be5](https://github.com/simao-ferreira/nvim/commit/4195be556580d3c97316a7dacccf305d1f8a8475))
* Remove duplicated  pre commit configuration, exclude lazy lock from EOF fixer ([4e893c6](https://github.com/simao-ferreira/nvim/commit/4e893c659e77f67b340bbbf34e45c64929a904c3))
* Remove lazy lock file to prevent constant conflicts and constant commits for updating versions ([b8d3b2f](https://github.com/simao-ferreira/nvim/commit/b8d3b2f8450a3656f207c5421748459cbc13988f))
* Remove personal config for python in favor of lazyvim extras ([3b0f6eb](https://github.com/simao-ferreira/nvim/commit/3b0f6eb9b67acbeca9b1969893fd949ca528ffe3))
* Split and refactor jvm related configuration ([67a14ff](https://github.com/simao-ferreira/nvim/commit/67a14ff035fc58929248dffaaa04c0e1558b49f3))
* Update lazyvim to v10 ([4ee68fc](https://github.com/simao-ferreira/nvim/commit/4ee68fcf826f1f3cd54515362d30d27efa21699b))

## [2.0.2](https://github.com/simao-ferreira/nvim/compare/v2.0.1...v2.0.2) (2023-10-04)


### Changed

* **infra:** Regular plugin update ([d9a1c51](https://github.com/simao-ferreira/nvim/commit/d9a1c511532bca7328023b135e987ae124ba630c))
* **main:** Remove licence and update readme ([dd0952d](https://github.com/simao-ferreira/nvim/commit/dd0952d480212a6cfac8dc75be9fa537c6dc7ca0))
* **nvim:** Add kotlin formatter and linter ([baf0e3b](https://github.com/simao-ferreira/nvim/commit/baf0e3b0694e1e18913dd5a52a3aee51064287cb))
* **nvim:** Add kotlin to tree-sitter ([d18d141](https://github.com/simao-ferreira/nvim/commit/d18d141430fbc84e5bfd05273444e80666d1aefc))
* **nvim:** Add python formatter and linter ([5f22433](https://github.com/simao-ferreira/nvim/commit/5f224335defa396d1a5e2a3a357fa7dcdd157d6d))
* **nvim:** Replace deprecated null-ls with none-ls ([b275470](https://github.com/simao-ferreira/nvim/commit/b275470abb3ade5cd49fdb028b863955a494e136))

## [2.0.1](https://github.com/simao-ferreira/nvim/compare/v2.0.0...v2.0.1) (2023-09-21)


### Changed

* **infra:** Plugin update ([214e703](https://github.com/simao-ferreira/nvim/commit/214e703d5cfa0a4ebe1f815a1b60ceead3e7d442))
* **nvim:** Make hidden files visible in neo tree file explorer ([00749a7](https://github.com/simao-ferreira/nvim/commit/00749a72d92d71e1c87a99d4ba596547a9fb0eed))
* **nvim:** Refactor lsp, language options and update plugin versions ([457a0df](https://github.com/simao-ferreira/nvim/commit/457a0df45e4805278bd5ba85939e75e26f1b0af7))

## [2.0.0](https://github.com/simao-ferreira/nvim/compare/v1.0.0...v2.0.0) (2023-09-19)


### ⚠ BREAKING CHANGES

* Reconfigure setup based on lazyvim project

### Added

* Reconfigure setup based on lazyvim project ([e5f4a25](https://github.com/simao-ferreira/nvim/commit/e5f4a253bf177fa25eca0019a1545d01d0054649))


### Changed

* **infra:** Setup stylua configuration ([35863f5](https://github.com/simao-ferreira/nvim/commit/35863f582bfcedf6b48d085aac7747700f4bd948))
* **nvim:** Fix configuration, deactivate plugins ([91f561b](https://github.com/simao-ferreira/nvim/commit/91f561b25f031987289964484fbc716d3a1fdb41))
* **nvim:** Refactor settings and other utils functions ([c4ba2c2](https://github.com/simao-ferreira/nvim/commit/c4ba2c256c80e7dfcc59f9a8a41eddd57b408669))
* **nvim:** Update plugins and options ([ec06d67](https://github.com/simao-ferreira/nvim/commit/ec06d67231eda1fcd80d9700c5b350bbf3a3559d))

## 1.0.0 (2023-09-18)


### Added

* **infra:** Setup makefile, pre-commit, markdownlint and github workflows ([4f1416a](https://github.com/simao-ferreira/nvim/commit/4f1416ae6a2f1cdb746a97bfcc2ede612b06ddea))
