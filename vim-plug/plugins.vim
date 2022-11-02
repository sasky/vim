" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"LVIM TRANSFER 
" or is there a lvim equivalent?
" tabnine
" jk to save 
" when pasting, dont replavce clipboard 
"
"
"
    " ENDLVIM TRANSFER 




call plug#begin('~/.config/nvim/autoload/plugged')

    " Themes
    Plug 'ful1e5/onedark.nvim'
    Plug 'hzchirs/vim-material'
    Plug 'hardcoreplayers/oceanic-material'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'mhinz/vim-startify'
    Plug 'phalkunz/vim-ss'

    "no config plugin
    "
    "Plug 'jiangmiao/auto-pairs'                 " Auto pairs for '(' '[' '{'
    Plug 'sheerun/vim-polyglot'                 " Better Syntax Support
    Plug 'machakann/vim-highlightedyank'

    Plug 'tpope/vim-surround'                   "TODO get docs for this to remind myself
    Plug 'tpope/vim-repeat'
    "https://github.com/tpope/vim-surround
    
    Plug 'tpope/vim-commentary'    "TODO get docs for this to remind myself
    "https://github.com/tpope/vim-commentary
    Plug 'Yggdroot/indentLine'

    " Helper Unix Commans
    Plug 'tpope/vim-eunuch'
    "https://github.com/tpope/vim-eunuch 
    "
    "is.vim - incremental search improved
    Plug 'haya14busa/is.vim'    
    Plug 'qpkorr/vim-bufkill'    
    "https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
    Plug 'wellle/targets.vim'
    " lets try this one out 
    Plug 'justinmk/vim-sneak'
    Plug 'christoomey/vim-tmux-navigator'
    " Little config Plugins
    Plug 'terryma/vim-smooth-scroll'
    Plug 'liuchengxu/vim-which-key'
    Plug 'vim-scripts/BufOnly.vim'     
    Plug 'sbdchd/neoformat'


    "FZF stuff

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'


    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'jesseleite/vim-agriculture'
    
    "COC stuff
    
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Git

    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'christoomey/vim-conflicted'
     
    " Language PHP

    " Plug 'stephpy/vim-php-cs-fixer' " TODO need to get this working, hopefully on a per project then fall back to home dir

    Plug 'inkarkat/vim-ReplaceWithRegister'       "TODO get docs for this to remind myself 
    "https://github.com/inkarkat/vim-ReplaceWithRegister


    " MySQL integration
    Plug 'tpope/vim-dadbod' 
    Plug 'kristijanhusak/vim-dadbod-ui' 

call plug#end()
