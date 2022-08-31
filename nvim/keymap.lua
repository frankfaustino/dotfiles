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
map('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { noremap = true, silent = true, expr = true })
-- telescope
map('n', 'ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "%:h"})<CR>')
map('n', 'fg', '<cmd>lua require("telescope.builtin").live_grep({cwd = "%:h"})<CR>')
map('n', 'fb', '<cmd>lua require("telescope.builtin").buffers({cwd = "%:h"})<CR>')
map('n', 'fh', '<cmd>lua require("telescope.builtin").help_tags({cwd = "%:h"})<CR>')

