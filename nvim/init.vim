" ————— Options ———————————————————————————————————————————————————————
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

set number relativenumber       "	    enable 'hybrid' line numbers
set numberwidth=4               "nuw:   width of number column
set cursorline                  "       highlights cursor line
set noshowmode                  "smd:   hides current vi mode in lower left (hidden for lightline)

" ————— Mappings ——————————————————————————————————————————————————————
 
" remap jk to escape
inoremap jk <Esc>
" \d toggles NERDTree
nnoremap <Leader>d :NERDTreeToggle<CR>
" move between buffers
nnoremap <C-J> :bprev<CR>
nnoremap <C-K> :bnext<CR>

" ————— Plugins ———————————————————————————————————————————————————————

call plug#begin()
	Plug 'itchyny/lightline.vim'                            " lightline status bar
	Plug 'kaicataldo/material.vim', { 'branch': 'main' }    " material theme
	Plug 'Yggdroot/indentLine'							    " displays lines at each indentation level
    " Plug 'suan/vim-instant-markdown'                        " markdown live previewing
    Plug 'ellisonleao/glow.nvim'                            " markdown preview
    Plug 'preservim/nerdtree'                               " NERDTree
    Plug 'neoclide/coc.nvim', {'branch': 'release'}         " auto completion
    Plug 'b3nj5m1n/kommentary'                              " comment text
    Plug 'kylechui/nvim-surround'                           " surround selections
    Plug 'AndrewRadev/splitjoin.vim'                        " toggles between single-line / multi-line statements
    Plug 'f-person/git-blame.nvim'                          " shows git blame
    Plug 'airblade/vim-gitgutter'                           " shows git diff in the sign column
    Plug 'norcalli/nvim-colorizer.lua'                      " color highlighter
	Plug 'pangloss/vim-javascript'	                        " JavaScript syntax highlighting
call plug#end()

" ————— UI ————————————————————————————————————————————————————————————

let g:material_theme_style = 'darker-community'	    " material theme style	
let g:material_terminal_italics = 1		            " enables italics in theme
colorscheme material                                " sets colorscheme

let g:lightline = { 'colorscheme': 'material_vim' } " sets status bar colorscheme

let g:javascript_plugin_jsdoc = 1		            " enables syntax highlighting for JSDocs

let g:indentLine_char = '･'                         " specifies the character used to mark indentation
" let g:indentLine_char_list = ['･', '˟', 'ˑ', '⌇', '◦', '⋅', '⋮']

" ————— UI ————————————————————————————————————————————————————————————

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

