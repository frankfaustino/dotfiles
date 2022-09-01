-- Options ———————————————————————————————————————————————————————

vim.opt.termguicolors = true                        -- use full 24-bit colors
vim.opt.ruler = true                                -- show the cursor position all the time

-- Tabs ——————————————————————————————————————————————————————————

vim.opt.autoindent = true
vim.opt.tabstop = 4                                 -- number of spaces that a tab renders as
vim.opt.shiftwidth = 4                              -- number of spaces to use for autoindent
vim.opt.softtabstop = 4                             -- number of spaces that tabs insert
vim.opt.expandtab = true                            -- uses spaces instead of tab characters
vim.opt.smarttab = true                             -- helps with backspacing because of expandtab

-- HUD & Status Info —————————————————————————————————————————————

vim.opt.number = true
vim.opt.relativenumber = true                       -- enable 'hybrid' line numbers
vim.opt.numberwidth = 4                             -- width of number column
vim.opt.cursorline = true                           -- highlights cursor line
vim.opt.showmode = false                            -- hides current vi mode in lower left (hidden for lightline)

-- editor / Plugins ——————————————————————————————————————————————

vim.g.material_theme_style = 'lighter-community'     -- material theme style
vim.g.material_terminal_italics = 1                 -- enables italics in theme
vim.cmd('colorscheme material')                     -- sets colorscheme

vim.g.lightline = { colorscheme = 'material_vim' }  -- sets status bar colorscheme

-- vim-javascript
vim.g.javascript_plugin_jsdoc = 1                   -- enables syntax highlighting for JSDocs

-- indentLine
vim.g.indentLine_char = '･'                         -- specifies the character used to mark indentation

-- NERDTree
vim.g.NERDTreeDirArrowExpandable = "+"
vim.g.NERDTreeDirArrowCollapsible = "~"

-- listchars
vim.opt.listchars = {
    space = '･',
    tab = '▐▐',         -- (▸·) 2nd char repeated for each space
    trail = '·',        -- trailing spaces
    eol = '↵',          -- end of line
    precedes = '«',
    extends = '»'
}
vim.opt.list = false
