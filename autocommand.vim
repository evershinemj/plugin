"autocmd FileType java,py,c,cpp      set dict+=~/mydict/coding-common
au BufRead,BufNewFile *pom.xml      set thesaurus=~/mydict/maven | packadd completeall

au BufRead ~/mydict/java*   set filetype=java
au BufRead ~/linecomplete/java*   set filetype=java

" autocmd BufRead *.txt	    set spell | execute 'echo "set spell in " .' . '"/Users/wangxueming/.vim/plugin/autocommand.vim"'
" autocmd BufRead,BufAdd,BufNewFile *.txt	    set spell | execute 'echo "set spell in " .' . '"/Users/wangxueming/.vim/plugin/autocommand.vim"'
"
" autocmd BufRead,BufAdd,BufNewFile *.txt	 if &filetype == 'help' | setlocal nospell | else | setlocal spell | endif | execute 'echo "set spell in " .' . '"/Users/wangxueming/.vim/plugin/autocommand.vim"'

autocmd BufWritePost *	    set nospell

au BufRead,BufWritePost ~/linecomplete/*,~/mydict/*  :sort | echo 'BufRead/BufWritePost: linecomplete/dict file sorted'

" au BufRead,BufWritePost ~/linecomplete/*,~/mydict/*  exe '%!uniq' . '|' . 'echo "filtered the whole file with system uniq"' 
"

