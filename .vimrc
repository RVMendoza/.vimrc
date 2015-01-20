set encoding=utf-8

set nocompatible
filetype off  

" VUNDLE CONFIG
"""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" PLUGINS
"""""""""""""""
Plugin 'hail2u/vim-css3-syntax'

Plugin 'kien/ctrlp.vim'
" ignore certain files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*/build/*,*/bower_components/*,*.keep,*.DS_Store,*/.git/,/build/*

"clear the cache before opening up
nnoremap <silent> <leader>p :ClearCtrlPCache<cr>\|:CtrlP<cr>

Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'Align'
Plugin 'scrooloose/syntastic'

"comment things out easicly. leader cm and leader cu
Plugin 'scrooloose/nerdcommenter'

Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_theme= 'solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

Plugin 'editorconfig/editorconfig-vim'

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=1         "this is just what i use

"Folding
function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen

"Enabling mouse
set mouse=a

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

"Make clipboard work the way it should
set clipboard+=unnamed

"Get rid of Ex mode"
nnoremap Q <nop>

"Auto-source the vimrc"
augroup reload_vimrc " {
    autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"So PluginInstall works
set shell=/bin/bash

"indents
filetype plugin indent on

"So you can paste like a normal person
set paste

syntax enable

" Tabs Rock.
set tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab
nnoremap <leader>T :set tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab<cr>

" But some people insist on using spaces. They're not smart.
nnoremap <leader>S :set tabstop=2 shiftwidth=2 softtabstop=2 expandtab<cr>

" Show hidden chars like textmate
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"Shortcut for editing  vimrc file in a new tab
nmap <leader>ev :e $MYVIMRC<cr>

" type ',s' to save the buffers etc. Reopen where you were with Vim with 'vim -S'
nnoremap <leader>s :mksession<CR>

" Assume g by default
set gdefault

"search as I type
set incsearch

"set backup directories
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

"Navigate Buffers w/ leader
noremap <leader>z :bprev!<CR>
noremap <leader>x :bnext!<CR>
noremap <leader>d :confirm bd<CR>
