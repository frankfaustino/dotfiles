local utils = require('utils')
local map = utils.map

-- Keymap ——————————————————————————————————————————————————————

vim.g.mapleader = " "
--  remap jk to escape
map('i', 'jk', '<esc>')
--  move between buffers
map('n', '<c-j>', ':bprev<cr>')
map('n', '<c-k>', ':bnext<cr>')
-- toggle listchars
map('n', '<f3>', ':set list! list?<cr>')
-- toggle search highlighting
map('n', '<esc>', ':noh<cr>')
-- coc completion mapped to \
map('i', '\\', 'coc#pum#visible() ? coc#pum#confirm() : "<cr>"', { silent = true, expr = true })
-- telescope
map('n', 'ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fg', '<cmd>lua require("telescope.builtin").live_grep({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fb', '<cmd>lua require("telescope.builtin").buffers({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fh', '<cmd>lua require("telescope.builtin").help_tags({cwd = "%:h"})<cr>', { silent = true })
-- telescope file browser mapped to space f
map('n', '<leader>f', '<cmd>lua require "telescope".extensions.file_browser.file_browser()<cr>')
-- preview markdown in Glow
map('n', '<leader>g', ':Glow<cr>')
-- material.nvim — toggle tmux and nvim colorscheme between light and dark
-- map('n', '<leader>c', '<cmd>lua require("utils").toggle_colorscheme()<cr>', { silent = true })
-- map('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { silent = true })
