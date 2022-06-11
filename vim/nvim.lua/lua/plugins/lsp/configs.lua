local lspconfig = require("lspconfig")
local servers = { "sumneko_lua", "r_language_server", "pyright" }


for _, server in ipairs(servers) do
	local opts = {
		on_attach = require("plugins.lsp.handlers").on_attach,
		capabilities = require("plugins.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "plugins.lsp.settings." .. server)
	if has_custom_opts then
	 	opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end
	lspconfig[server].setup(opts)
end