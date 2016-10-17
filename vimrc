set nocompatible          	" required
filetype off              	" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
"Syntax highlighting
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
"Tree view
Plugin 'scrooloose/nerdtree'
"color scheme
Plugin 'jnurmine/Zenburn'
"git interface
Plugin 'tpope/vim-fugitive'
"Status line config
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/taglist.vim'

" All of your plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required

filetype plugin on

" See docstrings for folded code
let g:SimpylFold_docstring_preview=1

au BufRead,BufNewFile *.py,*.uts
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2

" Flag extraneous whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Folding for c doe
au BufRead,BufNewFile *.c,*.h,*.cpp,*.cc
	\ set foldmethod=syntax |
	\ normal zR

set encoding=utf-8

" YouCompleteMe customizations
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable syntax highlighting
let python_highlight_all=1
syntax on

" Setup colorscheme
"colorscheme zenburn

" taglist plugin shortcuts and settings
noremap <silent> <F8> :TlistToggle<CR>
noremap <silent> <F9> :TlistShowTag<CR

set nu
set clipboard=unnamed

set ignorecase
set smartcase

" Remember position in file when reopening
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Make backspace on OS X delete over line breaks and auto-indent
set backspace=indent,eol,start

