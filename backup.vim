" extracted from ~/.vim/plugin/autocommand.vim for the purpose of decoupling.
" this makes it easier to debug as to why, how and where backups are created.
" as backup files sometimes contaminate the working tree, it's important to
" know where to disable some autocommands which create backup files.
au BufReadPre ~/profile.d/*         set backup | echo 'set backup'
au BufWritePost ~/profile.d/*       set nobackup | echo 'set nobackup'

au BufRead      ~/.vimrc,~/.bashrc,~/.bash_profile,~/.zshrc,~/profile.d/vim.rc,~/.vim/plugin/command.vim,~/java/Makefile    setlocal backup
au BufWritePre  ~/.vimrc,~/.bashrc,~/.bash_profile,~/.zshrc,~/profile.d/vim.rc,~/.vim/plugin/command.vim,~/java/Makefile    setlocal backupdir=~/backups | let &backupext = '-' . strftime('%Y%b%d-%X~')
au BufWritePost ~/.vimrc,~/.bashrc,~/.bash_profile,~/.zshrc,~/profile.d/vim.rc,~/.vim/plugin/command.vim,~/java/Makefile    setlocal backupdir& | echo 'backupdir {' . 'BufWritePre: ~/backups ; BufWritePost: ' . &backupdir . '}'

au BufRead ~/vocabulary.txt     set backup

