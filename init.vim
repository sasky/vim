
"""""""""""""""""""""""""""""""""
" Learnings
"""""""""""""""""""""""""""""""""""""
"php ide notes
"https://thevaluable.dev/vim-php-ide/
"
"CamalCase w/b
"
"Debug
"
" VIM BOOK LEARNINGS 
"
" "THE VIM WAY
" 
" $     run terminal command

"
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
" Counts
" <C-a>     increase number on or first match form cursor
" <C-x>     decrease number on or first match form cursor 
" these can also have a number before them, like this 15<C-a> 
"
"

" GETTING AROUND FASTER
" <C-o>     back jump
" <C-i>     forward jump (may not work because tab is remapped)
"
"
" SPELL CHECK
" [s and ]s back and forward to misspelled word
" z=    change misspelled words
" zg    add word to spell file 
" zw    remove word from spell file
"

" Registers 
" "*            yanks to system clip board
"for example "*yy is copy line to clipboard
""*p pastes it form clipboard
"
"
" SCROLLING
" <C-d> scroll down
" <C-u> scroll up
" H M L high middle low

"SWITCH CASE"
" ~    : Changes the case of current character
" guu  : Change current line from upper to lower.
" gUU  : Change current LINE from lower to upper.
" guw  : Change to end of current WORD from upper to lower.
" guaw : Change all of current WORD to lower.
" gUw  : Change to end of current WORD from lower to upper.
" gUaw : Change all of current WORD to upper.
" g~~  : Invert case to entire line
" guG : Change to lowercase until the end of document.

"BUFFERS
":ls : show buffers
":b(num) switch to buffer
":bd destry buffer
"

" CHANGE LIST
" g;    forward 
" g,    back    
"You can view the contents of the changelist by running the command::changes




"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
let g:python3_host_prog="/usr/local/bin/python3"

let mapleader="\<Space>"

nnoremap <f4> :source ~/.config/nvim/init.vim<CR>
"buffers next and prev
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>


":args list 
nnoremap <silent> [a :previous<CR>
nnoremap <silent> ]a :next<CR>
nnoremap <leader>h :argadd %<cr>
nnoremap <leader><c-h> :argdelete %<cr> 

" Show linenumbers
set number
set relativenumber
set ruler
set ignorecase smartcase

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2
           

filetype plugin indent on   
" Automatically detect file types. "
set hidden                      
" Allow buffer switching without saving

"
" Enable highlighting of the current line
set cursorline

nnoremap <silent> <Leader><Space> :nohlsearch<CR>

" SPLITS "

" We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it’s just ctrl-j

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Open new split panes to right and bottom, which feels more natural than Vim’s default:

set splitbelow
set splitright

" TERMINAL MODE "
if has ('nvim')
    tnoremap <Esc> <C-\><C-n>
endif
" open the terminal in a split
":nnoremap <Leader>T  :split :te<CR>
"command! -nargs=* VT vsplit | terminal <args>

nnoremap v.rc :vsp ~/.config/nvim/init.vim<Enter>

set spell

" CTAGS
:nnoremap <f5> :!ctags -R --languages=php --exclude="node_modules" --exclude="public" --exclude="silverstripe-cache" --exclude="twig-partial-cache"<CR>

" PLUGINS "
call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'StanAngeloff/php.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
"Plug 'easymotion/vim-easymotion'
Plug 'neomake/neomake'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'Townk/vim-autoclose'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'
Plug 'brooth/far.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-eunuch'
Plug 'farmergreg/vim-lastplace'
" NCM2 Setting"
" " enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'phpactor/ncm2-phpactor'   
"Plug 'fgrsnau/ncm2-aspell'   


call plug#end()


" THEME 
syntax on
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark


set t_Co=256
colorscheme minimalist
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"Fzf Settings
"
"
"<C-V> : Open the selected file in a vertical split
"<C-c> : dismiss fzf picker
nnoremap <C-p> :<C-u>FZF<CR>
command! LS Buffers 
" also :Tags for a list of tags

"Nerd Tree Settings
"
" m in NERDTree on a file or directory to bring up menu
map <Leader>s :NERDTreeToggle<CR>
map <Leader><c-s> :NERDTreeFind <CR>

let NERDTReeShowHidden = 1    

"PHP Actor Settings 

" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>
" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>
" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>
" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>
" Show brief information about the symbol under the cursor
nmap <Leader>K :call phpactor#Hover()<CR>
" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>
" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>
" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

"Phpactor for omni-completion
autocmd FileType php setlocal omnifunc=phpactor#Complete
" Omni complete can also provide feedback when something fails to complete
let g:phpactorOmniError = v:true
let g:phpactorOmniAutoClassImport = v:true
" Initialize plugin system
"
"

"NCM settings


" Use <TAB> to select the popup menu:
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c




"Neo Make
call neomake#configure#automake('w')
let g:neomake_phpstan_level="max"
"You can then navigate them using the built-in methods like :lwindow / :lopen
"(to view the list) and :lprev / :lnext to go back and forth."






"php cs fixer"
"navigate
"autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

nmap <Leader>f :call PhpCsFixerFixFile()<CR>



"tag bar
nmap <Leader>tb :TagbarToggle<CR>




" VIM Spartify
":h startify has heaps of config options
let g:startify_session_persistence=1
let g:startify_change_to_dir = 0




" Vim GIT Gutter
" ]c        jump to next hunk
" [c        jump to prev hunk
"
" You can stage or undo an individual hunk when your cursor is in it:
"stage the hunk with <Leader>hs or
"undo it with <Leader>hu.
"And you can preview a hunk's changes with <Leader>hp
" More reading about this later at
" https://github.com/airblade/vim-gitgutter
"
"




" Vim Repeat
" read more about the supported plugins here
"






" FAR VIM
" simple find
" :F {pattern} {file-mask} [params]
"
" simple replace 
" :Far foo bar **/*.py
" :Fardo
"improves performance apparently 
set lazyredraw
set regexpengine=1
let g:far#source = 'rg'

" VIM-BUFKILL
" :BD to kill a buffer and keep the vertical split intact
"map <C-c> :BD<cr>

" EUNUCH 
" Vim sugar for the UNIX shell commands that need it the most. Features include:

" :Delete: Delete a buffer and the file on disk simultaneously.
" :Unlink: Like :Delete, but keeps the now empty buffer.
" :Move: Rename a buffer and the file on disk simultaneously.
" :Rename: Like :Move, but relative to the current file's containing directory.
" :Chmod: Change the permissions of the current file.
" :Mkdir: Create a directory, defaulting to the parent of the current file.
" :Cfind: Run find and load the results into the quickfix list.
" :Clocate: Run locate and load the results into the quickfix list.
" :Lfind/:Llocate: Like above, but use the location list.
" :Wall: Write every open window. Handy for kicking off tools like guard.
" :SudoWrite: Write a privileged file with sudo.
" :SudoEdit: Edit a privileged file with sudo.
" File type detection for sudo -e is based on original file name.
" New files created with a shebang line are automatically made executable.
" New init scripts are automatically prepopulated with /etc/init.d/skeleton.<Paste>



" Investigate and watch this one later
" https://github.com/tpope/vim-fugitive
"
"
"
"
"
"
"
"
