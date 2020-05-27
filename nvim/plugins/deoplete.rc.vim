" options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
call deoplete#custom#option({
    \'enable_refresh_always': v:false, 
    \'auto_complete_start_length': 1,
    \'auto_complete_delay': 0,
    \'enable_smart_case': v:true,
    \'max_list': 10000})