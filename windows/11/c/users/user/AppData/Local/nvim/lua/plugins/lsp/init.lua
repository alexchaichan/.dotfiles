M = {}
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lspconfig = require("lspconfig")

local servers = { "lua_ls", "r_language_server", "pyright" }

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

M.server_capabilities = function()
  local active_clients = vim.lsp.get_active_clients()
  local active_client_map = {}

  for index, value in ipairs(active_clients) do
    active_client_map[value.name] = index
  end

  vim.ui.select(vim.tbl_keys(active_client_map), {
    prompt = "Select client:",
    format_item = function(item)
      return "capabilites for: " .. item
    end,
  }, function(choice)
    -- print(active_client_map[choice])
    print(vim.inspect(vim.lsp.get_active_clients()[active_client_map[choice]].server_capabilities.executeCommandProvider))
    vim.pretty_print(vim.lsp.get_active_clients()[active_client_map[choice]].server_capabilities)
  end)
end

require "plugins.lsp.lsp-signature"
require "plugins.lsp.lspsaga"
--require("plugins.lsp.mason")
require("plugins.lsp.handlers").setup()
require "plugins.lsp.null-ls"
require'lspconfig'.pyright.setup{}

local l_status_ok, lsp_lines = pcall(require, "lsp_lines")
if not l_status_ok then
  return
end

lsp_lines.setup()

return M
