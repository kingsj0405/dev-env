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
" Markdown and Mathjax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MathAndLiquid()
    "" Define certain regions
    " Block math. Look for "$$[anything]$$"
    syn region math start=/\$\$/ end=/\$\$/
    " inline math. Look for "$[not $][anything]$"
    syn match math_block '\$[^$].\{-}\$'

    " Liquid single line. Look for "{%[anything]%}"
    syn match liquid '{%.*%}'
    " Liquid multiline. Look for "{%[anything]%}[anything]{%[anything]%}"
    syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
    " Fenced code blocks, used in GitHub Flavored Markdown (GFM)
    syn region highlight_block start='```' end='```'

    "" Actually highlight those regions.
    hi link math Statement
    hi link liquid Statement
    hi link highlight_block Function
    hi link math_block Statement
endfunction

" Call everytime we open a Markdown file
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown call MathAndLiquid()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set number
set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=a

colorscheme wombat

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :Autoformat<CR>
noremap <Leader>t :NERDTree<CR>
autocmd filetype python nnoremap <F5> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r') ' && rm '.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r') ' && rm '.shellescape('%:r')<CR>

