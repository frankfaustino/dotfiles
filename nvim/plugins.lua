-- Plugins ———————————————————————————————————————————————————————

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    use 'itchyny/lightline.vim'                             --  lightline status bar
	use { 'kaicataldo/material.vim', branch = 'main' }      --  material theme
	use 'Yggdroot/indentLine'							    --  displays lines at each indentation level
    use 'ellisonleao/glow.nvim'                             --  markdown preview
    use 'preservim/nerdtree'                                --  NERDTree
    use { 'neoclide/coc.nvim', branch = 'release' }         --  auto completion
    use 'b3nj5m1n/kommentary'                               --  comment text
    use 'kylechui/nvim-surround'                            --  surround text
    use 'AndrewRadev/splitjoin.vim'                         --  toggles between single-line / multi-line statements
    use 'nvim-lua/popup.nvim'                               --  popup api — used by telescope
    use 'nvim-lua/plenary.nvim'                             --  functions — used by gitsigns and telescope
    use 'nvim-treesitter/nvim-treesitter'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }  --  telescope
    use {                                                   --  git signs
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    use {                                                   --  markdown preview
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end
    }
    use 'norcalli/nvim-colorizer.lua'                       --  color highlighter
	use 'pangloss/vim-javascript'	                        --  JavaScript syntax highlighting
    use 'sharksforarms/vim-rust'                            --  Rust
end)

