local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.mypy,  -- Use `mypy` for diagnostics
        null_ls.builtins.diagnostics.ruff,  -- Assuming `ruff` is a diagnostic tool
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
}

null_ls.setup(opts)
