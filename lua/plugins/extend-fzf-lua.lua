-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    "ibhagwan/fzf-lua",
    opts = {
        grep = {
            rg_opts = "--column --line-number --no-heading --color=always --hidden --glob='!.git' --smart-case",
        },
    },
}
