return {
	"tpope/vim-fugitive",
	config = function()
		--Keymaps
		vim.keymap.set("n", "<leader>gs", "<CMD>Git<CR>")
	end
}
