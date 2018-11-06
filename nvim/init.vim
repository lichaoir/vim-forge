set number
set tabstop=2
set expandtab
set shiftwidth=2
set shiftround
set notimeout
set ignorecase
set smartcase
set hidden
set previewheight=20
set cursorline
set termguicolors
set scrollback=-1
set mouse=a
syntax on

let mapleader=" "
let maplocalleader="\\"

" Window
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wh <c-w>h
nnoremap <leader>wl <c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>wo <c-w>o
nnoremap <leader>wJ <c-w>J
nnoremap <leader>wK <c-w>K
nnoremap <leader>wH <c-w>H
nnoremap <leader>wL <c-w>L
nnoremap <leader>wr <c-w>r
nnoremap <leader>wR <c-w>R
nnoremap <leader>w= <c-w>=
nnoremap <leader>w__ <c-w>_
nnoremap <leader>w_s 10<c-w>_
nnoremap <leader>w_m 20<c-w>_
nnoremap <leader>w_l 30<c-w>_
nnoremap <leader>w\| <c-w>\|

" Bottom Window
nnoremap <leader>wbs :split<cr><c-w>J10<c-w>_:set wfh<cr>
nnoremap <leader>wbm :split<cr><c-w>J20<c-w>_:set wfh<cr>
nnoremap <leader>wbl :split<cr><c-w>J30<c-w>_:set wfh<cr>

" Buffer
nnoremap <leader>bb :buffer<space>#<cr>
nnoremap <leader>bd :bprevious<cr>:bdelete<space>#<cr>
nnoremap <leader>br :checktime<cr>

" Wrap selected text with pair of characters
vnoremap <leader>w" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>w' <esc>`<i'<esc>`>a'<esc>
vnoremap <leader>w` <esc>`<i`<esc>`>a`<esc>
vnoremap <leader>w{ <esc>`<i{<esc>`>a}<esc>
vnoremap <leader>w} <esc>`<i{<esc>`>a}<esc>
vnoremap <leader>w( <esc>`<i(<esc>`>a)<esc>
vnoremap <leader>w) <esc>`<i(<esc>`>a)<esc>

" Finger health
inoremap <m-n> <c-n>
inoremap <m-p> <c-p>
nnoremap <m-j> 5<c-e>
nnoremap <m-k> 5<c-y>

" System clipboard
vnoremap <leader>C "*y
nnoremap <leader>P "*p

" Manage Plugins
call plug#begin()

" Plug 'arcticicestudio/nord-vim'
" Plug 'cocopon/iceberg.vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'
" Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-fugitive'

call plug#end()

" let g:nord_comment_brightness = 20
" let g:nord_cursor_line_number_background = 1
" colorscheme nord
" let g:airline_theme='nord'

" colorscheme iceberg
" let g:airline_theme='iceberg'

" let ayucolor='light'
" let ayucolor='mirage'
" let ayucolor='dark'
" colorscheme ayu
" let g:airline_theme='ayu'

" set background=dark
" colorscheme gruvbox

" colorscheme onedark

" colorscheme OceanicNext

set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

" deoplete
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('sources', {
\  '_': ['buffer', 'member', 'tag', 'file', 'omni']
\})

call deoplete#custom#var('omni', 'input_patterns', {
\  'scala': '[^. *\t]\.\w*'
\})

" fzf
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fa :Ag<space>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fp :Files<space>
nnoremap <leader>fll :BLines<cr>
nnoremap <leader>fly :BLines<space><c-r>0<cr>
nnoremap <leader>fL :Lines<cr>

highlight fzf1 gui=bold,reverse guifg=#005f87 guibg=#e4e4e4
highlight fzf2 gui=bold,reverse guifg=#005f87 guibg=#e4e4e4
highlight fzf3 gui=bold,reverse guifg=#005f87 guibg=#e4e4e4

" fugitive 
nnoremap <leader>gs :Gstatus<cr>

" vim-scala
let g:scala_scaladoc_indent = 1
