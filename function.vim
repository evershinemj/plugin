fun! Green()
    let column = col('.') " get the column number of the current cursor
    if column != 1 " add a conditional
        let before = column - 1 " get the column number before the current cursor
        let currline = getline('.')
        let before_char = currline[before -1] " get the char before the current cursor
    else 
        " simply use a bool to handle a special case
        let no_move = 1
    let cmdpart = 'i${GREEN}<Esc>E${NC}<Esc>'
    " added || no_move
    if before_char =~ '\s' || no_move
        execute 'normal ' . cmdpart
    else 
        execute 'normal ' . 'B' . cmdpart
    endif
endfun
