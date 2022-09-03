local M = {}

function M.map(mode, key_combo, command, config)
    local options = { noremap = true }
    if config then
        options = vim.tbl_extend('force', options, config)
    end
    vim.api.nvim_set_keymap(mode, key_combo, command, options) 
end


function M.toggle_colorscheme()
    local theme = vim.fn.system('tmux show-environment THEME'):sub(7,10)
    -- print(theme:len())
    -- print(theme)
    if theme == 'dark' then
        -- print('current theme is dark')
        vim.cmd(':silent !tmux set-environment THEME light')
        vim.cmd(':silent !tmux source-file ~/.tmux_light_theme.conf')
        -- print(vim.fn.system("tmux show-environment THEME"))
        vim.cmd(':silent lua require("material.functions").change_style("lighter")')
    else
        -- print('current theme is light')
        vim.cmd(':silent !tmux set-environment THEME dark')
        vim.cmd(':silent !tmux source-file ~/.tmux_dark_theme.conf')
        -- print(vim.fn.system("tmux show-environment THEME"))
        vim.cmd(':silent lua require("material.functions").change_style("darker")')
    end
end

return M

