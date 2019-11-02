" Folder where the plugins will be downloaded
call plug#begin('~/.vim/plugged')

" ############################################################ 
" Common Plugins 
" ############################################################ 

" Theme
Plug 'rakr/vim-one'

" Universal syntax highlighter for many languages
Plug 'sheerun/vim-polyglot'

" JSON language support for vim-polyglot
Plug 'elzr/vim-json'

" Universal code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git control
Plug 'tpope/vim-fugitive'

" Shows Git diff status on the sign column (left)
Plug 'airblade/vim-gitgutter'

" Better status line
Plug 'vim-airline/vim-airline'

" Integrate TMUX navigation with VIM
Plug 'christoomey/vim-tmux-navigator'

" Integrate Ranger with VIM
Plug 'francoiscabrol/ranger.vim'

" NERDTree
Plug 'scrooloose/nerdtree'

" Fuzzy Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Delimitier surrounding
Plug 'tpope/vim-surround'

" ############################################################ 
" C Language Plugins
" ############################################################ 

" C/C++ support for vim-polyglot
Plug 'vim-jp/vim-cpp', {'for': ['c','cpp']}

" YouCompleteMe
" Plug 'Valloric/YouCompleteMe', { 'for' : ['c', 'cpp']}

" Code prettier for C/C++ 
Plug 'rhysd/vim-clang-format', { 'for' : ['c', 'cpp']}

" ############################################################ 
" Javascript/JSX/React Plugins
" ############################################################ 

" JavaScript support for vim-polyglot
Plug 'pangloss/vim-javascript', {'for': 'javascript'}

" Prettier formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' , 'for': 'javascript'}

" ############################################################ 
" Go Plugins
" ############################################################ 

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go' }

" ############################################################ 
" HTML/CSS Language Plugins
" ############################################################ 

Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'smarty']}
Plug 'skammer/vim-css-color', {'for':'css'}

" End of list
call plug#end()
