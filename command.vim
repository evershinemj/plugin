" vim: set list :
" [text]{white}vim: ... note that there must be
" whitespace between optional text and 'vim:'
command CurrFile        echo expand('%')

command! FunctionList   tab help function-list

command! Sample         tab edit /Users/wangxueming/vimlearning.d/vim-sample-text.txt

command! Snippets       tab edit /Users/wangxueming/vimlearning.d/vimscript-snippets.vim

command! MySnippets     tab edit /Users/wangxueming/vimlearning.d/mysnippets.vim

command! VimProfile     tab edit /Users/wangxueming/profile.d/vim.rc

command! RuntimePath    echo &runtimepath

command! Initialization tab help initialization

command! ToggleList     set list!

command! CompleteFunc   echo &completefunc
