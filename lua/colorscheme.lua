local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    return
end

vim.o.termguicolors = true
vim.o.background = 'dark'
vim.cmd([[
    hi Normal ctermbg=NONE guibg=NONE'
]])
