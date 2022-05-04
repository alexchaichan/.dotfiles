set langmenu=en_US
let $LANG = 'en_US'

" set leader key
" let g:mapleader = "\<Space>"

" Set a Local Leader

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let maplocalleader = ','
let mapleader = ","
let g:mapleader = ","

set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
set pumheight=10                        " Makes popup menu smaller
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set laststatus=0                        " Always display the status line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
set spelllang=de





" Line Numbers & Indentation
set backspace=indent,eol,start  " To make backscape work in all conditions.
set ma                          " To set mark a at current cursor location.
set number                      " To switch the line numbers on.
set expandtab                   " To enter spaces when tab is pressed.
set smarttab                    " To use smart tabs.
set autoindent                  " To copy indentation from current line 
                                " when starting a new line.
set si                          " To switch on smart indentation.


" Search
set ignorecase                  " To ignore case when searching.
set smartcase                   " When searching try to be smart about cases.
set hlsearch                    " To highlight search results.
set incsearch                   " To make search act like search in modern browsers.
set magic                       " For regular expressions turn magic on.
set smartindent                         " Makes indenting smart

" Brackets
set showmatch                   " To show matching brackets when text indicator 
                                " is over them.
set mat=2                       " How many tenths of a second to blink 
                                " when matching brackets.


" Errors
set noerrorbells                " No annoying sound on errors.


" Color & Fonts
syntax enable                    " Enable syntax highlighting.
set encoding=utf8                " Set utf8 as standard encoding and 
                                 " en_US as the standard language.
set fileencoding=utf-8           " The encoding written to file

" first thing is entering vim mode, not plain vi
set nocompatible


" Enable 256 colors palette in Gnome Terminal.

set t_Co=256
colorscheme default


" might not be on by default, this enable the cursor line feature
" set cursorline
" set cursorcolumn
" set cursorline                          " Enable highlighting of the current line
" set ruler              			            " Show the cursor position all the time

highlight clear CursorLine
" hi CursorLineNr cterm=underline ctermfg=10 gui=bold guifg=green  
" highlight CursorLineNR ctermbg=blue 


" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>


" Files & Backup
set nobackup                     " Turn off backup.
set nowb                         " Don't backup before overwriting a file.
set noswapfile                   " Don't create a swap file.
set ffs=unix,dos,mac             " Use Unix as the standard file type.


" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif





au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %




inoremap <F2> <C-O>:NERDTree<CR>
nnoremap <F2> :NERDTree<CR>

inoremap <F3> <C-O>:NERDTreeClose<CR>
nnoremap <F3> :NERDTreeClose<CR>



inoremap <F5> <C-O>:set spell spelllang=de<CR>
nnoremap <F5> :set spell spelllang=de<CR>

inoremap <F6> <C-O>:set nospell<CR>
nnoremap <F6> :set nospell<CR>
