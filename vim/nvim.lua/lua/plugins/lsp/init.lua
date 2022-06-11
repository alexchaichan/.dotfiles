local _ = require("lspconfig")

require("plugins.lsp.configs")
require("plugins.lsp.handlers").setup()
require("plugins.lsp.null-ls")
require("plugins.lsp.lspsaga")
