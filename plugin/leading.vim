" Author: Kazark

if exists('g:leading_loaded_plugin')
    finish
endif
let g:leading_loaded_plugin = 1

call leading#not_controlling_list(['d', 'e', 'g', 'l', 't', 'u', 'v', 'y', ']'])
" There are far more window commands than this but I have not yet learned to
" use them
call leading#not_controlling_suffixed_list('w', ['h', 'j', 'k', 'l', 'H', 'J', 'K', 'L', 'T', '='])
call leading#not_controlling_prefixed('g', 'g')
