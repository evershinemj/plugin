"autocmd FileType java,py,c,cpp      set dict+=~/mydict/coding-common
au BufRead,BufNewFile *pom.xml      set thesaurus=~/mydict/maven

au BufReadPre ~/profile.d/*         set backup | echo 'set backup'
au BufWritePost ~/profile.d/*       set nobackup | echo 'set nobackup'
