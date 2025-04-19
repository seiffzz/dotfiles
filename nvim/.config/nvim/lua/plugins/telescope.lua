return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
		config = function()
			require('telescope').setup({
				extensions = {
					fzf = {}
				}
			})

			require('telescope').load_extension('fzf')

			--keymaps
			vim.keymap.set('n', '<space>sf', require('telescope.builtin').find_files)
			vim.keymap.set('n', '<space>sd', require('telescope.builtin').diagnostics)
		end
	}
}
