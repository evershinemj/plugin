" vim: set list :
" [text]{white}vim: ... note that there must be
" whitespace between optional text and 'vim:'
command CurrFile        echo expand('%')

command! FunctionList   tab help function-list

command! Sample         tabe /Users/wangxueming/vimlearning.d/vim-sample-text.txt

command! Snippets       tabe /Users/wangxueming/vimlearning.d/vimscript-snippets.vim

command! MySnippets     tabe /Users/wangxueming/vimlearning.d/mysnippets.vim

command! VimProfile     tabe /Users/wangxueming/profile.d/vim.rc

command! RuntimePath    echo &runtimepath

command! Initialization tabe initialization

command! ToggleList     set list!

command! CompleteFunc   echo &completefunc

command! MyPlugin       tabe $MYPLUGIN

command! MyOpt          tabe $MYOPT

command! MyStart        tabe $MYSTART

command! ToggleSpell    set spell!

command! LineComplete   tabe ~/linecomplete/

command! Tags           echo &tags

command! -bar JavaTags       setlocal tags=~/Documents/javasrc/tags

command! -bar SpringTags     setlocal tags+=~/Documents/spring-framework-master/tags  " change set to setlocal

command! -bar JUnitTags      setlocal tags+=~/junit4/src/tags  " change set to setlocal

command! AllTags        JavaTags | SpringTags | JUnitTags

command! MySpell        tabe $MYSPELL

command! MySpell        tabe $MYSPELL

command! SpringSource   exe "tab view " . expand('$SPRING_SOURCE') " :tab doesn't work in :exe

command! SpringSource   tabe $SPRING_SOURCE

command! SpringRelease  exe "tab view " . expand('$SPRING_RELEASE')

command! SpringRelease  tabe $SPRING_RELEASE

command! SpringReference    exe "tab view " . expand('$SPRING_RELEASE') . "/docs/spring-framework-reference"

command! SpringReference    tabe $SPRING_RELEASE/docs/spring-framework-reference

command! SpringCore     !Safari /Users/wangxueming/Documents/spring-framework-5.0.8.RELEASE/docs/spring-framework-reference/core.html

command! JUnitSource    exe "tab view " . expand('$JUNIT_SOURCE')

command! JUnitSource    tabe $JUNIT_SOURCE

command! TabSplit       tab split

command! JShell         !jshell

command! GitCommitAll   !git commit -a

command! GitStatus      !git status

command! -nargs=1 GitAdd    !git add <args>

command! GitCommit      !git commit

command! GitLog         !git log
