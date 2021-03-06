set nocompatible

" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" number line show
set nu

set noswapfile
"in order to switch between buffers with unsaved change
set hidden

" hightlight column and line
set cursorline
"set cursorcolumn
filetype plugin indent on
syntax on

" support css word with -
autocmd FileType css,scss,slim,html,eruby,coffee,javascript setlocal iskeyword+=-
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" vim 7.4 backspace fix
set backspace=indent,eol,start
set t_Co=256
autocmd BufWritePre * :%s/\s\+$//e

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'

if has("gui_running")
  colorscheme desert
  set bs=2
  set ruler
  set gfn=Monaco:h16
  set shell=/bin/bash
endif

let mapleader= ","
" EasyMotion_leader_key .
" Plugin Plugin here for Ruby on Rails
" git
Plugin 'tpope/vim-fugitive'

" ruby command for rvm
Plugin 'tpope/vim-rvm'

" quickly move cursor, try ,,w
Plugin 'Lokaltog/vim-easymotion'

" quickly write HTML, just like zencoding but simple engough
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

"let g:sparkupNextMapping= "<c-m>"
Plugin 'mattn/emmet-vim'

let g:user_emmet_install_global = 0
let g:user_emmet_mode='iv'
autocmd FileType html,css,eruby EmmetInstall

" power vim plugin for rails
Plugin 'tpope/vim-rails.git'

" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete

" quickly comment your code, try ,cc on selected line
Plugin 'vim-scripts/The-NERD-Commenter'

" indent guides
let g:indent_guides_guide_size = 1
Plugin 'nathanaelkane/vim-indent-guides'

" indent guides shortcut
map <silent><F7>  <leader>ig

" markdown support
let g:indent_guides_guide_size = 1
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" file tree like something called IDE
Plugin 'scrooloose/nerdtree'
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-z> :NERDTreeCWD<CR>

" basic dependence
Plugin 'L9'

" slim template support
Plugin 'slim-template/vim-slim.git'

" hack filetype for slim
autocmd BufNewFile,BufRead *.slim set filetype=slim
autocmd BufNewFile,BufRead *.es6 set filetype=javascript

" quickly search file(s), use ctrl+p, F5 refresh
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn)|(optimized|compiled|node_modules|bower_compenents)$'
map <c-o> :CtrlPBuffer<CR>

" sass highlight
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'isRuslan/vim-es6'

" Powerline
Plugin 'Lokaltog/vim-powerline'

" Syntastic
Plugin 'vim-syntastic/syntastic'

call vundle#end()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
"set wildignore=*.o,*~,*.pyc
"if has("win16") || has("win32")
"    set wildignore+=.git\*,.hg\*,.svn\*
"else
"    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
"endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Key Maps
" Use Ctrl + s to save file
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Monokai theme
colorscheme monokai
