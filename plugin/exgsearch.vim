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
    let g:ex_gsearch_ignore_case = 1
endif

if !exists('g:ex_gsearch_enable_sort')
    let g:ex_gsearch_enable_sort = 1
endif

" will not sort the result if result lines more than x 
if !exists('g:ex_gsearch_sort_lines_threshold')
    let g:ex_gsearch_sort_lines_threshold = 100
endif

if !exists('g:ex_gsearch_enable_help')
    let g:ex_gsearch_enable_help = 1
endif

"}}}

" commands {{{1
command! -n=1 -complete=customlist,ex#compl_by_symbol GS call exgsearch#search('<args>', '-s')
command! -n=1 -complete=customlist,ex#compl_by_symbol GSW call exgsearch#search('<args>', '-w')
command! -n=1 -complete=customlist,ex#compl_by_symbol GSR call exgsearch#search('<args>', '-r')
command! EXGSearchCWord call exgsearch#search(expand('<cword>'), '-s')

command! EXGSearchToggle call exgsearch#toggle_window()
command! EXGSearchOpen call exgsearch#open_window()
command! EXGSearchClose call exgsearch#close_window()
"}}}

" default key mappings {{{1
call exgsearch#register_hotkey( 1  , 1, '<F1>'            , ":call exgsearch#toggle_help()<CR>"           , 'Toggle help.' )
if has('gui_running')
    call exgsearch#register_hotkey( 2  , 1, '<ESC>'           , ":EXGSearchClose<CR>"                         , 'Close window.' )
else
    call exgsearch#register_hotkey( 2  , 1, '<leader><ESC>'   , ":EXGSearchClose<CR>"                         , 'Close window.' )
endif
call exgsearch#register_hotkey( 3  , 1, '<Space>'         , ":call exgsearch#toggle_zoom()<CR>"           , 'Zoom in/out project window.' )
call exgsearch#register_hotkey( 4  , 1, '<CR>'            , ":call exgsearch#confirm_select('')<CR>"      , 'Go to the search result.' )
call exgsearch#register_hotkey( 5  , 1, '<2-LeftMouse>'   , ":call exgsearch#confirm_select('')<CR>"      , 'Go to the search result.' )
call exgsearch#register_hotkey( 6  , 1, '<S-CR>'          , ":call exgsearch#confirm_select('shift')<CR>" , 'Go to the search result in split window.' )
call exgsearch#register_hotkey( 7  , 1, '<S-2-LeftMouse>' , ":call exgsearch#confirm_select('shift')<CR>" , 'Go to the search result in split window.' )
call exgsearch#register_hotkey( 8  , 1, '<leader>r'       , ":exec 'Filter ' . @/<CR>"                    , 'Filter search result.' )
call exgsearch#register_hotkey( 9  , 1, '<leader>fr'      , ":exec 'FilterFile ' . @/<CR>"                , 'Filter files in search result.' )
call exgsearch#register_hotkey( 10 , 1, '<leader>d'       , ":exec 'ReverseFilter ' . @/<CR>"             , 'Reverse filter search result.' )
call exgsearch#register_hotkey( 11 , 1, '<leader>fd'      , ":exec 'ReverseFilterFile ' . @/<CR>"         , 'Reverse filter files in search result.' )
"}}}

call ex#register_plugin( 'exgsearch', { 'actions': ['autoclose'] } )

" vim:ts=4:sw=4:sts=4 et fdm=marker:
