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
call exgsearch#bind_mappings()
" }}}1

" auto command {{{1
command! -buffer -nargs=1 Filter call exgsearch#filter('<args>', 'pattern', 0)
command! -buffer -nargs=1 FilterFile call exgsearch#filter('<args>', 'file', 0)
command! -buffer -nargs=1 ReverseFilter call exgsearch#filter('<args>', 'pattern', 1)
command! -buffer -nargs=1 ReverseFilterFile call exgsearch#filter('<args>', 'file', 1)
" }}}1

" vim:ts=4:sw=4:sts=4 et fdm=marker:
