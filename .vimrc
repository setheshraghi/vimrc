set nocompatible

" vundle plugins {{{
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    call vundle#end()
    filetype plugin on
" }}}

" plugin settings {{{
    let g:airline_powerline_fonts=1
" }}}

" basic {{{
    set number
    set visualbell
    set showmatch
    set colorcolumn=80
    set autochdir
    set textwidth=80
    set cursorline
    syntax on
" }}}

" indentation {{{
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set autoindent
    set smartindent
" }}}

" colors {{{
    set termguicolors
    set bg=dark
    colorscheme gruvbox
    let g:airline_theme='base16_gruvbox_dark_hard'
" }}}

" templates {{{
    augroup templates
        autocmd BufNewFile *[hH][wW]*.tex 0r ~/.vim/templates/hw_skeleton.tex
        autocmd BufNewFile *[hH][wW]*.Rmd 0r ~/.vim/templates/hw_skeleton.Rmd
        autocmd BufNewFile *cw*.Rmd 0r ~/.vim/templates/cw_skeleton.Rmd
        autocmd BufNewFile *.c 0r ~/.vim/templates/hw_skeleton.c
    augroup END
" }}}

" folding {{{
    set foldmethod=indent
    set foldnestmax=10
    set nofoldenable
    set foldlevel=1
" }}}

" remapping {{{
    let mapleader=" "
    nnoremap <leader>v :wincmd v<bar> :Ex<CR>
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>l :wincmd l<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>H :wincmd H<CR>
    nnoremap <leader>L :wincmd L<CR>
    nnoremap <leader>K :wincmd K<CR>
    nnoremap <leader>J :wincmd J<CR>
" }}}

" searching {{{
    set hlsearch
    nnoremap <leader> :nohlsearch<CR>
" }}}

" other {{{
    set autoread
    set wildmenu
    set filetype=on
    set lazyredraw
    set showtabline=2
    nnoremap <leader>c :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar> nohlsearch<CR>
" }}}

" vimrc specific {{{
    set modelines=2
    " vim:foldenable:foldmethod=marker:foldlevel=0
" }}}
