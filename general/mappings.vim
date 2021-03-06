" Basic Key Mappings

imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" I hate escape more than anything else
inoremap jk <Esc>:w<CR>
inoremap kj <Esc>

" Center after next search
nnoremap n nzz
nnoremap N Nzz
" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

"----terminal
"
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
" Use alt + hjkl to resize windows
" ˙ ∆ ˚ ¬ left down up right
nnoremap ˙ :vertical resize -2<CR>

" nnoremap ∆ :resize -2<CR>
" nnoremap ˚ :resize +2<CR>


nnoremap ¬ :vertical resize +2<CR>


" Hitting Leader Space ( so space space ) to hide the search results ( from
" using / or ? ), but it doesn't seem I need this? 
nnoremap <silent> <Leader><Space> :nohlsearch<CR>

" Better nav for omnicomplete
" TODO: Try this one later
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

" make Y behave more like C and D
nnoremap Y y$
"nnoremap D d$

 " Map : to ; in Normal mode
" nnoremap ; :
" xnoremap ; :
" xnoremap : ;

"complete lines
" todo, can't seem to get this to work,
" but can still complete lines as mentioned in init.vim
inoremap <C-Space> <C-X><C-L>


" Close a buffer with leader w
" Trying this buff kill so hopefully the window will stay open 'qpkorr/vim-bufkill'    
  
nnoremap <silent> <Leader>w :BD<CR>
" Close all other buffers with leader W
" TODO , come back to this
"nnoremap <silent> <Leader>W :%bd|e#|bd#<CR>
"open the current window in a new tab ( usefull when I have multiple windows
"open and want to make one full screen 
" option f for full screen, option F to close 
nnoremap ƒ :tab split<CR>
nnoremap Ï :tabc<CR>

"option s to format a php file with cs-fixer (TODO, nneds work) 
nnoremap ß :!php-cs-fixer fix % --quiet --allow-risky=yes<CR>
