-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.autoindent = true -- indent a new line
opt.backspace = { "indent", "eol", "start" } -- use backspace to delete i,o,s
opt.conceallevel = 0 -- markdown `` is visible again
opt.fileencoding = "utf-8"
opt.ignorecase = true
opt.incsearch = true
opt.number = true -- numbered lines
opt.relativenumber = true -- displays current line number
opt.scrolloff = 6 -- minimum lines around cursor when scrolling
opt.shiftwidth = 4
opt.smartcase = true
opt.smartindent = true -- Insert indents automatically
opt.softtabstop = 4
opt.tabstop = 4
opt.termguicolors = true -- enable 24 bit colors
opt.wrap = false -- Disable line wrap

-- LanguageFeatures
opt.spell = true
opt.spelllang = { "en", "pt_pt", "de_de" }

-- to fix error: Cannot find word list.
-- run `nvim -u NORC`
-- :set spell
-- :set spelllang=de
-- :set spelllang=pt_pt
-- It will prompt for the download of the lang files

-- if it cannot download, then manually we can add the files.
-- cd ~/.config/nvim/spell
-- wget http://ftp.vim.org/vim/runtime/spell/pt.utf-8.spl
