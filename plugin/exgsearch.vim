" default configuration {{{1
if !exists('g:ex_gsearch_winsize')
    let g:ex_gsearch_winsize = 20
endif

if !exists('g:ex_gsearch_winsize_zoom')
    let g:ex_gsearch_winsize_zoom = 40
endif

" bottom or top
if !exists('g:ex_gsearch_winpos')
    let g:ex_gsearch_winpos = 'bottom'
endif

if !exists('g:ex_gsearch_ignore_case')
    let g:ex_gsearch_ignore_case = 0
endif

if !exists('g:ex_gsearch_enable_sort')
    let g:ex_gsearch_enable_sort = 1
endif

" will not sort the result if result lines more than x 
if !exists('g:ex_gsearch_sort_lines_threshold')
    let g:ex_gsearch_sort_lines_threshold = 100
endif

"}}}

" commands {{{1
command! -n=1 GSearch call exgsearch#search('<args>', '-s')
command! EXGSearchCWord call exgsearch#search(expand('<cword>'), '-s')

command! EXGSearchToggle call exgsearch#toggle_window()
command! EXGSearchOpen call exgsearch#open_window()
command! EXGSearchClose call exgsearch#close_window()
"}}}

" vim:ts=4:sw=4:sts=4 et fdm=marker:
