local tools = require("tools")

local settings = {
	install_root_dir = vim.fn.stdpath("data") .. "mason",

	-- Where Mason should put its bin location in your PATH. Can be one of:
	-- - "prepend" (default, Mason's bin location is put first in PATH)
	-- - "append" (Mason's bin location is put at the end of PATH)
	-- - "skip" (doesn't modify PATH)
	---@type '"prepend"' | '"append"' | '"skip"'
	PATH = "prepend",

	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,

	registries = {
		"github:mason-org/mason-registry",
	},

	providers = {
		"mason.providers.registry-api",
		"mason.providers.client",
	},

	github = {
		download_url_template = "https://github.com/%s/releases/download/%s/%s",
	},

	pip = {
		upgrade_pip = false,
		install_args = {},
	},

	ui = {
		check_outdated_packages_on_open = true,
		border = "none",
		keymaps = {
			toggle_package_expand = "<CR>",
			install_package = "i",
			update_package = "u",
			check_package_version = "c",
			update_all_packages = "U",
			check_outdated_packages = "C",
			uninstall_package = "X",
			cancel_installation = "<C-c>",
		},
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = tools.servers,
	automatic_installation = true,
})
require("mason-null-ls").setup({
    ensure_installed = tools.linters
})

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local opts = {}

for _, server in pairs(tools.servers) do
	opts = {
		on_attach = require("lsp.handlers").on_attach,
		capabilities = require("lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
