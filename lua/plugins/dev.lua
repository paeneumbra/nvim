-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

    -- add more treesitter parsers
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "json",
                "kotlin",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "vim",
                "yaml",
            },
        },
    },

    -- add any tools you want to have installed below
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "flake8",
                "helm-ls",
                "groovy-language-server",
                "gradle-language-server",
                "kotlin-language-server",
                "markdownlint",
                "pyright",
                "shellcheck",
                "shfmt",
                "stylua",
                "yaml-language-server",
            },
        },
    },

    {
        "nvimtools/none-ls.nvim",
        opts = function(_, opts)
            if type(opts.sources) == "table" then
                local nls = require "null-ls"
                vim.list_extend(opts.sources, {
                    nls.builtins.formatting.markdownlint,
                    nls.builtins.diagnostics.markdownlint,
                })
            end
        end,
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                dockerls = {},
                docker_compose_language_service = {},
                gradle_ls = {},
                groovyls = {},
                kotlin_language_server = {},
                helm_ls = {},
            },
        },
    },

    -- add symbols-outline
    {
        "simrat39/symbols-outline.nvim",
        cmd = "SymbolsOutline",
        keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
        config = true,
    },

    -- override nvim-cmp and add cmp-emoji
    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    },
}
