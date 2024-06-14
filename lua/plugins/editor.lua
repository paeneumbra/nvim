-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    -- ThePrimeagen/harpoon quick track and move to files - <leader>H to add, <leader>h to open
    { import = "lazyvim.plugins.extras.editor.harpoon2" },
    -- LSP outline functions window - <leader>cs to trigger
    { import = "lazyvim.plugins.extras.editor.outline" },
    -- LSP navigation for lualine
    { import = "lazyvim.plugins.extras.editor.navic" },
    -- Debug Adaptor
    { import = "lazyvim.plugins.extras.dap.core" },

    { import = "lazyvim.plugins.extras.lang.helm" },
    { import = "lazyvim.plugins.extras.lang.docker" },
    { import = "lazyvim.plugins.extras.lang.terraform" },
    { import = "lazyvim.plugins.extras.test.core" },
    -- Better yank (copy paste)
    { import = "lazyvim.plugins.extras.coding.yanky" },
    -- Better rename
    { import = "lazyvim.plugins.extras.editor.inc-rename" },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "rasi", -- Linux rofi
                "ruby", -- Brewfile
                "git_config",
            })
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "luacheck",
                "shellcheck",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                bash = { "shellcheck", "shfmt" },
                sh = { "shellcheck", "shfmt" },
                zsh = { "shellcheck", "shfmt" },
            },
            format = {
                timeout_ms = 5000,
            },
        },
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            -- https://www.lazyvim.org/plugins/linting
            -- Event to trigger linters
            events = { "BufWritePost", "BufReadPost", "InsertLeave" },
            linters_by_ft = {
                lua = { "luacheck" },
                bash = { "shellcheck" },
                sh = { "shellcheck" },
                zsh = { "shellcheck" },
            },
            -- LazyVim extension to easily override linter options
            -- or add custom linters.
            ---@type table<string,table>
            linters = {},
        },
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        },
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
