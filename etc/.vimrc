set nocompatible

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

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline, vim-airline-themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set number
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
noremap <Leader>t :NERDTree<CR>
