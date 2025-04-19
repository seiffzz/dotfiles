return {
	{
		"catppuccin/nvim",
		enabled = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "auto",
				term_colors = true,
				transparent_background = false,
				background = {
					light = "latte",
					dark = "mocha"
				},
			})
			vim.cmd.colorscheme "catppuccin"
		end
	},
	{
		"rose-pine/neovim",
		enabled = true,
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup {
				variant = "auto",
				dark_variant = "moon",
				extend_background_behind_borders = false,
				style = {
					transparency = true
				}
			}
			vim.cmd.colorscheme "rose-pine"
		end
	}
}
