local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
    return
end

project.setup({

    -- Methods of detecting the root directory. **"lsp"** uses the native neovim
    -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
    -- order matters: if one is not detected, the other is used as fallback. You
    -- can also delete or rearrange the detection methods.
    detection_methods = { "pattern", "lsp" },

    -- patterns used to detect root dir, when **"pattern"** is in detection_methods
    patterns = { ".git", "Makefile", "package.json" },
})

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
    return
end

telescope.load_extension('projects')