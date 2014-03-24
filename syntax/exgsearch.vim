if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" syntax highlight

" DISABLE
" if g:ex_gsearch_highlight_result
"     " this will load the syntax highlight as cpp for search result
"     silent exec "so $VIM/vimfiles/after/syntax/exUtility.vim"
" endif

syntax region ex_gs_header start="^----------" end="----------"
syntax region ex_gs_filename start="^[^:]*" end=":" oneline
syntax match ex_gs_linenr '\d\+:'

hi link ex_gs_header SpecialKey
hi link ex_gs_filename Directory
hi link ex_gs_linenr Special

let b:current_syntax = "exgsearch"

" vim:ts=4:sw=4:sts=4 et fdm=marker:
