-- Plugins ———————————————————————————————————————————————————————

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
    use { 'kaicataldo/material.vim', branch = 'main' }      -- material theme
    use 'Yggdroot/indentLine'                               -- displays lines at each indentation level
    use 'b3nj5m1n/kommentary'                               -- comment text
    use({
        'kylechui/nvim-surround',                           -- surround text
        tag = '*', -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require('nvim-surround').setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use 'AndrewRadev/splitjoin.vim'                         -- toggles between single-line / multi-line statements
    use {                                                   -- git signs
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    use {                                                   -- markdown preview
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end
    }
    use 'ellisonleao/glow.nvim'                             -- markdown preview
    use 'vimwiki/vimwiki'
    use 'norcalli/nvim-colorizer.lua'                       -- color highlighter
    use 'edluffy/specs.nvim'
    use 'pangloss/vim-javascript'                           -- JavaScript syntax highlighting
    use 'sharksforarms/vim-rust'                            -- Rust
    use 'rust-lang/rust.vim'
    use 'puremourning/vimspector'                           -- debugger
end)
