" Author: Kazark

if exists('g:leading_loaded')
    finish
endif
let g:leading_loaded = 1

let g:leading_key = '<Space>'

function leading#not_controlling_character(character)
    execute "nmap " . g:leading_key . a:character . " <C-" . a:character . ">"
endfunction

function leading#not_controlling_suffixed(character, suffix)
    execute "nmap " . g:leading_key . a:character . a:suffix . " <C-" . a:character . ">" . a:suffix
endfunction

function leading#not_controlling_suffixed_list(character, list)
    for suffix in a:list
        call leading#not_controlling_suffixed(a:character, suffix)
    endfor
endfunction

function leading#not_controlling_list(list)
    for character in a:list
        call leading#not_controlling_character(character)
    endfor
endfunction

function leading#not_controlling_prefixed(prefix, character)
    execute "nmap " . a:prefix . g:leading_key . a:character . " " .a:prefix . "<C-" . a:character . ">"
endfunction

