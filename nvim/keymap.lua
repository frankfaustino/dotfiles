function map(mode, key_combo, command, config)
    local options = { noremap = true }
    if config then
        options = vim.tbl_extend('force', options, config)
    end
    vim.api.nvim_set_keymap(mode, key_combo, command, options) 
end

-- Keymap ——————————————————————————————————————————————————————

vim.g.mapleader = " "
--  remap jk to escape
map('i', 'jk', '<esc>')
map('n', '<leader>f', '<cmd>lua require "telescope".extensions.file_browser.file_browser()<cr>')
--  move between buffers
map('n', '<c-j>', ':bprev<cr>')
map('n', '<c-k>', ':bnext<cr>')
-- toggle listchars
map('n', '<f3>', ':set list! list?<cr>')
-- clear search highlighting
map('n', '<esc>', ':noh<cr>')
-- move selected line up or down
map('v', 'J', ":m '>+1<cr>gv=gv")
map('v', 'K', ":m '<-2<cr>gv=gv") 
-- page up or down (w/ cursor centered on screen)
map('n', '<c-u>', '<c-u>zz')
map('n', '<c-d>', '<c-d>zz')
-- repeat latest search (w/ cursor centered on screen)
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
-- yank from cursor to the EOL
map('n', 'Y', 'yg$')
-- wtf? mark and join?
map('n', 'J', 'mzJ`z')

-- Plugins Keymap
-- use Tab key for coc completion
map('i', '<tab>', 'coc#pum#visible() ? coc#pum#confirm() : "<tab>"', { silent = true, expr = true })
-- telescope
map('n', 'ff', '<cmd>lua require("telescope.builtin").find_files({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fg', '<cmd>lua require("telescope.builtin").live_grep({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fb', '<cmd>lua require("telescope.builtin").buffers({cwd = "%:h"})<cr>', { silent = true })
map('n', 'fh', '<cmd>lua require("telescope.builtin").help_tags({cwd = "%:h"})<cr>', { silent = true })
-- preview markdown in Glow
map('n', '<leader>g', ':Glow<cr>')
-- vimspector
map('n', '<leader>dd', ':call vimspector#Launch()<cr>')
map('n', '<leader>de', ':call vimspector#Reset()<cr>')
map('n', '<leader>dc', ':call vimspector#Continue()<cr>')
map('n', '<leader>dt', ':call vimspector#ToggleBreakpoint()<cr>')
map('n', '<leader>dT', ':call vimspector#ClearBreakpoints()<cr>')
-- lspsaga
-- map('n', 'gr', '<cmd>Lspsaga rename<cr>', { silent = true })
-- undotree
map('n', '<f5>', '::UndotreeToggle<cr>')
--[[ nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver ]]

-- coc-snippets
-- Use <C-l> for trigger snippet expand.
-- map('i', '\\', '<Plug>(coc-snippets-expand)')

-- Use <C-j> for select text for visual placeholder of snippet.
-- vmap <C-j> <Plug>(coc-snippets-select)

-- Use <C-j> for jump to next placeholder, it's default of coc.nvim
-- let g:coc_snippet_next = '<c-j>'

-- Use <C-k> for jump to previous placeholder, it's default of coc.nvim
-- let g:coc_snippet_prev = '<c-k>'

-- Use <C-j> for both expand and jump (make expand higher priority.)
-- imap <C-j> <Plug>(coc-snippets-expand-jump)

