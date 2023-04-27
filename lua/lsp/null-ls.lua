local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/lua/null-ls/builtins/completion
local completion = null_ls.builtins.completion
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = true,
	sources = {
		actions.shellcheck,
		completion.spell,
		diagnostics.flake8,
		diagnostics.markdownlint,
		diagnostics.yamllint,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.ktlint,
		formatting.markdownlint,
		formatting.prettier.with({
			extra_filetypes = { "toml" },
			extra_args = {
				"--use-tabs",
				"--single-quote",
				"--prose-wrap always",
			},
		}),
		formatting.stylua,
	},
})
