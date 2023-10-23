-- shorten function name
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

-- window splitting
keymap("n", "<C-v>", ":vsplit<cr>", opts)
keymap("n", "<C-d>", ":split<cr>", opts)
keymap("n", "<C-t>", ":tabnew<cr>", opts)

-- better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- <"", ""> makro
-- keymap("i", "jl", "<ESC>la, \"\"<ESC>i", opts)
-- paste in insertmode

-- resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- hold yanked string
keymap("v", "p", '"_dP', opts)

-- visual Block --
-- move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- wrapper
keymap("v", "\"", "l:s/\\%V\\(.*\\)\\%V/\"\\1\"/<CR>", opts)
keymap("v", "\'", "l:s/\\%V\\(.*\\)\\%V/\'\\1\'/<CR>", opts)
keymap("v", "(", "l:s/\\%V\\(.*\\)\\%V/(\\1)/<CR>", opts)
keymap("v", "[", "l:s/\\%V\\(.*\\)\\%V/[\\1]/<CR>", opts)
keymap("v", "{", "l:s/\\%V\\(.*\\)\\%V/{\\1}/<CR>", opts)

-- terminal --
-- better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- alternate way to save
keymap("", "<C-w>", "<Nop>", opts) -- unmap first
-- save with ctr+w aswell
keymap("", "<C-w>", ":%s/\\s\\+$//e | %s/\\n\\{3,}/\\r\\r/e | w<CR>", opts)
-- alternate way to quit
keymap("", "<C-q>", "<Nop>", opts) -- unmap first
keymap("", "<C-q>", ":q!<CR>", opts) -- quit with ctrl+q

-- clean document remove all trailings in the whole file and trailing between to words and trailing more then one empty line
keymap("", "<C-a>", "<Nop>", opts) -- unmap first
keymap("", "<C-a>", ":%s/\\s\\+$//e | %s/\\s\\+/ /g | %s/\\n\\{3,}/\\r\\r/e | :w<CR>", opts)

-- activate spell
keymap("n", "<F5>", ":set spell spelllang=de<CR>", opts)
-- deactivate spell
keymap("n", "<F6>", ":set spell nospell<CR>", opts)

-----------------------------------------------------------------------
-- functions -
-----------------------------------------------------------------------

-----------------------------------------------------------------------
-- nvim-tree -
-----------------------------------------------------------------------
-- open with leader e
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-----------------------------------------------------------------------
-- telescope -
-----------------------------------------------------------------------
-- open with leader t
keymap("n", "<leader>t", ":Telescope find_files<CR>", opts)

-----------------------------------------------------------------------
-- harpoon -
-----------------------------------------------------------------------
keymap("n", "<leader>H", ":lua require(\"harpoon.mark\").add_file()<cr>", opts)
keymap("n", "<leader>h", ":lua require(\"harpoon.ui\").toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>g", ":lua require(\"harpoon.ui\").nav_next()<cr>", opts)
keymap("n", "<leader>G", ":lua require(\"harpoon.ui\").nav_prev()<cr>", opts)

-----------------------------------------------------------------------
-- easymotion -
-----------------------------------------------------------------------
vim.cmd('map <Leader><Leader> <Plug>(easymotion)')

-----------------------------------------------------------------------
-- outline toc for markdown -
-----------------------------------------------------------------------
keymap("n", "T", ":vimgrep '^\\#' % | cw<cr>", opts)
