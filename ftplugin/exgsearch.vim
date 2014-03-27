" local settings {{{1
silent! setlocal buftype=nofile
silent! setlocal bufhidden=hide
silent! setlocal noswapfile
silent! setlocal nobuflisted

silent! setlocal cursorline
silent! setlocal number
silent! setlocal nowrap
silent! setlocal statusline=
" }}}1

" Key Mappings {{{1
nnoremap <silent> <buffer> <ESC> :EXGSearchClose<CR>
nnoremap <silent> <buffer> <Space> :call exgsearch#toggle_zoom()<CR>

nnoremap <silent> <buffer> <Plug>ConfirmSelect :call exgsearch#confirm_select('')<CR>
nmap <silent> <buffer> <CR> <Plug>ConfirmSelect
nmap <silent> <buffer> <2-LeftMouse> <Plug>ConfirmSelect

nnoremap <silent> <buffer> <Plug>ShiftConfirmSelect :call exgsearch#confirm_select('shift')<CR>
nmap <silent> <buffer> <S-Return> <Plug>ShiftConfirmSelect
nmap <silent> <buffer> <S-2-LeftMouse> <Plug>ShiftConfirmSelect

command! -buffer -nargs=1 Filter call exgsearch#filter('<args>', 'pattern', 0)
command! -buffer -nargs=1 FilterFile call exgsearch#filter('<args>', 'file', 0)
command! -buffer -nargs=1 ReverseFilter call exgsearch#filter('<args>', 'pattern', 1)
command! -buffer -nargs=1 ReverseFilterFile call exgsearch#filter('<args>', 'file', 1)
nnoremap <silent> <buffer> <leader>r :exec 'Filter ' . @/<CR>
nnoremap <silent> <buffer> <leader>fr :exec 'FilterFile ' . @/<CR>
nnoremap <silent> <buffer> <leader>d :exec 'ReverseFilter ' . @/<CR>
nnoremap <silent> <buffer> <leader>fd :exec 'ReverseFilterFile ' . @/<CR>
" }}}1

" auto command {{{1
" }}}1

" vim:ts=4:sw=4:sts=4 et fdm=marker:
