" autocmd FileType java   
            " \ let filestr = glob(expand('~') . '/android/inoremap*') |
            " \ let filelist = split(filestr, '\n') |
            " \ for file in filelist |
            " source receives text as argument, not expression!
            " file is a string expression
            " \   source file |
            
" autocmd FileType java   let s:filestr = glob(expand('~') . '/android/inoremap*') |  let s:filelist = split(s:filestr, '\n') |  for file in s:filelist |    s:trimmed_fname = file[1, -2]    source s:trimmed_fname |  endfor

" :source can only accept one file as argument
"
" WITH TEXT ARGUMENTS, ALL ARGUMENTS ARE OF TYPE STRING
" WITH EXPRESSION ARGUMENTS, AUGUMENTS CAN BE OF DIFFERENT TYPES 
"
" autocmd FileType java
"             \ source ~/android/inoremap*
