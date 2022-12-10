local status_ok, wk = pcall(require, "which-key")
if not status_ok then
    return
end

local setup = {
    plugins = {
        marks = false, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
            enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
            suggestions = 30, -- how many suggestions should be shown in the list?
        },
        presets = {
            operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
        },
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
    popup_mappings = {
        scroll_down = "<c-d>", -- binding to scroll down inside the popup
        scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 1, 1, 1 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 0,
    },
    layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 2, -- spacing between columns
        align = "left", -- align columns left, center or right
    },
    ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = "auto" -- automatically setup triggers
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
    ["a"] = { "<cmd>Alpha<cr>", "Menu" },
    ["b"] = {
        "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
        "Buffers",
    },
    ["e"] = { ":NvimTreeToggle<CR>", "Sidebar" },
    c = {
        name = "Windows",
        a = { "<cmd>BufferLinePickClose<CR>", "Pick buffer to close" },
        b = { "<cmd>BufferLineCloseRight<CR>", "Close buffers to the right" },
        c = { "<cmd>BufferLineCloseLeft<CR>", "Close buffers to the left" },
        h = { "<C-w>h", "Previous tab: (<C-h>)" },
        j = { "<C-w>j", "Previous tab: (<C-j>)" },
        k = { "<C-w>k", "Previous tab: (<C-k>)" },
        l = { "<C-w>l", "Previous tab: (<C-l>)" },
        x = { ":bprevious<CR>", "Next window: (<S-h>)" },
        y = { ":bnext<CR>", "Previous window: (<S-l>)" },
        z = { ":b#|bd#<CR>", "Close tab: (<leader>bd)" }
    },
    g = {
        name = "Git",
        j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
        k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
        l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
        p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
        s = { "<cmd>Telescope git_status<cr>", "Open changed file" },
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" }
    },
    s = {
        name = "Search",
        c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        f = { "<cmd>Telescope find_files<CR>", "Find files: (<leader>ff)" },
        g = { "<cmd>Telescope live_grep<CR>", "Grep: (<leader>fg)" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        p = { "<cmd>Telescope projects<CR>", "Projects: (<leader>fp)" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        z = { "<cmd>Telescope commands<cr>", "Commands" },
    },
    l = {
        name = "Lsp",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action: (<leader>la)" },
        f = { "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", "Format: (<leader>f)" },
        k = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover: (<leader>k)" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename: (<leader>lr)" },
        n = { "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", "Next: (<leader>lj)" },
        p = { "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", "Previous: (<leader>lk)" },
        o = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Open float: (<leader>o)" },
        q = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "Diagnostic: (<leader>lq)" },
        c = { "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", "Comment: (<leader>/)" },
        u = { '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', "Uncomment: (<leader>/)" },
        i = { "gg=G", "Indent: (<leader>i)" },
        d = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration: (<leader>d)" },
        D = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition: (<leader>dd)" },
        R = { "<cmd>lua vim.lsp.buf.references()<CR>", "References: (<leader>gr)" },
        m = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation (<leader>gi)" },
        I = { "<cmd>LspInfo<cr>", "LspInfo: (<leader>ii)" }
    },
    t = {
        name = "Terminal",
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
        h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
        v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" }
    },
    z = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
    },
}

wk.setup(setup)
wk.register(mappings, opts)