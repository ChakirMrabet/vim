" ############################################################ 
" JavaScript custom setup file
" ############################################################ 

setlocal formatprg=prettier\ --stdin

" Prettier shortcuts
autocmd FileType javascript nnoremap <silent> <C-i> :Prettier<CR>


