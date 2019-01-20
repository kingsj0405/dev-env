set nocompatible
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle and Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Chiel92/vim-autoformat'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline, vim-airline-themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1	" Use this if you have problem with font
let g:airline_theme='simple'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set number
set hlsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set mouse=a

colorscheme wombat

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
noremap <Leader>t :NERDTree<CR>
autocmd filetype python nnoremap <F5> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

