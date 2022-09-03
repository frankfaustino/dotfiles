require('material').setup({
	contrast = {
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = true, -- Enable italic comments
		keywords = true, -- Enable italic keywords
		functions = true, -- Enable italic functions
		strings = true, -- Enable italic strings
		variables = true -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		colored_cursor = false, -- Disable the colored cursor
		borders = false, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

	plugins = { -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
		trouble = false,
		nvim_cmp = false,
		neogit = false,
		gitsigns = true,
		git_gutter = false,
		telescope = true,
		nvim_tree = false,
		sidebar_nvim = false,
		lsp_saga = false,
		nvim_dap = false,
		nvim_navic = false,
		which_key = true,
		sneak = false,
		hop = false,
		indent_blankline = false,
		nvim_illuminate = false,
		mini = false,
	}
})

vim.g.material_style = 'lighter'                    -- material theme style
vim.cmd('colorscheme material')                     -- sets colorscheme
