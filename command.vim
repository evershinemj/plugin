" vim: set list tw=0:
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

command! -nargs=1 TabHelp   tab help <args>

command! -nargs=1 SplitView setlocal readonly | split <args>  " remember to use setlocal instead of set here

command! -nargs=1 SplitView split <args> | setlocal readonly  " s/\v(set.*only) \| (sp.*args\>)/\2 | \1/c  " :

command! -nargs=1 TabView   tabe <args> | setlocal readonly

command! GitConfigLocalList     !git config --local --list  \# --local for ./.git/config  "changed " to \#
  "changed " to #
command! GitConfigGlabalList    !git config --global --list  \# --global for ~/.gitconfig   "changed " to \#

command! GitConfigLocalEdit     !git config --local  --edit

command! GitConfigGlobalEdit    !git config --global --edit

command! -nargs=+ GitCloneToHome         !cd ~; git clone <args> 

command! -nargs=+ GitCloneToTheGithubDirectory  !cd ~/github; git clone <args>

command! -nargs=1 CrontabSpecify    !crontab <args>

command! CrontabList    !crontab -l

command! CrontabEdit    !crontab -e

command! MavenCentral   !Safari 'https://central.maven.org/maven2/'
" tested :cd java/junit-tests.d | JUnitTest coffee.CoffeeTest on versions 4.6 and 4.10; both have a . before 'Lift'
command! -nargs=+ -complete=file -bar JUnitTest  !java -cp .:/opt/junit-4.10/junit-4.10.jar org.junit.runner.JUnitCore <args>

command! WipeOutEndMAndWrite    :%s/$// | write | echo 'End Ctrl-M chars wiped out'

command! -nargs=1 -complete=option HelpOnOption    :help <args> | setlocal nospell | echo 'reset spell with "setlocal nospell"'

command! -nargs=1 -complete=command HelpOnCommand   :help <args> | setlocal nospell | echo 'reset spell with "setlocal nospell"'

command! -nargs=1 -complete=event   HelpOnAutocommandEvent  :help <args> | setlocal nospell | echo 'reset spell with "setlocal nospell"'

command! -nargs=1 -complete=highlight   HelpOnHighlightGroup :help <args> | setlocal nospell | echo 'reset spell with "setlocal nospell"'

command! -nargs=1 -complete=buffer EditBuffer     :edit <args>

command! -nargs=1 -complete=dir NetrwDirectory      :tabe <args>

command! -nargs=1 -complete=file_in_path    SplitFileInPath :split <args>

command! -nargs=1 -complete=var EchoUserVariable    :echo <args>

command! CalculatorTest     :cd ~/java/junit-tests.d/calculator/ | JUnitTest CalculatorTest

command! -nargs=1 -complete=file ClassPathCompile  !javac -cp <args>

command! CommandHistory     :history :

command! SearchHistory      :history /

command! ExprHistory        :history =

command! DebugHistory       :history debug

command! AllHistroy         :history all
" don't use $MyAfter! Using expand is optional here
command! MyAfter    exe 'tabe ' . expand('$MYAFTER')

command! HelpOnExpressionCommands   :help expression-commands | setlocal nospell | echo 'reset spell with "setlocal nospell"'

command! FullPath   echo expand('%:p')

command! ParameterizedTest  cd ~/java/junit-tests.d/calculator/ | JUnitTest ParameterizedTest

command! CoffeeTest     :cd ~/java/junit-tests.d/ | JUnitTest coffee.CoffeeTest

command! -nargs=+ -complete=file JUnit      exe 'set shellcmdflag=-ic' | !junit <args>

command! -nargs=+ -complete=file JUnitJavac    exe 'set shellcmdflag=-ic' | !junitjavac  <args>
" command! -nargs=1 -complete=file JDKDocument    exe '!Safari ' . $JDKDOC . '/' . <args>  " use  to expand env variable to file path
command! -nargs=1 -complete=file JDKDocument    !Safari  /Users/wangxueming/Documents/JDKdocs/api/<args>
