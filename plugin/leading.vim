" Author: Kazark

if exists('g:leading_loaded_plugin')
    finish
endif
let g:leading_loaded_plugin = 1

call leading#not_controlling_list(['d', 'e', 'g', 'l', 't', 'u', 'v', 'w', 'y', ']'])
call leading#not_controlling_prefixed('g', 'g')
