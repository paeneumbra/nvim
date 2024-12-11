-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    -- LSP outline functions window - <leader>cs to trigger
    { import = "lazyvim.plugins.extras.editor.outline" },
    -- LSP navigation for lualine
    { import = "lazyvim.plugins.extras.editor.navic" },
    -- Better yank (copy paste)
    { import = "lazyvim.plugins.extras.coding.yanky" },
    -- Better rename
    { import = "lazyvim.plugins.extras.editor.inc-rename" },
    -- current function/class as float window
    { import = "lazyvim.plugins.extras.ui.treesitter-context" },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    },

    {
        "nvim-telescope/telescope.nvim",
        -- opts will be merged with the parent spec
        opts = {
            defaults = {
                file_ignore_patterns = { ".git/", "node_modules", "poetry.lock", ".idea/", ".venv/" },
                vimgrep_arguments = {
                    -- make sure hidden files are present
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--hidden",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                },
            },
        },
    },
}
