set number
set tabstop=2
set expandtab
set shiftwidth=2
set shiftround
set notimeout
set ignorecase
set smartcase

let mapleader=" "
let maplocalleader="\\"

" Move around
nnoremap <leader>j <c-f>
nnoremap <leader>k <c-b>

" Window
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wh <c-w>h
nnoremap <leader>wl <c-w>l
nnoremap <leader>w= <c-w>=
nnoremap <leader>w_ <c-w>_
nnoremap <leader>w\| <c-w>\|

" Wrap selected text with pair of characters
vnoremap <leader>w" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>w' <esc>`<i'<esc>`>a'<esc>
vnoremap <leader>w` <esc>`<i`<esc>`>a`<esc>
vnoremap <leader>w{ <esc>`<i{<esc>`>a}<esc>
vnoremap <leader>w} <esc>`<i{<esc>`>a}<esc>
vnoremap <leader>w( <esc>`<i(<esc>`>a)<esc>
vnoremap <leader>w) <esc>`<i(<esc>`>a)<esc>

" Finger health
nnoremap <m-r> <c-r>

inoremap <m-n> <c-n>
inoremap <m-p> <c-p>

" Manage Plugins
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'derekwyatt/vim-scala'

call plug#end()

" gruvbox
colorscheme gruvbox
set background=dark

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
