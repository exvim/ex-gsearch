" variables {{{1
let s:title = "-GSearch-" 
let s:zoom_in = 0
" }}}

" functions {{{1

" exgsearch#open_window {{{2

function! s:init_buffer()
    set filetype=exgsearch
endfunction

function exgsearch#open_window()
    let winnr = bufwinnr(s:title)
    if winnr == -1
        call ex#window#open( 
                    \ s:title, 
                    \ g:ex_gsearch_winsize,
                    \ g:ex_gsearch_winpos,
                    \ 1,
                    \ 1,
                    \ function('s:init_buffer')
                    \ )
    else
        exe winnr . 'wincmd w'
    endif
endfunction

" exgsearch#toggle_window {{{2
function exgsearch#toggle_window()
    let result = exgsearch#close_window()
    if result == 0
        call exgsearch#open_window()
    endif
endfunction

" exgsearch#close_window {{{2
function exgsearch#close_window()
    let winnr = bufwinnr(s:title)
    if winnr != -1
        call ex#window#close(winnr)
        return 1
    endif
    return 0
endfunction

" exgsearch#toggle_zoom {{{2
function exgsearch#toggle_zoom()
    let winnr = bufwinnr(s:title)
    if winnr != -1
        if s:zoom_in == 0
            let s:zoom_in = 1
            call ex#window#resize( winnr, g:ex_gsearch_winpos, g:ex_gsearch_winsize_zoom )
        else
            let s:zoom_in = 0
            call ex#window#resize( winnr, g:ex_gsearch_winpos, g:ex_gsearch_winsize )
        endif
    endif
endfunction

" exgsearch#confirm_select {{{2
" modifier: '' or 'shift'
function exgsearch#confirm_select(modifier)
    " check if the line is valid file line
    let curline = getline('.') 
    " if match(curline, '\C\[.*\]') == -1
    "     call ex#warning('Please select a folder/file')
    "     return
    " endif
endfunction

" exgsearch#search {{{2
function exgsearch#search( pattern )
endfunction

" }}}1

" vim:ts=4:sw=4:sts=4 et fdm=marker:
