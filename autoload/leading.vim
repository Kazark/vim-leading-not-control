" Author: Kazark

if exists('g:leading_loaded')
    finish
endif
let g:leading_loaded = 1

let g:leading_key = '<Space>'

function leading#not_controlling_character(character)
    execute "nmap " . g:leading_key . a:character "<C-" . a:character . ">"
endfunction

function leading#not_controlling_list(list)
    for character in a:list
        call leading#not_controlling_character(character)
    endfor
endfunction
