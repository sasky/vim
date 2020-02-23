
"---------------------------------------------------------
"------|| Annoying things that I want to sort out
"---------------------------------------------------------

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'machakann/vim-highlightedyank'
" Use this for Finding in Project 
Plug 'jremmen/vim-ripgrep'
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
  endif
endfunction
" Leader S to toggle spelling on or off
nnoremap <silent> <Leader>S :call ToggleSpellCheck()<CR>
" todo spelling , why is the directory fucked? 
"
"---------------------------------------------------------
"------|| GETTING AROUND THE FILE 
"---------------------------------------------------------
" 
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
try
" I'm just going to use Denite for finding files in the projet ( like Ctrl -P)
" for now. And for a buffer list
"
" So the three keys to remember are 
" <Leader>; for buffer list
" <leader>p for file list 
" <ctrl-o> to get into the file list 
"
" The folloing was copy/pasted form the Denite setup and here
" 
" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--no-ignore', '--glob','!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
"   --no-ignore I want to search in files that are in gitignore ( this is off
"   by default)
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'statusline': 0,
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry


" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap <leader>; :Denite buffer<CR>
nmap <leader>p :DeniteProjectDir file/rec<CR>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

"---------------------------------------------------------
"------ INTEL SENSE
"---------------------------------------------------------
"
" === Coc.nvim === "
" :CocInstall coc-tsserver coc-json coc-html coc-css coc-phpls

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

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


"Fzf Settings, these were my fzf seetings in case Denite gets to frustrating
"
"
"<C-V> : Open the selected file in a vertical split
"<C-c> : dismiss fzf picker
"nnoremap <C-p> :<C-u>FZF<CR>
"command! LS Buffers 
" also :Tags for a list of tags

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
