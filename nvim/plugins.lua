-- Plugins ———————————————————————————————————————————————————————
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'                             -- functions — used by gitsigns and telescope
    use 'nvim-treesitter/nvim-treesitter'
    use 'mhinz/vim-startify'
    use {                                                   -- welcome screen
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }  -- telescope
    use { 'nvim-telescope/telescope-file-browser.nvim' }    -- telescope file browser
    use 'kyazdani42/nvim-web-devicons'                      -- icons for telescope file browser
    use { 'neoclide/coc.nvim', branch = 'release' }         -- auto completion
    use 'itchyny/lightline.vim'                             -- lightline status bar
    use 'tek256/simple-dark'                                -- simple-dark theme
    use 'bluz71/vim-moonfly-colors'                         -- moonfly theme
    use { 'kaicataldo/material.vim', branch = 'main' }      -- material theme
    use { 'catppuccin/nvim', as = 'catppuccin' }            -- catppuccin theme
    use 'shaunsingh/nord.nvim'                              -- nord theme
    use 'Yggdroot/indentLine'                               -- displays lines at each indentation level
    use 'b3nj5m1n/kommentary'                               -- comment text
    use { 'kylechui/nvim-surround', tag = '*' }             -- surround text
    use 'AndrewRadev/splitjoin.vim'                         -- toggles between single-line / multi-line statements
    use 'lewis6991/gitsigns.nvim'                           -- git signs
    use 'ellisonleao/glow.nvim'                             -- markdown preview
    use 'vimwiki/vimwiki'                                   -- vimwiki
    use 'norcalli/nvim-colorizer.lua'                       -- color highlighter
    use 'pangloss/vim-javascript'                           -- JavaScript syntax highlighting
    use 'sharksforarms/vim-rust'                            -- Rust
    use 'rust-lang/rust.vim'
    use 'puremourning/vimspector'                           -- debugger
    --[[ use({                                                   -- lspsaga
        'glepnir/lspsaga.nvim',
        branch = 'main',
        config = function()
            local saga = require('lspsaga')
            saga.init_lsp_saga({})
        end
    }) ]]
    use 'mbbill/undotree'                                   -- undotree
end)
