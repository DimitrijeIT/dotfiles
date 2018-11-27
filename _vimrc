"----------Vundle----------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

"----------Plugins--------------------------
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'dkarter/bullets.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'valloric/youcompleteme'
"----------Plugins End----------------------
" :PluginInstall
call vundle#end()
filetype plugin indent on

"----------Arrow-Key-------------------------------------------------------------
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

"inoremap <BS> <Nop>

"----------Double-Quots-----------------
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
"imap <leader>( ()<ESC>i
"imap <leader>[ []<ESC>i
"imap <leader>{ {}<ESC>i

imap ( ()<ESC>i
imap [ []<ESC>i
imap { {}<ESC>i<CR><ESC>O
"imap ' ''<ESC>i
"imap " ""<ESC>i

"----------New-Line---------------------
map gO O<ESC>j
nmap g<C-o> o<ESC>k

"----------Center-Jump------------------
"nmap G Gzz
"nmap { {zz
"nmap } }zz
"namp n nzz
"nmap N Nzz	

"----------S-Magic----------------------
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds} F{xf}x
noremap cs} F{xf}xi

noremap ds" F"x,x
noremap cs" F"x,xli
noremap ds' F'x,x
noremap cs' F'x,xi

noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi

"----------Window-Movement--------------
nmap <C-a> <C-w>h
nmap <C-d> <C-w>l

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l


"----------Tab-Movement-----------------
nmap <C-z> gT
nmap <C-c> gt

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
" let g:lasttab = 1
" nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
" au TabLeave * let g:lasttab = tabpagenr()

"----------Movement-in-insert-mode------
imap <C-l> <ESC>la
imap <C-h> <ESC>ha

"----------Color-----------------------------------------------------------------
colorscheme elflord
set guifont=Consolas:h12

"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"----------Set-------------------------------------------------------------------
set nu
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
set relativenumber 
set number 
set showmode
set wildmenu
set expandtab
set nowrap
set hlsearch

syntax on 
syntax enable
runtime ftplugin/man.vim

"Make backspace work 
set bs=2
"Add extra margin on the left side 
set foldcolumn=1
"Tab 
set expandtab
set smarttab 
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines 
set linebreak
set scrolloff =5
"set cursorline 

"Map Space to / for search 
"map <space> /
"Map ctrl-space to ? for backwards search 
"map <c-space> ?

"Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

"Spell check
map <leader>ss :set spell spelllang=en<cr>

"Easier moving of code blocks (doesn't loss selection)
vnoremap < <gv 
vnoremap > >gv 

"No backup files
set nobackup
set nowritebackup
set noswapfile 
"---------NERDTree---------------------------------------------------------------

map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"---------CtrlP------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'

"-------Bullets.vim--------------------------------------------------------------
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
"-------Vim
"Wiki--------------------------------------------------------------

set nocompatible
filetype plugin on
"syntax on
"--------------------------------------------------------------------------------
:cd C:\Users\Dimitrije\Desktop\

" Delete trailing white space on save, useful for some filetypes ;)
" fun! CleanExtraSpaces()
"    let save_cursor = getpos(".")
"    let old_query = getreg('/')
"    silent! %s/\s\+$//e
"    call setpos('.', save_cursor)
"    call setreg('/', old_query)
" endfun

" if has("autocmd")
"    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
" endif

