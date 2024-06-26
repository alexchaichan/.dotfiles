 --       ___           ___           ___                                      ___
 --      /\  \         /\__\         /\  \          ___                       /\  \
 --      \:\  \       /:/ _/_       /::\  \        /\  \        ___          |::\  \
 --       \:\  \     /:/ /\__\     /:/\:\  \       \:\  \      /\__\         |:|:\  \
 --   _____\:\  \   /:/ /:/ _/_   /:/  \:\  \       \:\  \    /:/__/       __|:|\:\  \
 --  /::::::::\__\ /:/_/:/ /\__\ /:/__/ \:\__\  ___  \:\__\  /::\  \      /::::|_\:\__\
 --  \:\~~\~~\/__/ \:\/:/ /:/  / \:\  \ /:/  / /\  \ |:|  |  \/\:\  \__   \:\~~\  \/__/
 --   \:\  \        \::/_/:/  /   \:\  /:/  /  \:\  \|:|  |   ~~\:\/\__\   \:\  \
 --    \:\  \        \:\/:/  /     \:\/:/  /    \:\__|:|__|      \::/  /    \:\  \
 --     \:\__\        \::/  /       \::/  /      \::::/__/       /:/  /      \:\__\
 --      \/__/         \/__/         \/__/        ~~~~           \/__/        \/__/

-- Get the HOME directory
local home_dir = os.getenv("HOME")

-- Construct the full path to the .work/vim.lua file
local vim_lua_path = home_dir .. "/.work/vim.lua"

-- Source the vim.lua file
vim.cmd("source " .. vim_lua_path)
-- basics
require "settings"
require "keymaps"
-- plugins
require "plugins.cmp"
require "plugins.telescope"
require "plugins.autopairs"
require "plugins.comment"
require "plugins.lsp-inlayhints"
require "plugins.gitsigns"
require "plugins.nvim-tree"
require "plugins.bufferline"
require "plugins.lualine"
require "plugins.impatient"
require "plugins.indentline"
require "plugins.autocommands"
require "plugins.null-ls"
require "plugins.dap"
require "plugins.mason"

