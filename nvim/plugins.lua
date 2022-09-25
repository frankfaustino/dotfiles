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
    use {                                                   -- telescope
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        config = function()
            require('telescope.nvim').setup({
                defaults = { sorting_strategy = 'descending' }
            })
        end
    }
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
    use {                                                   -- markdown preview
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end
    }
    use 'ellisonleao/glow.nvim'                             -- markdown preview
    use 'vimwiki/vimwiki'
    use 'norcalli/nvim-colorizer.lua'                       -- color highlighter
    use {
        'edluffy/specs.nvim',
        run = function()
            require('specs').setup{
                show_jumps  = true,
                min_jump = 10,
                popup = {
                    delay_ms = 0, -- delay before popup displays
                    inc_ms = 8, -- time increments used for fade/resize effects 
                    blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
                    width = 100,
                    winhl = 'PMenu',
                    fader = require('specs').pulse_fader,
                    resizer = require('specs').shrink_resizer
                },
                ignore_filetypes = {},
                ignore_buftypes = {
                    nofile = true,
                },
            }
        end
    }
    use 'pangloss/vim-javascript'                           -- JavaScript syntax highlighting
    use 'sharksforarms/vim-rust'                            -- Rust
    use 'rust-lang/rust.vim'
    use 'puremourning/vimspector'                           -- debugger
end)
