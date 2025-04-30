return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			require("telescope").setup({
				extensions = {
					fzf = {},
				},
			})

			require("telescope").load_extension("fzf")

			--keymaps
			vim.keymap.set("n", "<space>sf", function()
				require("telescope.builtin").find_files()
			end)
			vim.keymap.set("n", "<space>sd", require("telescope.builtin").diagnostics)
			vim.keymap.set("n", "<space>sh", require("telescope.builtin").help_tags)
			vim.keymap.set("n", "<space>sg", require("telescope.builtin").live_grep)
		end,
	},
}
