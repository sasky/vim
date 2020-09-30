
"---------------------------------------------------------
"------|| Annoying things that I want to sort out
"---------------------------------------------------------
" Tpope Surround
" insept line erors
" fix line lines (spelling)
" search like on youtube
" phpcsfixer working
" no swap files? 
"
"Get the LSP spell checker working


" Have another look at the PHP static tools
" JS Pritier working
" ESLint working
"
" Terminal edit the line??
" Terminal start up faster?
"
"
"
" Homescreen links change the project path when you go to them
" White thing is to bright!
"
" line plugin, more room to show the filename
"
"https://intelephense.com/
"https://github.com/tpope/vim-sensible
"https://github.com/tpope/vim-eunuch
"https://github.com/tpope/vim-unimpaired


"maybe this one for symbols
"https://github.com/liuchengxu/vista.vim
"

"how write a command to open the vimrc??

"fzf navigate list




"get PHP implementation working?


"---------------------------------------------------------
"------|| Core Vim Tips
"---------------------------------------------------------
"
"Use range command to select text above or below
"For example :+8,+12t.
"copys lines 8 to 12 reletiave to current line, and pastes them on this line
":81,91t.<enter>
" or yank them like this
" :-81,-91y<enter>


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
Plug 'terryma/vim-smooth-scroll'
" not actually sure if I need these language packs now that I have language
" servers 
" what does this do?  
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" what does this do?  
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'

" see if I need this, little bit of work to set up
Plug 'stephpy/vim-php-cs-fixer'
Plug 'mhinz/vim-startify'
" what does this do?  
Plug 'qpkorr/vim-bufkill'
" what does this do?  
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
"adds project edit history to fzf 
Plug 'pbogut/fzf-mru.vim'
" Plugins to investigate 
" tpope surrrond
" tpope vim one
" tpope anythning else
" yank history one
" make terminal easier one 
" vim sub one that has realtime preview ( from vimcasts)

    
" Language server stuff
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-spell-checker', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'marlonfan/coc-phpls', {'do': 'yarn install --frozen-lockfile'}
" coc-css causes a vim scripts error, figure this out later
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
" also coc-lists
" but loading them this way seems brokenish
call plug#end()


"---------------------------------------------------------
"------|| GENERAL CONFIGURATION 
"---------------------------------------------------------

let mapleader="\<Space>"

" disable highlighting of parans ( it's confusing me in insert mode) 
"set NoMatchParen
let loaded_matchparen = 1

set number
set relativenumber
" also need to figure out how to get some space between the ruler and the file
set ruler

" Use case insensitive search, except when using capital letters
set ignorecase smartcase 

" Better command-line completion
set wildmenu
" show whitespace
" set list

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
        
" Always display the status line 
set laststatus=1

" Automatically detect file types. "
filetype plugin indent on   

" Allow buffer switching without saving 
set hidden                      

" --- backup and swap files ---
" I save all the time, those are annoying and unnecessary...
set nobackup
set nowritebackup
set noswapfile

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

"------ SPLITS

" We can use different key mappings for easy navigation between splits to save a keystroke. 
" So instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" full screen for active buffer 
nnoremap <C-G> <C-W>o 
"
" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright
"vrc to open up the v.rc file
nnoremap VRC :e ~/.config/nvim/init.vim<CR>
nnoremap SRC :source ~/.config/nvim/init.vim<CR>

"----terminal
"
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

" spartify plugin
" dont change the dir from the start menu
let g:startify_change_to_dir = 0
"---------------------------------------------------------
"------|| MAKE IT PRETTY
"---------------------------------------------------------

" Enable highlighting of the current line
set cursorline
" Hitting Leader Space ( so space space ) to hide the search results ( from
" using / or ? ), but it doesn't seem I need this? 
nnoremap <silent> <Leader><Space> :nohlsearch<CR>

set termguicolors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"set background=dark
"set t_Co=256

"let g:two_firewatch_italics=1
"colorscheme two-firewatch
"let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme

" Oceanic
set background=dark
colorscheme vim-material
let g:airline_theme='material'
"todo get rid of vbar
"line numbers a bit further away
"Makes the background transparent on Alacritty
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 


" make the sign column not have a colour ( most left hand error bar) 
highlight clear SignColumn

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
set nospell 
set spelllang=en_au
" Toggle spellchecking
function! ToggleSpellCheck()
  set spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction

" Leader S to toggle spelling on or off
nnoremap <silent> <Leader>z :call ToggleSpellCheck()<CR>
" todo spelling , why is the directory fucked? 

"---------------------------------------------------------
"------|| GETTING AROUND THE FILE 
"---------------------------------------------------------
 
" <C-o>     back jump
" <C-i>     forward jump (may not work because tab is remapped)"
"
" Marks are cool 
" mm to mark a place, `m to get back to it 

" Marcos are cool
" q{char} to start recording so qq
" then q to stop
"
" To play it @{char} or @@ to play the last recorded marco
"
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

