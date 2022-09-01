function map(mode, key_combo, command, config)
    local options = { noremap = true }
    if config then
        options = vim.tbl_extend('force', options, config)
    end
    vim.api.nvim_set_keymap(mode, key_combo, command, options) 
end

-- Keymap ——————————————————————————————————————————————————————

--  remap jk to escape
map('i', 'jk', '<esc>')
--  \d toggles NERDTree
map('n', '<leader>d', ':NERDTreeToggle<cr>')
--  move between buffers
map('n', '<c-j>', ':bprev<cr>')
map('n', '<c-k>', ':bnext<cr>')
-- use Enter key for coc completion
map('i', '<cr>', 'coc#pum#visible() ? coc#pum#confirm() : "<cr>"', { silent = true, expr = true })
-- telescope
map('n', 'ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fg', '<cmd>lua require("telescope.builtin").live_grep({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fb', '<cmd>lua require("telescope.builtin").buffers({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fh', '<cmd>lua require("telescope.builtin").help_tags({cwd = "%:h"})<cr>', { silent = true })
-- toggle listchars
map('n', '<f3>', ':set list! list?<cr>')
-- toggle search highlighting
map('n', '<esc>', ':noh<cr>')
