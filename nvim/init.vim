" ————— Options ———————————————————————————————————————————————————————

set mouse=a						"	enable the use of mouse
set termguicolors				"	use full 24-bit colors
set ruler                       "ru:    show the cursor position all the time

" ————— Tabs ——————————————————————————————————————————————————————————
set autoindent					"	
set tabstop=4					"ts:	number of spaces that a tab renders as
set shiftwidth=4				"sw:	number of spaces to use for autoindent
set softtabstop=4				"sts:	number of spaces that tabs insert	
set expandtab                   "et:    uses spaces instead of tab characters
set smarttab					"sta:	helps with backspacing because of expandtab

" ————— HUD & Status Info —————————————————————————————————————————————

set number						"	enable line numbers
set numberwidth=4               "nuw:   width of number column
set noshowmode                  "smd:   hides current vi mode in lower left (hidden for lightline)

" ————— Mappings ——————————————————————————————————————————————————————
 
" remap jk to escape
inoremap jk <Esc>

" ————— Plugins ———————————————————————————————————————————————————————

call plug#begin()
	Plug 'itchyny/lightline.vim'                            " lightline status bar
	Plug 'kaicataldo/material.vim', { 'branch': 'main' }    " material theme
	Plug 'Yggdroot/indentLine'							    " displays lines at each indentation level
	Plug 'https://github.com/pangloss/vim-javascript'	    " JavaScript syntax highlighting
    Plug 'leafgarland/typescript-vim'                       " Typescript syntax
    Plug 'suan/vim-instant-markdown'                        " markdown live previewing
    Plug 'scrooloose/nerdtree'                              " filesystem explorer
call plug#end()

" ————— UI ————————————————————————————————————————————————————————————

let g:material_theme_style = 'darker-community'	    " material theme style	
let g:material_terminal_italics = 1		            " enables italics in theme
colorscheme material                                " sets colorscheme

let g:lightline = { 'colorscheme': 'material_vim' } " sets status bar colorscheme

let g:javascript_plugin_jsdoc = 1		            " enables syntax highlighting for JSDocs

let g:indentLine_char = '･'                         " specifies the character used to mark indentation
" let g:indentLine_char_list = ['･', '˟', 'ˑ', '⌇', '◦', '⋅', '⋮']