" find and replace in the whole file
":%s/search/replace/g

"NORMAL MODE
"
" Counts, you and increase and decrease a number by hovering over it and ..
" <C-a>     increase number on or first match form cursor
" <C-x>     decrease number on or first match form cursor 
" these can also have a number before them, like this 15<C-a> 
"

" Tpope's Commentry
" gc{motion}              Comment or uncomment lines that {motion} moves over.
" gcc                     Comment or uncomment [count] lines.
"{Visual}gc              Comment or uncomment the highlighted lines.
autocmd FileType php setlocal commentstring=//\ %s


"---------------------------------------------------------
"------|| CUT COPY PASTE FIND REPLACE
"---------------------------------------------------------

set clipboard=unnamed

" Registers 
" "*            yanks to system clip board
"for example "*yy is copy line to clipboard
""*p pastes it form clipboard
" "_ for the delete forever registor
"  so "_daw to not put the word into the registor

"type :reg to see what is stored in each registor, it is a history, to access
"type "{char}p

" When the auto complete  is open, close it with <C-x> then <C-l> will show a
" list of line wise completions
"
" Keep pressing <Ctrl-X> then <Ctrl-l> to copy multiple lines

"---------------------------------------------------------
"------|| GETTING AROUND THE PROJECT 
"---------------------------------------------------------


"Fzf Settings
"
" https://bluz71.github.io/2018/12/04/fuzzy-finding-in-vim-with-fzf.html

"<C-V> : Open the selected file in a vertical split
" <ctrl-p> and <ctrl-j> are alternatives for the up/down keys
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <silent> <Leader>l :Buffers<CR>
" git status apparently 
nnoremap <silent> <Leader>g :GFiles?<CR>
" to Search the project use 

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }

nmap // :BLines<CR>
nmap ?? :Rg<CR>

" These are to show commit history using the vim-fugitive
 let g:fzf_commits_log_options = '--graph --color=always
  \ --format="%C(yellow)%h%C(red)%d%C(reset)
  \ - %C(bold green)(%ar)%C(reset) %s %C(blue)<%an>%C(reset)"'

nnoremap <silent> <Leader>c  :Commits<CR>
nnoremap <silent> <Leader>bc :BCommits<CR>

" The SPACE m key combination will launch the fzf window with a list of recently opened-by-Vim files.
nnoremap <silent> <Leader>m :FZFMru<CR>

if has("nvim")
    " Escape inside a FZF terminal window should exit the terminal window
    " rather than going into the terminal's normal mode.
    autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>
endif
" :Rg ( which uses ripgrep)
" :Rg searchTerm directory/structure
" :Rg serchTerm -g '*.php'
" : -g stands for glob and filters the results, lets study this more
" :https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md
"  cclose to close the quickfix buffer
" Might need to make a shortcut for cclose
"
"
" "Nerd Tree Settings
"
" m in NERDTree on a file or directory to bring up menu
nnoremap <silent><Leader>B :NERDTreeToggle<CR>
nnoremap <silent><Leader>b :NERDTreeFind<CR>

let NERDTreeShowHidden=1
"nerd tree opens up if no file is specified

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" This overrides the :Rg search provided by FZF so I can search in .gitignore
" directories and add directories to search after the term 
"command! -bang -nargs=* Rg
 " \ call fzf#vim#grep(
 " \   'rg --column --line-number --no-heading --color=always --smart-case --no-ignore '.<q-args>, 1,
 " \   fzf#vim#with_preview(), <bang>0)


" Smooth Scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"---------------------------------------------------------
"------ INTEL SENSE
"---------------------------------------------------------
"
" for the default vim pop up menu, <ctrl-n> and <ctrl-p> can select though the
" list
" === Coc.nvim === "
"
"
" :CocInstall coc-tsserver coc-json coc-html coc-css coc-phpls

" Settings from the coc.nvim readme
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <leader><cr>:call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <Leader>p  :CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <Leader>P  :CocList -I symbols<cr>
" Buffer List
nnoremap <leader>h  :CocList buffers<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


"---------------------------------------------------------
"------|| TERMINAL
"---------------------------------------------------------

"---------------------------------------------------------
"------|| LANGUAGE - PHP
"---------------------------------------------------------

" run php cs fixer when a php file is saved
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
"$hello = $mes<tab>
"// gave me 
"$hello = $$message;
"I fixed this with the following autocommand in my init.nvim
"autocmd BufNewFile,BufRead *.php set iskeyword+=$

let g:php_cs_fixer_config_file = '/Users/cam/Sites/iod/.php_cs'            " options: --config-file
"---------------------------------------------------------
"------|| LANGUAGE - JS 
"---------------------------------------------------------
command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd BufWritePost *.js silent! :CocCommand prettier.formatFile
autocmd BufWritePost *.jsx silent! :CocCommand prettier.formatFile

"---------------------------------------------------------
"------ GETTING AROUND THE FILE 

