-- spell.luao
local o = vim.opt
local cmd = vim.cmd

o.spell = true                                  -- always spellcheck
o.spelllang = { 'en', 'pt_pt', 'de_de'}         -- set languages for spellcheck

cmd([[set iskeyword+=-]])   -- treats words with dash as one word
cmd('syntax on')
cmd('au TextYankPost * lua vim.highlight.on_yank{timeout=200}')

-- to fix error: Cannot find word list.
-- run `nvim -u NORC`
-- :set spell
-- :set spelllang=de
-- :set spelllang=pt_pt
-- It will prompt for the download of the lang files

-- if it cannot download, then manually we can add the files.
-- cd ~/.config/nvim/spell
-- wget http://ftp.vim.org/vim/runtime/spell/pt.utf-8.spl

-- shortcuts (TODO)
-- zg to add word to word list
-- zw to reverse
-- zug to remove word from word list
-- z= to get list of possibilities