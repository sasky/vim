" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Themes
    Plug 'hzchirs/vim-material'
    Plug 'hardcoreplayers/oceanic-material'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' 
    Plug 'mhinz/vim-startify'
    
    "no config plugin
    "
    Plug 'jiangmiao/auto-pairs'                 " Auto pairs for '(' '[' '{'
    Plug 'sheerun/vim-polyglot'                 " Better Syntax Support
    Plug 'machakann/vim-highlightedyank'

    Plug 'tpope/vim-surround'                   "TODO get docs for this to remind myself
    "https://github.com/tpope/vim-surround
    Plug 'tpope/vim-commentary'    "TODO get docs for this to remind myself
    "https://github.com/tpope/vim-commentary
    Plug 'inkarkat/vim-ReplaceWithRegister'       "TODO get docs for this to remind myself 
    "https://github.com/inkarkat/vim-ReplaceWithRegister
    "is.vim - incremental search improved
    Plug 'haya14busa/is.vim'    
    
    "https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
    Plug 'wellle/targets.vim'
    " lets try this one out 
    Plug 'justinmk/vim-sneak'

    " Little config Plugins
    Plug 'terryma/vim-smooth-scroll'
    Plug 'liuchengxu/vim-which-key'
     
    "FZF stuff
    
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
     
    " Language PHP

    Plug 'stephpy/vim-php-cs-fixer' " TODO need to get this working, hopefully on a per project then fall back to home dir


call plug#end()
