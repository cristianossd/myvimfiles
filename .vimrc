call plug#begin('~/.vim/plugged')

" https://github.com/kien/ctrlp.vim
Plug 'kien/ctrlp.vim'
" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'
" https://github.com/vim-syntastic/syntastic
" FIXME callback to configure syntastic
Plug 'vim-syntastic/syntastic'
" https://github.com/vim-airline/vim-airline
" FIXME callback to configure airline
Plug 'vim-airline/vim-airline'
" https://github.com/ntpeters/vim-better-whitespace
Plug 'ntpeters/vim-better-whitespace'
" https://github.com/maksimr/vim-jsbeautify
Plug 'maksimr/vim-jsbeautify'
" https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" https://github.com/prettier/vim-prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" https://github.com/leafgarland/typescript-vim
Plug 'leafgarland/typescript-vim'

call plug#end()

"" Setting colors for terminal
set t_Co=256

set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap
set expandtab " expand tabs to spaces
set smarttab
set hidden

set autoread " reload files when changed on disk, i.e. via `git checkout`
set backspace=2 " fix broken backspace in some setups
set backupcopy=yes " see :help crontab
set clipboard=unnamed " yank and paste with the system clipboard
set directory-=. " don't store swapfiles in the current directory
set encoding=utf-8

" search sets
set ignorecase " case-insensitive search
set incsearch " search as you type
set smartcase " case-sensitive search if any caps

set laststatus=2 " always show statusline
set listchars=trail:▫
set number " show line numbers
set ruler " show where you are
set wildignore=log/**,node_modules/**,bower_components/**,target/**,tmp/**,*.rbc,*.pyc
set wildmode=longest,list,full

" enable basic mouse behavior such as resizing buffers.
set mouse=a

" store a ton of history (default is 20)
set history=1000

"" highlight current line
set cursorline

"" show matching brackets/parenthesis
set showmatch
set noswapfile

"" use system clipboard
set clipboard=unnamedplus

" keyboard shortcuts
inoremap jk <esc>
let mapleader = ','
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <D-[> <c-w>h
map <D-]> <c-w>l
map <silent> <leader>v :source ~/.vimrc<cr>:filetype detect<cr>:exe ":echo 'vimrc reloaded'"<cr>

" clear search highlight
map <C-L> :noh<CR>

filetype plugin on
filetype plugin indent on

autocmd FileType python setlocal tabstop=2
autocmd FileType php setlocal tabstop=4
autocmd FileType go setlocal tabstop=4

au BufNewFile,BufRead *.ctp set filetype=html

" Emmet settings
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='a'

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](log|bower_components|tmp|node_modules|target|dist|lib|build)|(\.(swp|ico|git|svn))$'

" Indent
set autoindent
set cindent

" Font and color scheme
set guifont=Monospace\ 9

" uses colorscheme
syntax on
colorscheme monochrome

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"" Tab triggers buffer-name auto-completion
set wildchar=<Tab> wildmenu wildmode=full

let mapleader = ","

map <Leader>t :CommandT<Return>
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b

" enable syntastic (linting)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'

" fast scrolling in mac
set ttyfast

" Typescript
let g:syntastic_typescript_checkers = ['']
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

set mmp=2000
