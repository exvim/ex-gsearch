" default configuration {{{1
if !exists('g:ex_gsearch_winsize')
    let g:ex_gsearch_winsize = 20
endif

if !exists('g:ex_gsearch_winsize_zoom')
    let g:ex_gsearch_winsize_zoom = 40
endif

" left or right
if !exists('g:ex_gsearch_winpos')
    let g:ex_gsearch_winpos = 'bottom'
endif

"}}}

" commands {{{1
command! -n=1 GSearch call exgsearch#open('<args>')
command! EXGSearchToggle call exgsearch#toggle_window()
command! EXGSearchOpen call exgsearch#open_window()
command! EXGSearchClose call exgsearch#close_window()
"}}}

" mappings {{{1
nnoremap <silent> <Plug>EXGSConfirmSelect :call exgsearch#confirm_select('')<CR>
nnoremap <silent> <Plug>EXGSShiftConfirmSelect :call exgsearch#confirm_select('shift')<CR>
"}}}

" vim:ts=4:sw=4:sts=4 et fdm=marker:
