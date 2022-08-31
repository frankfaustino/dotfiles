-- Plugins ———————————————————————————————————————————————————————

return require('packer').startup(function()
	use 'itchyny/lightline.vim'                             --  lightline status bar
	use { 'kaicataldo/material.vim', branch = 'main' }      --  material theme
	use 'Yggdroot/indentLine'							    --  displays lines at each indentation level
    --  use 'suan/vim-instant-markdown'                        --  markdown live previewing
    use 'ellisonleao/glow.nvim'                             --  markdown preview
    use 'preservim/nerdtree'                                --  NERDTree
    use { 'neoclide/coc.nvim', branch = 'release' }         --  auto completion
    use 'b3nj5m1n/kommentary'                               --  comment text
    use 'kylechui/nvim-surround'                            --  surround selections
    use 'AndrewRadev/splitjoin.vim'                         --  toggles between single-line / multi-line statements
    use 'f-person/git-blame.nvim'                           --  shows git blame
    use 'airblade/vim-gitgutter'                            --  shows git diff in the sign column
    use 'norcalli/nvim-colorizer.lua'                       --  color highlighter
	use 'pangloss/vim-javascript'	                        --  JavaScript syntax highlighting
end)

