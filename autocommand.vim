"autocmd FileType java,py,c,cpp      set dict+=~/mydict/coding-common
au BufRead,BufNewFile *pom.xml      set thesaurus=~/mydict/maven

au BufRead ~/mydict/java*   set filetype=java
au BufRead ~/linecomplete/java*   set filetype=java

au BufReadPre ~/profile.d/*         set backup | echo 'set backup'
au BufWritePost ~/profile.d/*       set nobackup | echo 'set nobackup'

" autocmd BufRead *.txt	    set spell | execute 'echo "set spell in " .' . '"/Users/wangxueming/.vim/plugin/autocommand.vim"'
" autocmd BufRead,BufAdd,BufNewFile *.txt	    set spell | execute 'echo "set spell in " .' . '"/Users/wangxueming/.vim/plugin/autocommand.vim"'
"
" autocmd BufRead,BufAdd,BufNewFile *.txt	 if &filetype == 'help' | setlocal nospell | else | setlocal spell | endif | execute 'echo "set spell in " .' . '"/Users/wangxueming/.vim/plugin/autocommand.vim"'

autocmd BufWritePost *	    set nospell

au BufRead,BufWritePost ~/linecomplete/*,~/mydict/*  :sort | echo 'BufRead/BufWritePost: linecomplete/dict file sorted'

" au BufRead,BufWritePost ~/linecomplete/*,~/mydict/*  exe '%!uniq' . '|' . 'echo "filtered the whole file with system uniq"' 
"
au BufRead      ~/.vimrc,~/.bashrc,~/.bash_profile,~/.zshrc,~/profile.d/vim.rc,~/.vim/plugin/command.vim,~/java/Makefile    setlocal backup
au BufWritePre  ~/.vimrc,~/.bashrc,~/.bash_profile,~/.zshrc,~/profile.d/vim.rc,~/.vim/plugin/command.vim,~/java/Makefile    setlocal backupdir=~/backups | let &backupext = '-' . strftime('%Y%b%d-%X~')
au BufWritePost ~/.vimrc,~/.bashrc,~/.bash_profile,~/.zshrc,~/profile.d/vim.rc,~/.vim/plugin/command.vim,~/java/Makefile    setlocal backupdir& | echo 'backupdir {' . 'BufWritePre: ~/backups ; BufWritePost: ' . &backupdir . '}'

au BufRead ~/vocabulary.txt     set backup
