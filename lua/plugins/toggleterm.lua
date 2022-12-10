local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

toggleterm.setup({
    -- Open mapping will conflicts when in insert mode
    -- Preferred way is to use it via which-key!
    --open_mapping = [[<leader>t]],
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    direction = "tab",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
    }
})

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<C-Q>', '<cmd>close<cr>', opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
