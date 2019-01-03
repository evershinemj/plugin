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

command! MyPlugin       tab edit $MYPLUGIN

command! MyOpt          tab edit $MYOPT

command! MyStart        tab edit $MYSTART

command! ToggleSpell    set spell!

command! LineComplete   tab edit ~/linecomplete/

command! Tags           echo &tags

command! -bar JavaTags       setlocal tags=~/Documents/javasrc/tags

command! -bar SpringTags     setlocal tags+=~/Documents/spring-framework-master/tags  " change set to setlocal

command! -bar JUnitTags      setlocal tags+=~/junit4/src/tags  " change set to setlocal

command! AllTags        JavaTags | SpringTags | JUnitTags

command! MySpell        tab edit $MYSPELL

command! SpringSource   exe "tab view " . expand('$SPRING_SOURCE')

command! SpringRelease  exe "tab view " . expand('$SPRING_RELEASE')

command! SpringReference    exe "tab view " . expand('$SPRING_RELEASE') . "/docs/spring-framework-reference"

command! SpringCore     !Safari /Users/wangxueming/Documents/spring-framework-5.0.8.RELEASE/docs/spring-framework-reference/core.html

command! JUnitSource    exe "tab view " . expand('$JUNIT_SOURCE')
