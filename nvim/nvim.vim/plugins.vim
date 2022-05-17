""""""""""""" ranger
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
nmap <space>r :RnvimrToggle<CR>
""""""""""""" ranger end

"enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" let g:python3_host_prog ='/Library/Frameworks/Python.framework/Versions/3.10/bin/python3'
" let g:python_host_prog = '/usr/bin/python2'

let g:rout_follow_colorscheme = 1

" pipe operator
autocmd FileType r inoremap <buffer> ˘ <Esc>:normal! a %>%<CR>a
autocmd FileType rnoweb inoremap <buffer> ˘ <Esc>:normal! a %>%<CR>a
autocmd FileType rmd inoremap <buffer> ˘ <Esc>:normal! a %>%<CR>a

autocmd FileType r inoremap <buffer> µ <Esc>:normal! a %>%<CR>a
autocmd FileType rnoweb inoremap <buffer> µ <Esc>:normal! a %>%<CR>a
autocmd FileType rmd inoremap <buffer> µ <Esc>:normal! a %>%<CR>a

" zuweisungspfeil
autocmd FileType r inoremap <buffer> – <Esc>:normal! a <-<CR>a
autocmd FileType rnoweb inoremap <buffer> – <Esc>:normal! a <-<CR>a
autocmd FileType rmd inoremap <buffer> – <Esc>:normal! a <-<CR>a

" chunks
" mac
autocmd FileType rmd inoremap <buffer> ⁄ <Esc>:normal! a```{r message=FALSE, warning=FALSE}```<CR>a
" linux
autocmd FileType rmd inoremap <buffer> → <Esc>:normal! a```{r message=FALSE, warning=FALSE}```<CR>a

let R_assign=3

nmap <silent> <leader>j <Plug>DashSearch<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimtex                                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
" filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
""""syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
""""let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
"""let g:vimtex_view_general_viewer = 'okular'
"""let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
"""let g:vimtex_compiler_method = 'latexrun'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1


" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme='dracula'

" Plugin Related Settings

" NCM2
"autocmd BufEnter * call ncm2#enable_for_buffer()    " To enable ncm2 for all buffers.
"set completeopt=noinsert,menuone,noselect           " :help Ncm2PopupOpen for more
                                                    " information.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" snippets                                                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""let g:UltiSnipsExpandTrigger="<tab>"


" list all snippets for current filetype
"""""""""""let g:UltiSnipsListSnippets="<c-l>"




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""bookmark""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" highlight BookmarkSign ctermbg=NONE ctermfg=160
" highlight BookmarkLine ctermbg=194 ctermfg=NONE
" let g:bookmark_sign = '♥'
" let g:bookmark_highlight_lines = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""telescope""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""autopairs"""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""" coc-pairs

autocmd FileType rmd let b:coc_pairs = [["$", "$"], ["*", "*"], ["**", "**"]]

autocmd FileType markdown let b:coc_pairs_disabled = ['`']

autocmd FileType rmd let b:coc_pairs_disabled = ['<']

autocmd FileType R let b:coc_pairs_disabled = ['<']
autocmd FileType r let b:coc_pairs_disabled = ['<']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dashboard                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" default value is clap
let g:dashboard_default_executive ='telescope'

" header
let g:dashboard_custom_header = [
\ ' ██╗   ██╗ ██╗ ██╗   ██╗ ██╗',
\ ' ██║   ██║ ██║ ██║  ██║  ██║',
\ ' ██║   ██║ ██║ ██║██║    ██║',
\ ' ╚██╗ ██╔╝ ██║ ██║  ██║  ██║',
\ '  ╚████╔╝  ██║ ██║   ██║ ██║',
\ '   ╚═══╝   ╚═╝ ╚═╝   ╚═╝ ╚═╝',
\]




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""comment""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""die folgenden 3 befehle  funktionieren nicht!
" autocmd FileType rmd setlocal commentstring=<!--%s-->
" autocmd FileType Rmd setlocal commentstring=<!--%s-->
" autocmd FileType R setlocal commentstring=#%s


"""" wenn probleme mit comments sind dann `:verbose set commentstring?`
"""" und abchecken, wo man den string aendern muss
" für .rmd dateien muss man den unteren befehl in die folgende file eintragen
" ~/Dropbox/.config/nvim/pack/plugins/start/vim-polyglot/ftplugin/rmd.vim
" setlocal commentstring=<!--%s-->




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""floaterm"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"let g:floaterm_shell = 'zsh'

"map <leader>ll :FloatermNew<CR>
"map <leader>kk :FloatermKill<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" NERD Tree
map <leader>nn :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p


let g:NERDTreeWinSize=25


let g:Tlist_WinWidth=25


" nnoremap <leader>tt :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Tabs & Navigation
map <leader>nt :tabnew<cr>    " To create a new tab.
map <leader>to :tabonly<cr>     " To close all other tabs (show only the current tab).
map <leader>tc :tabclose<cr>    " To close the current tab.
map <leader>tm :tabmove<cr>     " To move the current tab to next position.
map <leader>tn :tabn<cr>        " To swtich to next tab.
map <leader>tp :tabp<cr>        " To switch to previous tab.



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""markdown preview """""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''



" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
" let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
" let g:mkdp_markdown_css = 'Dropbox/styles/preview.css'
"let g:mkdp_markdown_css = 'Users/user/Dropbox/styles/preview.css'


" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
" let g:mkdp_highlight_css = 'Dropbox/styles/preview.css'
" let g:mkdp_highlight_css = 'Users/user/Dropbox/styles/preview.css'
'
" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown', 'rmd', 'Rmd']



" R
if $AUTOSTARTR == "yes"
    let R_auto_start = 1
endif

let g:R_open_example = 0

let g:R_objr_auto_start = 'yes'


"windowsize
" let R_editor_w = 120
" let R_editor_h = 90
"
"
"
"
"""" python qtconsole stuff
" Run current file
nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>DD :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
""""" end python qtconsole stuff




"" vim table mode

let g:table_mode_corner='|'

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'r': ['R', '--slave', '-e', 'languageserver::run()'],
    \ }
