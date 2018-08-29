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

let mapleader=" "
let maplocalleader="\\"

" Move around
nnoremap <leader>j <c-f>
nnoremap <leader>k <c-b>

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
nnoremap <leader>w_ <c-w>_
nnoremap <leader>w\| <c-w>\|

" ## Terminal
nnoremap <leader>wts :split +terminal<cr><c-w>J10<c-w>_:set wfh<cr>
nnoremap <leader>wtm :split +terminal<cr><c-w>J20<c-w>_:set wfh<cr>
nnoremap <leader>wtl :split +terminal<cr><c-w>J30<c-w>_:set wfh<cr>

" Buffer
nnoremap <leader>bb :buffer<space>#<cr>
nnoremap <leader>bd :buffer<space>#<cr>:bdelete<space>#<cr>

" ## Terminal
nnoremap <leader>bts :split<cr>:buffer<space>term://<cr><c-w>J10<c-w>_:set wfh<cr>
nnoremap <leader>btm :split<cr>:buffer<space>term://<cr><c-w>J20<c-w>_:set wfh<cr>
nnoremap <leader>btl :split<cr>:buffer<space>term://<cr><c-w>J30<c-w>_:set wfh<cr>


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

" System clipboard
vnoremap <leader>C "*y
nnoremap <leader>P "*p

" Manage Plugins
call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'trevordmiller/nova-vim'
Plug 'cocopon/iceberg.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-fugitive'

call plug#end()

" colorscheme nord
" let g:airline_theme='nord'

" colorscheme nova
" let g:airline_theme='nova'

colorscheme iceberg
let g:airline_theme='iceberg'

" let ayucolor="light"
" let ayucolor="mirage"
" let ayucolor="dark"
" colorscheme ayu

" airline
" let g:airline#extensions#tabline#enabled = 1

" deoplete
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('sources', {
\  '_': ['buffer', 'member', 'tag', 'file', 'omni']
\})

call deoplete#custom#var('omni', 'input_patterns', {
\  'scala': '[^. *\t]\.\w*'
\})

" fzf
nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fa :Ag<space>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fp :Files<space>
nnoremap <leader>fl :BLines<cr>
nnoremap <leader>fL :Lines<cr>

" fugitive 
nnoremap <leader>gs :Gstatus<cr>
