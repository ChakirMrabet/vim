" ############################################################ 
" START UP SETTINGS 
" ############################################################ 

" Load plugins
so ~/.vim/plugins.vim

" Enable custom configurations for different languages
filetype plugin on      

" ############################################################ 
" BASIC SETTINGS 
" ############################################################ 

let mapleader=","       " Change leader key from / to ,

set nocompatible        
set hidden              " Do not close buffers when loading new ones
set nowrap              " Don't wrap lines
set tabstop=4           " A tab is 4 spaces
set autoindent          " Indentation is always on
set shiftwidth=4        " Use 4 spaces for indentation
set shiftround          " Use multiples of shiftwidth when using < or >
set smarttab            " Insert tabs based on shiftround for new lines
set expandtab           " Expand tabs by default
set copyindent          " Indentation is copied
set number              " Always show line numbers
set relativenumber      " Enable relative numbers            
set showmatch           " Show matching parenthesis
set hlsearch            " Highlight search items
set incsearch           " Show search matches as you type
set ignorecase          " Ignore case when searching
set smartcase           " Ignore case when seatching lowercase
set scrolloff=4         " Keep 4 lines on the edges when scrolling
set visualbell          " Don't beep
set noerrorbells        " Don't beep
set path+=**            " Enable fuzzy search
set history=500         " Keep 500 entries in the change history
set undolevels=500      " Use 500 levels of undo
set showcmd             " Show incomplete commands on the bar
set wildmenu            " Show menu when using tab completion
set nobackup            " Don't create backup file
set noswapfile          " Don't create a swap file

" ############################################################ 
" SPECIFIC SETTINGS
" ############################################################ 

" Netrw (built in file browser)

let g:netrw_banner=0    " Disable banner
let g:netrw_altv=1      " Splits to the right
let g:netrw_liststyle=3 " Tree view

" ############################################################ 
" KEY MAPPINGS
" ############################################################ 

" Quicker way to enter command mode
nnoremap ; :

" Edit and load .vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <C-Left> :tabprevious<CR>

" Window Navigation
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR> 
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <C-h> :wincmd h<CR> 

" Tab navigation
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>

" Hide search highlights on the text 
noremap <F3> :set hlsearch!<CR>

" Quicker way to format the whole buffer
nnoremap <C-i> gg=G

" Folding settings
set foldmethod=syntax   " Enables folding by syntax (based on the language)
set foldnestmax=1       " Limits folding to top level only
set foldlevel=10        " Open all folds in the begining 

" ############################################################ 
" VISUAL
" ############################################################ 

" Add true color support
" if (empty($TMUX))
if(exists('$TMUX'))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    " Override italic codes
    set t_ZH=[3m
    set t_ZR=[23m
elseif (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

set termguicolors

" Default color scheme
set background=dark
colorscheme one

" ############################################################ 
" SETTINGS FOR PLUGINS 
" ############################################################ 

" Atom Dark theme
let g:one_allow_italics=1
let g:lightline = { 
            \'colorscheme': 'onedark',
            \}

" vim-gitgutter
set updatetime=100

" Conquer of Completion
" Map Tab and S-Tab to navigate through completion list,
" use Enter to confirm completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" NERDTRee
map <C-m> :NERDTreeFind<CR>        
map <C-n> :NERDTreeToggle %<CR>

" ############################################################ 
" TEMPORAL 
" ############################################################ 

autocmd BufNewFile,BufRead *.jack set syntax=cpp


