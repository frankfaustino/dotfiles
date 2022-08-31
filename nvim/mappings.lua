-- Mappings ——————————————————————————————————————————————————————
 
--  remap jk to escape
vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true })
--  \d toggles NERDTree
vim.api.nvim_set_keymap('n', '<leader>d', ':NERDTreeToggle<cr>', { noremap = true })
--  move between buffers
vim.api.nvim_set_keymap('n', '<c-j>', ':bprev<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', ':bnext<cr>', { noremap = true })
