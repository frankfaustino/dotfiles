local cmd, g, o, opt = vim.cmd, vim.g, vim.o, vim.opt

-- Options ———————————————————————————————————————————————————————

opt.termguicolors = true                        -- use full 24-bit colors
opt.ruler = true                                -- show the cursor position all the time

-- Tabs ——————————————————————————————————————————————————————————

opt.autoindent = true
opt.tabstop = 4                                 -- number of spaces that a tab renders as
opt.shiftwidth = 4                              -- number of spaces to use for autoindent
opt.softtabstop = 4                             -- number of spaces that tabs insert
opt.expandtab = true                            -- uses spaces instead of tab characters
opt.smarttab = true                             -- helps with backspacing because of expandtab

-- HUD & Status Info —————————————————————————————————————————————

opt.number = true
opt.relativenumber = true                       -- enable 'hybrid' line numbers
opt.numberwidth = 4                             -- width of number column
opt.cursorline = true                           -- highlights cursor line
opt.showmode = false                            -- hides current vi mode in lower left (hidden for lightline)

-- editor / Plugins ——————————————————————————————————————————————

g.material_theme_style = 'darker-community'     -- material theme style
g.material_terminal_italics = 1                 -- enables italics in theme
cmd('colorscheme material')                     -- sets colorscheme

g.lightline = { colorscheme = 'material_vim' }  -- sets status bar colorscheme

-- vim-javascript
g.javascript_plugin_jsdoc = 1                   -- enables syntax highlighting for JSDocs

-- indentLine
g.indentLine_char = '･'                         -- specifies the character used to mark indentation

-- NERDTree
g.NERDTreeDirArrowExpandable = "+"
g.NERDTreeDirArrowCollapsible = "~"

-- listchars
opt.listchars = {
    space = '･',
    tab = '▐▐',         -- (▸·) 2nd char repeated for each space
    trail = '·',        -- trailing spaces
    eol = '↵',          -- end of line
    precedes = '«',
    extends = '»'
}
opt.list = false

-- vimwiki
g.vimwiki_list = {{ path = '~/notes', syntax = 'markdown', ext = '.md' }}
g.vimwiki_listsyms = ' ○◎●✔'

-- text behaviour
-- o.formatoptions = o.formatoptions
--                    + 't'    -- auto-wrap text using textwidth
--                    + 'c'    -- auto-wrap comments using textwidth
--                    + 'r'    -- auto insert comment leader on pressing enter
--                    - 'o'    -- don't insert comment leader on pressing o
--                    + 'q'    -- format comments with gq
--                    - 'a'    -- don't autoformat the paragraphs (use some formatter instead)
--                    + 'n'    -- autoformat numbered list
--                    - '2'    -- I am a programmer and not a writer
--                    + 'j'    -- join comments smartly
-- there has to be a better way (?)
vim.cmd [[
    au BufWinEnter * set formatoptions+=tcrqnj formatoptions-=o
    au BufRead     * set formatoptions+=tcrqnj formatoptions-=o
    au BufNewFile  * set formatoptions+=tcrqnj formatoptions-=o
]]

