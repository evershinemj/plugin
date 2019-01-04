" preferred global variable name:
" loaded_<filename>
if exists('g:loaded_mapping')
    finish
endif
let g:loaded_mapping = 1

"i"<Esc>
"1,11normal .
nnoremap <unique> <silent> <f2>     Godate: <esc>:read !date<CR>
nnoremap <unique> <silent> <f3>     :tabedit ~/.vimrc<CR>
nnoremap <unique> <silent> <f4>     :tabedit ~/.vim/plugin/<CR>
nnoremap <unique> <silent> <f5>     :tabedit ~/.vim/ftplugin/<CR>
"nnoremap <unique> <silent> <f6>     
nnoremap <unique> <silent> <f7>     <C-w><C-w>
nnoremap <unique> <silent> <f8>     :TlistToggle<CR>
nnoremap <unique> <silent> <f9>     <C-w>=
nnoremap <unique> <silent> <f10>    :!ctags -R<CR> 
"nnoremap <unique> <silent> <f11> 
"nnoremap <unique> <silent> <f12> 


                       " \\\///
                      " / _  _ \
                    " (| (.)(.) |)
" .-----------------.OOOo--()--oOOO.----------------.
" |                                                 |
" | "useful commands for navigating between buffers |
" |                                                 |
" '----------------.oooO----------------------------'
                  " (   )   Oooo.
                   " \ (    (   )
                    " \_)    ) /
                       "    (_/

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"mapping in operating pending mode
omap <F7> a{

" /********************************************/
" /* "IMPORTANT mapping                       */
" /* "map <C-L> to right arrow in insert mode */
" /* "map <C-B> to left arrow in insert mode  */
" /********************************************/
inoremap <silent>     <Right>
inoremap <silent>     <Left>
"cnoremap <silent>     <Right>
"cnoremap <silent>     <Left>

" capitalize the first letter of a sentence
" ATTENTION!  use ) to move forward to and ( backward to the beginning of a sentence
nnoremap ,C qc~)q


"mapping in insert and ex mode
"note how vim waits for inputting when incs is being typed
map! incs incsearch


cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
cnoremap <expr> // getcmdtype() == '/' ? '\c' : '//'
cnoremap <expr> /c getcmdtype() == '/' ? '\c' : '/c'
cnoremap <expr> /v getcmdtype() == '/' ? '\v' : '/v'



"""""""""""""""""""""""""""""""
"to generate the following pattern, first type
"noremap <leader>a, then record the following
"macro:
"
"qqyyp$<c-a>q
"
"then type 24@q to generate the whole sequence
"""""""""""""""""""""""""""""""

"noremap <unique> <Leader>a
noremap <unique> <Leader>b	:tabedit ~/.bash_profile<CR>
"noremap <unique> <Leader>c
"noremap <unique> <Leader>d
"noremap <unique> <Leader>e
"noremap <unique> <Leader>f
noremap <unique> <Leader>g      Bi${GREEN}<Esc>Ea${NC}<Esc>
"noremap <unique> <Leader>h
"noremap <unique> <Leader>i
"noremap <unique> <Leader>j
"noremap <unique> <Leader>k
"noremap <unique> <Leader>l
"noremap <unique> <Leader>m	a/Applications/.app/Contents/MacOS<Esc>F.i
noremap <unique> <Leader>n	:nohlsearch<CR>
"noremap <unique> <Leader>o
"noremap <unique> <Leader>p
"noremap <unique> <Leader>q
noremap <unique> <Leader>r     Bi${RED}<Esc>Ea${NC}<Esc>
noremap <unique> <Leader>s	:tabedit /usr/local/src/<CR>
"noremap <unique> <Leader>t
"noremap <unique> <Leader>u
"noremap <unique> <Leader>v
"noremap <unique> <Leader>w
"noremap <unique> <Leader>x
"noremap <unique> <Leader>y
noremap <unique> <Leader>z	:tabedit ~/.zshrc<CR>

noremap <silent> <unique> ,cn		:cnext<CR>
noremap <silent> <unique> ,cp		:cprevious<CR>
noremap <silent> <unique> ,cf		:cfirst<CR>
noremap <silent> <unique> ,cl		:clast<CR>
noremap <silent> <unique> ,co		:copen<CR>
noremap <silent> <unique> ,cc		:cclose<CR>

