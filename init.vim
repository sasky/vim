
"---------------------------------------------------------
"------|| Annoying things that I want to sort out
"---------------------------------------------------------
"feels fucking slow and clunky
"coc is fucked 
"how write a command to open the vimrc??
"fzf naviage list
" nerd tree, open from position of active buffer

"get a list of symbols in a file COC?
"get PHP implementation working?

"---------------------------------------------------------
"------|| PLUGINS
"---------------------------------------------------------

"self installing Plug

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" play with these later
Plug 'rafi/awesome-vim-colorschemes'
Plug 'hzchirs/vim-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" not actually sure if I need these language packs now that I have language
" servers 
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
" see if I need this, little bit of work to set up
"Plug 'stephpy/vim-php-cs-fixer'
Plug 'mhinz/vim-startify'
Plug 'qpkorr/vim-bufkill'
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'machakann/vim-highlightedyank'
" Use this for Finding in Project 
"Plug 'jremmen/vim-ripgrep'
" Use this for finding and replacing in project 
" investigate later 
" https://www.mattlayman.com/blog/2019/supercharging-vim-blazing-fast-search/
"Plug 'quickfix-reflector.vim'
" Plugins to investigate 
" tpope surrrond
" tpope vim one
" tpope anythning else
" yank history one
" make terminal easier one 
" vim sub one that has realtime preview ( from vimcasts)
call plug#end()


"---------------------------------------------------------
"------|| GENERAL CONFIGURATION 
"---------------------------------------------------------

let mapleader="\<Space>"



set number
set relativenumber
" also need to figure out how to get some space between the ruler and the file
set ruler
" what does this do again? 
set ignorecase smartcase 


" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line , what is this? 
set laststatus=2

" Automatically detect file types. "
filetype plugin indent on   

" Allow buffer switching without saving 
set hidden                      

"------ SPLITS

" We can use different key mappings for easy navigation between splits to save a keystroke. 
" So instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" this is not working, so Ctrl W + o closes all splits and leaves the one in
" focus, need a better shortcut for this
"
nnoremap <Leader>a <C-W>o 
" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright
"vrc to open up the v.rc file
nnoremap vrc :open ~/.config/nvim/init.vim<Enter>

"---------------------------------------------------------
"------|| MAKE IT PRETTY
"---------------------------------------------------------

" Enable highlighting of the current line
set cursorline
" Hitting Leader Space ( so space space ) to hide the search results ( from
" using / or ? ), but it doesn't seem I need this? 
nnoremap <silent> <Leader><Space> :nohlsearch<CR>
" variations availible are 
let g:material_style='oceanic'
syntax on
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
set t_Co=256
colorscheme vim-material
let g:airline_theme='material'

"todo get rid of vbar
"line numbers a bit further away


"---------------------------------------------------------
"------ GENERAL UTILS
"---------------------------------------------------------

" ---- Spelling
" [s and ]s back and forward to misspelled word
" z=    change misspelled words
" zg    add word to spell file 
" zw    remove word from spell file
"nmap <Leader>s :call set spell<CR>
" English regions 
"en – all regions
"en_au – Australia
"en_ca – Canada
"en_gb – Great Britain
"en_nz – New Zealand
"en_us – USA
set spell spelllang=en_au
" Toggle spellchecking
function! ToggleSpellCheck()
  set spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
endfunction

" Leader S to toggle spelling on or off
nnoremap <silent> <Leader>S :call ToggleSpellCheck()<CR>
" todo spelling , why is the directory fucked? 

"---------------------------------------------------------
"------|| GETTING AROUND THE FILE 
"---------------------------------------------------------
 
" <C-o>     back jump
" <C-i>     forward jump (may not work because tab is remapped)"
"
" Marks are cool 
" mm to mark a place, `m to get back to it 

"---------------------------------------------------------
"------|| EDITING IN THE FILE 
"---------------------------------------------------------

" Compound commands
" C     c$  change to the end of the line
" s     cl
" S     ^C  deletes the current line and enters insert mode
" I     ^i
" A     $a
" o     A<cr> inset on next line
" O     ko insert on prev line
"
" Act,                      Repeat,      Reserve 
"
" f{char}/t{char}           ;            .
" /pattern                  n            N
" :s/target/replace         &            u
" 
" @:         repeat EX command
" *          search for the word under the cursor (second fav command)

"NORMAL MODE
"
" Counts, you and increase and decrease a number by hovering over it and ..
" <C-a>     increase number on or first match form cursor
" <C-x>     decrease number on or first match form cursor 
" these can also have a number before them, like this 15<C-a> 
"

"---------------------------------------------------------
"------|| CUT COPY PASTE FIND REPLACE
"---------------------------------------------------------

" Registers 
" "*            yanks to system clip board
"for example "*yy is copy line to clipboard
""*p pastes it form clipboard

"type :reg to see what is stored in each registor, it is a history, to access
"type "{char}p


"---------------------------------------------------------
"------|| GETTING AROUND THE PROJECT 
"---------------------------------------------------------


"Fzf Settings
"
"
"<C-V> : Open the selected file in a vertical split
"<C-c> : dismiss fzf picker
nnoremap <C-p> :<C-u>FZF<CR>
command! LS Buffers 

" to Search the project use 
" :Rg ( which uses ripgrep)
" :Rg searchTerm directory/structure
" :Rg serchTerm -g '*.php'
" : -g stands for glob and filters the results, lets study this more
" :https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md
"  cclose to close the quickfix buffer
" Might need to make a shortcut for cclose
"
" Wrap in try/catch to avoid errors on initial install before plugin is available
"
" "Nerd Tree Settings
"
" m in NERDTree on a file or directory to bring up menu
map <Leader>b :NERDTreeToggle<CR>
map <Leader>B :NERDTreeFind <CR>

let NERDTReeShowHidden = 1

"---------------------------------------------------------
"------ INTEL SENSE
"---------------------------------------------------------
"
" === Coc.nvim === "
" :CocInstall coc-tsserver coc-json coc-html coc-css coc-phpls




"---------------------------------------------------------
"------|| TERMINAL
"---------------------------------------------------------

"---------------------------------------------------------
"------|| LANGUAGE - PHP
"---------------------------------------------------------


"---------------------------------------------------------
"------|| LANGUAGE - JS 
"---------------------------------------------------------


"---------------------------------------------------------
"------ GETTING AROUND THE FILE 
"---------------------------------------------------------
