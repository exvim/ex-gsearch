if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" syntax highlight

let b:current_syntax = "exgsearch"

" vim:ts=4:sw=4:sts=4 et fdm=marker:
