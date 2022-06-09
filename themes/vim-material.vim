" Dark
set background=dark
colorscheme vim-material
" colorscheme rose-pine

" let g:onedark_comment_style = "italic"
" let g:onedark_keyword_style = "italic"
" let g:onedark_function_style = "italic"
" let g:onedark_variable_style = "italic"
" colorscheme onedark



" Palenight
" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material

" Oceanic
" let g:material_style='oceanic'
" set background=dark
" colorscheme vim-material

" Light
" set background=light
" colorscheme vim-material
"



if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" make the sign column not have a colour ( most left hand error bar) 
highlight clear SignColumn 		



"Makes the background transparent on Alacritty
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 


hi! CursorLine   cterm=NONE ctermbg=black guibg=black
hi! statusline guibg=White  guifg=Black 
hi! statuslineNC guibg=gray  guifg=Black 

