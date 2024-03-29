" preferred global variable name:
" loaded_<filename>
if exists('g:loaded_mapping')
    finish
endif
let g:loaded_mapping = 1


map     s

"  __________________________
" /\                         \
" \_| inoremap for <S-{foo}> |
"   |                        |
"   |   _____________________|_
"    \_/_______________________/
"
" 
" 	 
"     
" 

"  ________________
" /\               \
" \_| " map <expr> |
"   |              |
"   |   ___________|_
"    \_/_____________/
let counter = 0

inoremap <expr> <C-L> ListItem()
" inoremap <expr> <C-R> ListReset()
inoremap <expr> <C-Z> ListReset()

func ListItem()
    let g:counter += 1
    return g:counter . '. '
endfunc

func ListReset()
    let g:counter = 0
    return ''
endfunc

" note that mapping  to <S-Left> will cause <CR> to move back a word, as 
" is equal to <CR>
cnoremap      <Left>

cnoremap      <Right>

" BUG FIXED
" cnoremap      <S-Left>
" (<CR>) shouldn't be mapped
cnoremap      <S-Left>

cnoremap      <S-Right>

" cnoremap      <Esc>

" i"<Esc>
" 1,11normal .
" nnoremap <unique> <silent> <f2>     Godate: <esc>:read !date<CR>
nnoremap <unique> <silent> <f2>     :tabedit ~/.vim/pack/wangxueming/opt/<CR>
nnoremap <unique> <silent> <f3>     :tabedit ~/.vimrc<CR>
nnoremap <unique> <silent> <f4>     :tabedit ~/.vim/plugin/<CR>
nnoremap <unique> <silent> <f5>     :tabedit ~/.vim/ftplugin/<CR>
" nnoremap <unique> <silent> <f6>     
nnoremap <unique> <silent> <f7>     <C-w><C-w>
nnoremap <unique> <silent> <f8>     :TlistToggle<CR>
nnoremap <unique> <silent> <f9>     <C-w>=
nnoremap <unique> <silent> <f10>    :!ctags -R<CR> 
" nnoremap <unique> <silent> <f11> 
" nnoremap <unique> <silent> <f12> 


                       " \\\///
                      " / _  _ \
                    " (| (.)(.) |)
" .-----------------.OOOo--()--oOOO.----------------.
" |                                                 |
" | " useful commands for navigating between buffers |
" |                                                 |
" '----------------.oooO----------------------------'
                  " (   )   Oooo.
                   " \ (    (   )
                    " \_)    ) /
                       "    (_/

" Note: bnext and :bprevious wrap around
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" mapping in operating pending mode
omap <F7> a{

" /********************************************/
" /* " IMPORTANT mapping                       */
" /* " map <C-F> to right arrow in insert mode */
" /* " map <C-B> to left arrow in insert mode  */
" /********************************************/
" inoremap <silent>     <Right>
inoremap <silent>     <Right>
inoremap <silent>     <Left>
inoremap              <Esc>
" cnoremap <silent>     <Right>
" cnoremap <silent>     <Left>

" capitalize the first letter of a sentence
" ATTENTION!  use ) to move forward to and ( backward to the beginning of a sentence
nnoremap ,C qc~)q


" mapping in insert and ex mode
" note how vim waits for inputting when incs is being typed
map! incs incsearch


cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'
cnoremap <expr> // getcmdtype() == '/' ? '\c' : '//'
cnoremap <expr> /c getcmdtype() == '/' ? '\c' : '/c'
cnoremap <expr> /v getcmdtype() == '/' ? '\v' : '/v'



" """"""""""""""""""""""""""""""
" to generate the following pattern, first type
" noremap <leader>a, then record the following
" macro:
"
" qqyyp$<c-a>q
"
" then type 24@q to generate the whole sequence
" """"""""""""""""""""""""""""""

" when sourcing a session file, <unique> gives a lot of warnings
" noremap <unique> <Leader>a
noremap <unique> <Leader>b	:tabedit ~/.bash_profile<CR>
noremap <unique> <Leader>c      Bi${CYAN}<Esc>Ea${NC}<Esc>
" noremap <unique> <Leader>d
" noremap <unique> <Leader>e
" noremap <unique> <Leader>f
noremap <unique> <Leader>g      Bi${GREEN}<Esc>Ea${NC}<Esc>
" noremap <unique> <Leader>h
" noremap <unique> <Leader>i
" noremap <unique> <Leader>j
" noremap <unique> <Leader>k
" noremap <unique> <Leader>l
" noremap <unique> <Leader>m	a/Applications/.app/Contents/MacOS<Esc>F.i
noremap <unique> <Leader>n	:nohlsearch<CR>
" noremap <unique> <Leader>o
noremap <unique> <Leader>p      :pwd<CR>

" noremap <Leader>p      :pwd<CR>  
" no <unique> overwrites previous <Leader>p without raising error
" using <unique> raising an error when a key sequence has already
" been mapped (in .vimrc, say)

" noremap <unique> <Leader>q
noremap <unique> <Leader>r     Bi${RED}<Esc>Ea${NC}<Esc>
noremap <unique> <Leader>s	:tabedit /usr/local/src/<CR>
" noremap <unique> <Leader>t
" noremap <unique> <Leader>u
" noremap <unique> <Leader>v
" noremap <unique> <Leader>w
" noremap <unique> <Leader>x
" noremap <unique> <Leader>y
noremap <unique> <Leader>z	:tabedit ~/.zshrc<CR>

"                            \\\///
"                           / _  _ \
"                         (| (.)(.) |)
" .---------------------.OOOo--()--oOOO.--------------------.
" |                                                         |
" | " useful mappings for quick navigation in Quickfix List |
" |                                                         |
" '--------------------.oooO--------------------------------'
"                       (   )   Oooo.
"                        \ (    (   )
"                         \_)    ) /
"                               (_/

" ####################################################
" # " useful after invoking :grep, :vimgrep or :make #
" ####################################################
noremap <silent> <unique> ,cn		:cnext<CR>
noremap <silent> <unique> ,cp		:cprevious<CR>
noremap <silent> <unique> ,cf		:cfirst<CR>
noremap <silent> <unique> ,cl		:clast<CR>
noremap <silent> <unique> ,co		:copen<CR>
noremap <silent> <unique> ,cc		:cclose<CR>

"                            \\\///
"                           / _  _ \
"                         (| (.)(.) |)
" .---------------------.OOOo--()--oOOO.--------------------.
" |                                                         |
" | " useful mappings for quick navigation in Location List |
" |                                                         |
" '--------------------.oooO--------------------------------'
"                       (   )   Oooo.
"                        \ (    (   )
"                         \_)    ) /
"                               (_/

" ########################################################
" # " useful after invoking :lgrep, :lvimgrep, or :lmake #
" ########################################################
noremap <silent> <unique> ,ln		:lnext<CR>
noremap <silent> <unique> ,lp		:lprevious<CR>
noremap <silent> <unique> ,lf		:lfirst<CR>
noremap <silent> <unique> ,ll		:llast<CR>
noremap <silent> <unique> ,lo		:lopen<CR>
noremap <silent> <unique> ,lc		:lclose<CR>

