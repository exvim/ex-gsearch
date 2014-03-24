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

nmap <buffer> <CR> <Plug>EXGSConfirmSelect
nmap <buffer> <2-LeftMouse> <Plug>EXGSConfirmSelect

nmap <buffer> <S-Return> <Plug>EXGSShiftConfirmSelect
nmap <buffer> <S-2-LeftMouse> <Plug>EXGSShiftConfirmSelect

" nnoremap <silent> <buffer> <leader>r :EXProjectRefresh<CR>
" }}}1

" auto command {{{1
" }}}1

" vim:ts=4:sw=4:sts=4 et fdm=marker:
