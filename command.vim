" vim: set list tw=0 noic :
" [text]{white}vim: ... note that there must be
" whitespace between optional text and 'vim:'
command! CurrFile        echo expand('%')

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

command! SafariSpringCore     !Safari /Users/wangxueming/Documents/spring-framework-5.0.8.RELEASE/docs/spring-framework-reference/core.html

command! JUnitSource    exe "tab view " . expand('$JUNIT_SOURCE')

command! JUnitSource    tabe $JUNIT_SOURCE

command! TabSplit       tab split

command! JShell         !jshell

command! GitCommitAll   !git commit -a

command! GitStatus      !git status
" added '-complete=file'
command! -nargs=1 -complete=file GitAdd    !git add <args>

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
" command! -nargs=1 -complete=file_in_path    SplitFileInPath :split <args>
command! -nargs=1 -complete=file_in_path   SplitFileInPath  exe "cd " . expand(&path) | split <args>

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
command! -nargs=1 -complete=file JDKDocument !Safari  /Users/wangxueming/Documents/JDKdocs/api/<args>

command! Vimtips    :write | !vimtips

command! -nargs=1 -complete=help LeftAboveHelp  :leftabove :help <args>

command! -nargs=1 -complete=help RightBelowHelp :rightbelow :help <args>
" command! -nargs=1 JavaSrc   :cd $JAVASRC/<args> | edit .
command! -nargs=1 JavaSrc   :cd $JAVASRC/<args> | view .

command! -nargs=+ JavaProj      !javaproj <args>

command! -nargs=+ MvnProj       !mvnproj <args>

command! -nargs=+ GradleProj    !gradleproj <args>

command! GitPull    !git pull

command! MvnRepository  !Safari https://mvnrepository.com

command! Bashtips   !source ~/profile.d/bash.rc

command! Zshtips    !source ~/profile.d/zsh.rc
" command! -nargs=0 CurlJarInteractive    !curljar
command! -nargs=1 CurlJar    !curl -H "Accept: application/zip" -O <args>
" command! WgetJar    :cd ~/jars | !wgetjar
command! WgetJar    :cd ~/jars | set shellcmdflag=-ic | !wgetjar

command! -nargs=1 MksessionUnderHomeSession  :cd ~/session/ | mksession! <args>

command! VimgrepCurrentWordInCurrentFile    :vimgrep <cword> %

command! -nargs=+ -complete=file VimgrepCurrentWord        :vimgrep <cword> <args>

command! RightExplore   :Hexplore

command! LeftExplore    :Hexplore!

command! WgetPom    set shellcmdflag=-ic | !wgetpom

command! WgetJavadoc    set shellcmdflag=-ic | !wgetjavadoc

command! EnumerationDemoTest    :cd ~/java/enumeration-demo/ | !mvn test

command! EnumerationDemoSingleClassTest :cd ~/java/enumeration-demo/ | !mvn -Dtest=EnumerationDemoTest test
" need to escape #
command! EnumerationDemoSingleMethodTest    :cd ~/java/enumeration-demo/ | !mvn -Dtest=EnumerationDemoTest\#testEnumerationDemo test
" need to escape #
command! EnumerationDemoAnotherSingleMethodTest     :cd ~/java/enumeration-demo/ | !mvn -Dtest=EnumerationDemoTest\#anotherTest test

command! MySyntax   :tabe   $MYSYNTAX

command! VimRuntime :tabe   $VIMRUNTIME

command! Uniq   :write | %!uniq

command! -nargs=1 -complete=function DebugCall  :debug call <args>
" here func must be abbreviated
command! -nargs=+ -complete=function BreakAddFunc  :breakadd func <args>

command! -nargs=+ -complete=file_in_path BreakAddFile  :breakadd file <args>
" like :breakadd file <current-cursor-line> <current-file>
command! -nargs=0 BreakAddHere  :breakadd here

command! -nargs=0 BreakDelAll   :breakdel *

command! EchoWordUnderCursor    :echo expand('<cword>')

command! DebugCallCompleteJavaFirstCall  :DebugCall CompleteJava(1, '')

command! DebugCallCompleteJavaSecondCall    :DebugCall CompleteJava(0, '  pu')

command! EditBugLog     :edit buglog.log

command! DistOpt    :tabe /usr/share/vim/vim80/pack/dist/opt/
" Safari views url as a file, while open views it as a webpage
command! OpenVimOrgAndSearchScripts !open -a Safari https://www.vim.org/scripts/script_search_results.php

command! OpenGithub !open -a Safari https://github.com

command! OpenStackoverflow  !open -a Safari https://stackoverflow.com

command! OpenCentralMaven   !open -a Safari https://central.maven.org

command! OpenMvnrepository  !open -a Safari https://mvnrepository.com

command! OpenSpring         !open -a Safari https://spring.io

command! OpenW3schools      !open -a Safari https://www.w3schools.com

command! OpenPythonOrg      !open -a Safari https://www.python.org

command! OpenGNU            !open -a Safari https://www.gnu.org

command! OpenSourceforge    !open -a Safari https://sourceforge.net

command! OpenMaven          !open -a Safari http://maven.apache.org

command! OpenWikipedia      !open -a Safari https://www.wikipedia.org

command! OpenAsciitable     !open -a Safari http://www.asciitable.com

command! ViewAsciitable     !open ~/c/ascii-table-characters.pdf

command! ViewAsciitableWithHTMLEntities !open ~/c/ascii_table.pdf

command! LatteTest  :cd ~/java | !java org.junit.runner.JUnitCore wxm.coffee.LatteTest

command! -nargs=1 -complete=file JUnitCore  :cd ~/java | !java org.junit.runner.JUnitCore <args>

command! Chinese    :language zh_CN

command! Strftime   :echo strftime("%Y %B %d")

command! Weekday    :echo strftime("%A")

command! WeekdayShort   :echo strftime("%a")

command! Month      :echo strftime("%B")

command! MonthShort :echo strftime("%b")

command! DateTime   :echo strftime("%Y %b %d")

command! Date       :echo strftime("%x")

command! Time       :echo strftime("%X")

command! NationalDateTime   :echo strftime("%c")

command! MonthDayYear       :echo strftime("%D")

command! DayOfMonth         :echo strftime("%d")

command! Day                :echo strftime("%e")

command! HyphenDate         :echo strftime("%F")

command! YearShort          :echo strftime("%g")

command! Hour               :echo strftime("%H")

command! Minute             :echo strftime("%M")

command! HourByTwelve       :echo strftime("%I")

command! DayOfYear          :echo strftime("%j")

command! NumericMonth       :echo strftime("%m")

command! AnteOrPostMeridiem :echo strftime("%p")

command! HourMinute         :echo strftime("%R")

command! TimeLong           :echo strftime("%r")

command! Second             :echo strftime("%S")

command! WeekOfYear         :echo strftime("%U")

command! NumericWeekday     :echo strftime("%u")

command! HyphenDateReversed :echo strftime("%v")

command! WeekOfYear         :echo strftime("%W")

command! NumericWeekday     :echo strftime("%w")

command! YearShort          :echo strftime("%y")

command! TimeZone           :echo strftime("%Z")

command! TimeZoneOffset     :echo strftime("%z")

command! ChineseNationalDateTime    :language zh_CN | :echo strftime("%c")

command! JavaDict           :sp ~/mydict/java

command! VJavaDict          :vsp ~/mydict/java
" :tab :Explore does not open a new tab because :Explore does not open a new window  " :'<,'>s/:tab.*$/:tabe ./
command! HeadFirstDesignPatterns    :cd ~/Documents/Head-First-Design-Patterns-master/src/headfirst/designpatterns/ | :tabe .

command! HeadFirstJava      :cd ~/Documents/Head-First-Java-master/ | :tabe .

command! HeadFirstAndroid   :cd ~/Documents/HeadFirstAndroid2ndEdition/ | :tabe .

command! SpringInAction     :cd ~/Documents/SpringiA4_SourceCode/ | :tabe .

command! SpringMVC          :cd ~/Documents/springmvc-2ed-master/ | :tabe .

command! CoreJava           :cd ~/Documents/corejava/ | :tabe .

command! JavaTutorial       :cd ~/Documents/tutorial/ | :tabe .

command! JavaCookBookMain   :cd ~/javasrc/src/main/java/ | :tabe .

command! JavaCookBookTest   :cd ~/javasrc/src/test/java/ | :tabe .

command! EffectiveJava      :cd ~/Documents/effective-java-examples-master/src/main/java/org/effectivejava/examples/ | :tabe .

command! ThinkingInJava     :cd ~/Documents/TIJ4-code-master/examples/ | :tabe .

command! PythonSrc          :cd /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/ | :tabe .

command! PythonSitePackages :cd /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/ | :tabe .

command! SpringCoreMain     :cd ~/Documents/spring-framework-master/spring-core/src/main/java/org/springframework/ | :pwd | :tabe .

command! SpringCoreTest     :cd ~/Documents/spring-framework-master/spring-core/src/test/java/org/springframework/ | :pwd | :tabe .

command! SpringAopMain      :cd ~/Documents/spring-framework-master/spring-aop/src/main/java/org/springframework/aop/ | :pwd | :tabe .

command! SpringAopTest      :cd ~/Documents/spring-framework-master/spring-aop/src/test/java/ | :pwd | :tabe .

command! SpringContextMain  :cd ~/Documents/spring-framework-master/spring-context/src/main/java/org/springframework/ | :pwd | :tabe .

command! SpringContextTest  :cd ~/Documents/spring-framework-master/spring-context/src/test/java/ | :pwd | :tabe .

command! SpringBeansMain    :cd ~/Documents/spring-framework-master/spring-beans/src/main/java/org/springframework/beans/ | :pwd | :tabe .

command! SpringBeansTest    :cd ~/Documents/spring-framework-master/spring-beans/src/test/java/org/springframework/ | :pwd | :tabe .

command! SpringExpressionMain   :cd ~/Documents/spring-framework-master/spring-expression/src/main/java/org/springframework/expression/ | :pwd | :tabe .

command! SpringExpressionTest   :cd ~/Documents/spring-framework-master/spring-expression/src/test/java/org/springframework/expression/spel/ | :pwd | :tabe .

command! SpringJdbcMain         :cd ~/Documents/spring-framework-master/spring-jdbc/src/main/java/org/springframework/jdbc/ | :pwd | :tab .

command! SpringJdbcTest         :cd ~/Documents/spring-framework-master/spring-jdbc/src/test/java/org/springframework/jdbc/ | :pwd | :tabe .

command! SpringOrmMain          :cd ~/Documents/spring-framework-master/spring-orm/src/main/java/org/springframework/orm/ | :pwd | :tabe .

command! SpringOrmTest          :cd ~/Documents/spring-framework-master/spring-orm/src/test/java/org/springframework/orm/jpa/ | :pwd | :tabe .

command! SpringTestMain         :cd ~/Documents/spring-framework-master/spring-test/src/main/java/org/springframework/ | :pwd | :tabe .

command! SpringTestTest         :cd ~/Documents/spring-framework-master/spring-test/src/test/java/org/springframework/ | :pwd | :tabe .

command! SpringWebMain          :cd ~/Documents/spring-framework-master/spring-web/src/main/java/org/springframework/ | :pwd | :tabe .

command! SpringWebTest          :cd ~/Documents/spring-framework-master/spring-web/src/test/java/org/springframework/ | :pwd | :tabe .

command! SpringWebMvcMain       :cd ~/Documents/spring-framework-master/spring-webmvc/src/main/java/org/springframework/web/servlet/ | :pwd | :tabe .

command! SpringWebMvcTest       :cd ~/Documents/spring-framework-master/spring-webmvc/src/test/java/org/springframework/ | :pwd | :tabe .

command! HeadFirstC             :cd ~/Documents/HeadFirstC-master/ | :tabe .

command! HeadFirstJavascript    :cd ~/Documents/Head-First-JavaScript-Programming-master/ | :tabe .

command! HeadFirstPython        :cd ~/Documents/hfpy2e-all/ | :tabe .

command! JUnitInAction          :cd ~/junitbook2/ | :tabe .

command! AndroidStudioProjects  :cd ~/AndroidStudioProjects/ | :tabe .

command! EclipseProjects        :cd ~/eclipse-workspace/ | :tabe .

command! EclipseWebProjects     :cd ~/eclipseweb-workspace/ | :tabe .

command! NetBeansProjects       :cd ~/NetBeansProjects/ | :tabe .

command! AndroidSrc             :cd ~/Library/Android/sdk/sources/android-28/   | :tabe .

command! AndroidTags            :exe 'set tags+=' . expand('$ANDROID_SRC') . '/tags'

command! HelpOnType             :h type()

command! HelpOnVimTypeVariables :h v:t_TYPE

command! TutorialExceptions     :cd ~/Documents/tutorial/essential/exceptions/ | :tabe .

command! TutorialConcurrency    :cd ~/Documents/tutorial/essential/concurrency/ | :tabe .

command! TutorialIO             :cd ~/Documents/tutorial/essential/io/ | :tabe .

command! TutorialRegex          :cd ~/Documents/tutorial/essential/regex/ | :tabe .

command! TutorialCollections    :cd ~/Documents/tutorial/collections/ | :tabe .

command! TutorialGenerics       :cd ~/Documents/tutorial/java/generics/ | :tabe .

command! TutorialAnnotations    :cd ~/Documents/tutorial/java/annotations/ | :tabe .

command! DesignPatternsWithPictures :cd ~/github/tj_pattern/src/ | :tabe .

command! Glibc  :cd /usr/local/src/glibc-2.28/  | :tabe .
" command! ActivitySrc    :tabe **/app/src/main/java/**/*.java  might cause E77(too many file names), if more than one match is found
command! ArgAddActivitySrc    :argadd **/app/src/main/java/**/*.java

command! TabBall        :tab ball

command! PackaddAll     :packadd completeall

command! -nargs=1 -complete=file DebugSource    :debug :source <args>

command! -nargs=1 -complete=dir  DebugRuntime   :debug :runtime <args>

command! -nargs=1 -complete=environment     EchoEnvVar :echo <args>

command! -nargs=0 NoSpell   :set nospell

command! EnterNetrwDirectory    :cd %

command! DeleteCurrentBuffer    :bdelete %

command! DeleteAlternativeBuffer    :bdelete #

command! WindoSetScrollbind     :windo set scrollbind

command! MyDoc  cd $MYDOC | :tabe .

command! MyAutoload  cd $MYAUTOLOAD | :tabe .

command! JavaSrcZip tabe $JAVA_SRC_ZIP

command! CurrentDirectory   echo expand('%:p:h')

command! ListDirectory  echo system('ls')

command! ListJava    echo system('ls "$JAVASRC/java/")

command! ListJavax    echo system('ls "$JAVASRC/javax/")

command! BaddCodingCommon   :badd ~/mydict/coding-common

command! TomcatWebappsHome  :tabe $TOMCAT/webapps/home/
