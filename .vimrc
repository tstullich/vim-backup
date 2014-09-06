" To set up Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'plasticboy/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

set background=dark

" General configurations for vim
autocmd FileType make setlocal noexpandtab
set expandtab
set tabstop=4
set shiftwidth=4
set number
set showmatch
set matchtime=4
set encoding=utf8
syntax on

" Tabs for make utility
autocmd FileType make setlocal noexpandtab

" Always show statusline
set laststatus=2

" Use 256 colours 
set t_Co=256

" Used for switching between buffers quickly
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>

" Config for Pathogen
execute pathogen#infect()

" More Powerline configuration stuff
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '

" Options for Plasticboy Markdown plugin
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1

" Options for Syntastic
let g:syntastic_cpp_compiler= 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
filetype plugin indent on

" Config for vim-json
au! BufRead,BufNewFile *.json set filetype=json
let g:Powerline_mode_n = 'NORMAL'

" Vala Configurations
" Enable comment strings
let vala_comment_strings = 1
let g:syntastic_vala_modules = ['gtk+-3.0']
autocmd FileType vala setlocal shiftwidth=4 tabstop=4
