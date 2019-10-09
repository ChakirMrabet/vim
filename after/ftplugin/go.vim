" ############################################################ 
" Go custom setup file
" ############################################################ 

" Generic
let b:colors_name="atom-dark"

" Format Go files 
autocmd FileType go nnoremap <silent> <C-i> :GoFmt<CR>

" Builds the current project
autocmd FileType go nnoremap <silent> <leader>b :GoBuild<CR> 

" Runs the current project
autocmd FileType go nnoremap <silent> <leader>r :GoRun<CR> 
