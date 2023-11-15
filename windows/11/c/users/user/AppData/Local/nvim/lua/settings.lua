HOME = os.getenv("HOME")

-- basic settings
vim.o.encoding = "utf-8"
vim.o.backspace = "indent,eol,start" -- backspace works on every char in insert mode
vim.o.completeopt = "menuone,noselect"
vim.o.history = 1000
--vim.o.dictionary = '/usr/share/dict/words'
vim.o.startofline = true
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.undofile = true -- enable persistent undo
vim.cmd("set noshowmode") -- disable 2nd mode status line

-- mapping waiting time
vim.o.timeout = false
vim.o.ttimeout = true
vim.o.ttimeoutlen = 100

-- display
vim.o.showmatch = true -- show matching brackets
vim.o.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.o.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.o.laststatus = 2 -- always show status line

vim.o.list = false -- do not display white characters
vim.o.foldenable = false
vim.o.foldlevel = 4 -- limit folding to 4 levels
vim.o.foldmethod = "syntax" -- use language syntax to generate folds
vim.o.wrap = true --do wrap lines even very long
vim.o.eol = false -- show if there's no eol char
vim.o.showbreak = false -- character to show when line is broken

-- sidebar
vim.o.nu = true
vim.o.relativenumber = true -- line number on the left
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = "yes" -- keep 1 column for coc.vim check
vim.o.modelines = 0
vim.o.showcmd = true -- display command in bottom bar

-- Search
vim.o.incsearch = true -- starts searching as soon as typing, without enter needed
vim.o.ignorecase = true -- ignore letter case when searching
vim.o.smartcase = true -- case insentive unless capitals used in search

vim.o.matchtime = 2 -- delay before showing matching paren
vim.o.mps = vim.o.mps .. ",<:>"

-- white characters
vim.o.autoindent = true
vim.o.tabstop = 2 -- 1 tab = 2 spaces
vim.o.shiftwidth = 2 -- indentation rule
vim.o.formatoptions = "qnj1" -- q - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.o.expandtab = true -- expand tab to spaces
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

-- backup files
vim.o.backup = false -- use backup files
vim.o.writebackup = false
vim.o.swapfile = false -- do not use swap file
-- vim.o.undodir = HOME .. '/.vim/tmp/undo//' -- undo files
-- vim.o.backupdir = HOME .. '/.vim/tmp/backup//' -- backups
-- vim.o.directory = '/.vim/tmp/swap//' -- swap files

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[
 au FileType python set ts=4 sw=4
 au BufRead,BufNewFile *.md set ft=mkd tw=80 syntax=markdown
 au BufRead,BufNewFile *.rmd set ft=mkd tw=80 syntax=markdown
 au BufRead,BufNewFile *.ppmd set ft=mkd tw=80 syntax=markdown
 au BufRead,BufNewFile *.markdown set ft=mkd tw=80 syntax=markdown
 au BufRead,BufNewFile *.slimbars set syntax=slim
]])

-- commands mode
vim.o.wildmenu = true -- on TAB, complete options for system command
vim.o.wildignore =
	"deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc"

-- only show cursorline in the current window and in normal mode.
vim.cmd([[
 augroup cline
 au!
 au WinLeave * set nocursorline
 au WinEnter * set cursorline
 au InsertEnter * set nocursorline
 au InsertLeave * set cursorline
 augroup END
]])

-- minimap
vim.cmd("let g:minimap_auto_start = 0")
vim.cmd("let g:minimap_auto_start_win_enter = 0")

-- colorscheme
vim.cmd("set t_Co=256")
vim.opt.termguicolors = true
vim.cmd("colorscheme dracula")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

-- colorscheme for vimr
vim.g.rout_follow_colorscheme = 1

-- plugin-manager
vim.cmd("call nvim_create_user_command('PlugInstall', '! source ~/.dotfiles/vim/plugin_manager.sh', {})")

vim.cmd(
	"call nvim_create_user_command('PlugUpdate', '! cd $VDOTDIR/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd ', {})"
)

-- render function for .rmd
vim.cmd(
	'call nvim_create_user_command(\'Render\', \'! R -e "rmarkdown::render(\\"`realpath %`\\")" && FILE="`realpath %`" && tmux neww zathura ${FILE/rmd/pdf} && tmux last-window \', {})'
)

