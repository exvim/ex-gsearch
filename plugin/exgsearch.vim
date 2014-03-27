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

" default key mappings {{{1
call exgsearch#register_hotkey( 1  , '<ESC>'           , ":EXGSearchClose<CR>"                         , 'Close window.' )
call exgsearch#register_hotkey( 2  , '<Space>'         , ":call exgsearch#toggle_zoom()<CR>"           , 'Zoom in/out project window.' )
call exgsearch#register_hotkey( 3  , '<CR>'            , ":call exgsearch#confirm_select('')<CR>"      , 'Go to the search result.' )
call exgsearch#register_hotkey( 4  , '<2-LeftMouse>'   , ":call exgsearch#confirm_select('')<CR>"      , 'Go to the search result.' )
call exgsearch#register_hotkey( 5  , '<S-CR>'          , ":call exgsearch#confirm_select('shift')<CR>" , 'Go to the search result in split window.' )
call exgsearch#register_hotkey( 6  , '<S-2-LeftMouse>' , ":call exgsearch#confirm_select('shift')<CR>" , 'Go to the search result in split window.' )
call exgsearch#register_hotkey( 7  , '<leader>r'       , ":exec 'Filter ' . @/<CR>"                    , 'Filter search result.' )
call exgsearch#register_hotkey( 8  , '<leader>fr'      , ":exec 'FilterFile ' . @/<CR>"                , 'Filter files in search result.' )
call exgsearch#register_hotkey( 9  , '<leader>d'       , ":exec 'ReverseFilter ' . @/<CR>"             , 'Reverse filter search result.' )
call exgsearch#register_hotkey( 10 , '<leader>fd'      , ":exec 'ReverseFilterFile ' . @/<CR>"         , 'Reverse filter files in search result.' )
"}}}

" vim:ts=4:sw=4:sts=4 et fdm=marker:
