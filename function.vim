fun! FunctionOne()
    echo "I'm FunctionOne"
    echo "Calling FunctionTwo now"
    call FunctionTwo()
endfun

fun! FunctionTwo()
    echo "I'm FunctionTwo"
    echo "Calling FunctionThree now"
    call FunctionThree()
endfun

fun! FunctionThree()
    echo "I'm FunctionThree"
    echo "Calling FunctionFour now"
    call FunctionFour()
endfun

fun! FunctionFour()
    echo "I'm FunctionFour"
    echo "End of function calling."
endfun


" :debug call Green()
"
"
" fun! Green()
"     let column = col('.') " get the column number of the current cursor
"     let before_char = ''
"     let l:no_move = 0
"     if column != 1 " add a conditional
"         let before = column - 1 " get the column number before the current cursor
"         let currline = getline('.')
"         " let before_char = currline[before - 1] " get the char before the current cursor
"         " let l:before_char = currline[before - 1] " get the char before the current cursor
"         let before_char = nr2char(strgetchar(currline, before - 1)) " get the char before the current cursor
"     else 
"         " simply use a bool to handle a special case
"         " let no_move = 1
"         let l:no_move = 1
"     endif
"     " let cmdpart = "i${GREEN}<Esc>E${NC}<Esc>"
"     let cmdpart = 'i${GREEN}E${NC}'
"     " added || no_move
"     if before_char =~ '\s' || l:no_move
"         execute 'normal ' . cmdpart
"     else 
"         execute 'normal ' . 'B' . cmdpart
"     endif
" endfun
