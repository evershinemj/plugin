" command! FirstToLast    :s/\v([^,]*)\,([^,]*)/\2,\1
" command! -range FirstToLast    :s/\v([^,]*)\,([^,]*)/\2,\1
command! -range FirstToLast    :'<,'>s/\v([^,]*)\,([^,]*)/\2,\1
