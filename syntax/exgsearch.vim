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

syntax match ex_gs_help #^".*# contains=ex_gs_help_key
syntax match ex_gs_help_key '^" \S\+:'hs=s+2,he=e-1 contained contains=ex_gs_help_comma
syntax match ex_gs_help_comma ':' contained

syntax region ex_gs_header start="^----------" end="----------"
syntax region ex_gs_filename start="^[^"][^:]*" end=":" oneline
syntax match ex_gs_linenr '\d\+:'


hi default link ex_gs_help Comment
hi default link ex_gs_help_key Label
hi default link ex_gs_help_comma Special

hi default link ex_gs_header SpecialKey
hi default link ex_gs_filename Directory
hi default link ex_gs_linenr Special

let b:current_syntax = "exgsearch"

" vim:ts=4:sw=4:sts=4 et fdm=marker:
