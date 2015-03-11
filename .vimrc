"" Pathogen config
execute pathogen#infect()

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
set list " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number " show line numbers
set ruler " show where you are
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.pyc
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
nmap <silent> <S-D-CR> :ZoomWin<CR>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>C :ClearAllCtrlPCaches<cr>
nmap <leader><space> :call whitespace#strip_trailing()<cr>
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
map <C-c>b :buffer<Space>
map bd :bd<CR>
map <C-c>/ <Leader>c<space>
imap <TAB> <Plug>snipMateNextOrTrigger
smap <TAB> <Plug>snipMateNextOrTrigger

noremap 1 :e! #1<CR>
noremap 2 :e! #2<CR>
noremap 3 :e! #3<CR>
noremap 4 :e! #4<CR>
noremap 5 :e! #5<CR>
noremap 6 :e! #6<CR>
noremap 7 :e! #7<CR>
noremap 8 :e! #8<CR>
noremap 9 :e! #9<CR>
noremap 0 :e! #10<CR>

filetype plugin on

" Emmet settings
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='a'

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Indent
set autoindent
set cindent

" Font and color scheme
set guifont=Monospace\ 9

" uses vividchalk colorscheme
syntax enable
colorscheme vividchalk

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
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jslint', 'gjslint']

" enable close HTML tags
au Filetype jinja,xhtml,html,xml,xsl so ~/.vim/bundle/HTML-AutoCloseTag/ftplugin/html_autoclosetag.vim
