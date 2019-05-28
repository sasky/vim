
"""""""""""""""""""""""""""""""""""""
" Learnings
"""""""""""""""""""""""""""""""""""""

" scrolling
" <C-d> scroll down
" <C-u> scroll up
" H M L high middle low




"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" Show linenumbers
set number
set relativenumber
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2




" Enable highlighting of the current line
set cursorline

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
nnoremap <SPACE> <Nop>
let mapleader = " "

nnoremap v.rc :vsp ~/.config/nvim/init.vim<Enter>


" PLUGINS "
packadd minpac
"call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#init()
"

call minpac#add('itchyny/lightline.vim')

"packadd lightline.vim
"
call minpac#add('drewtempelmeyer/palenight.vim',{'type':'opt'})
packadd palenight.vim
set background=dark
colorscheme palenight
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
"  set termguicolors
endif
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
"let g:lightline.colorscheme = 'palenight'
