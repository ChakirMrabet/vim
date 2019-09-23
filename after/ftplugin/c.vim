" ############################################################ 
" C custom setup file
" ############################################################ 

" Generic

let b:colors_name="atom-dark"

" clang

let g:clang_format#style_options ={"ColumnLimit": 150}
nnoremap <C-I> :ClangFormat<CR>

" YouCompleteMe

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf=0
let g:UltiSnipsExpandTrigger="<c-j>"


