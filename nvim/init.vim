:set number
:set tabstop=2
:set expandtab
:set shiftwidth=2
:set shiftround
:set notimeout

:let mapleader=" "
:let maplocalleader="\\"

" For moving around
:nnoremap <leader>j <c-f>
:nnoremap <leader>k <c-b>

" For window
:nnoremap <leader>wj <c-w>j
:nnoremap <leader>wk <c-w>k
:nnoremap <leader>wh <c-w>h
:nnoremap <leader>wl <c-w>l

" For wrapping selected text with pair of characters
:vnoremap <leader>w" <esc>`<i"<esc>`>a"<esc>
:vnoremap <leader>w' <esc>`<i'<esc>`>a'<esc>
:vnoremap <leader>w` <esc>`<i`<esc>`>a`<esc>
:vnoremap <leader>w{ <esc>`<i{<esc>`>a}<esc>
:vnoremap <leader>w} <esc>`<i{<esc>`>a}<esc>
:vnoremap <leader>w( <esc>`<i(<esc>`>a)<esc>
:vnoremap <leader>w) <esc>`<i(<esc>`>a)<esc>

" Continue with Operator-Pending Mappings next time...

" Plugins:
" tpope/vim-commentary
