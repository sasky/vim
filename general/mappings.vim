" Basic Key Mappings
" these should be taken care of by this plugin
"    Plug 'christoomey/vim-tmux-navigator'
" imap <C-h> <C-w>h
" imap <C-j> <C-w>j
" imap <C-k> <C-w>k
" imap <C-l> <C-w>l
"
" Better window navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
"
"resing the panes with the arrow keys
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>
nnoremap <Right> :vertical resize +2<CR>



" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" insert an empty line without leaving normal mode

" nnoremap <leader>o o<Esc>     
" nnoremap <leader>O O<Esc>

" Better indenting
vnoremap < <gv
vnoremap > >gv

inoremap jk <Esc>:w<CR>

" Center after next search
nnoremap n nzz
nnoremap N Nzz



" when pasting in visual mode. stop the paste from putting the new test 
" into the register
xnoremap p "_dP


" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down

" xnoremap K :move '<-2<CR>gv-gv
" xnoremap J :move '>+1<CR>gv-gv

" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


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
