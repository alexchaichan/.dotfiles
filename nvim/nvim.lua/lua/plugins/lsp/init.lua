local _ = require("lspconfig")

require("plugins.lsp.configs")
require("plugins.lsp.handlers").setup()
require("plugins.lsp.null-ls")
require'lspconfig'.r_language_server.setup{}
require'lspconfig'.pyright.setup{}
