return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			preview_config = {
				border = "rounded"
			},
			on_attach = function(bufnr)
				local gitsings = require("gitsigns")

				--Keymaps
				vim.keymap.set("n", "]c", function() gitsings.nav_hunk("next") end,
					{ buffer = bufnr })
				vim.keymap.set("n", "[c", function() gitsings.nav_hunk("prev") end,
					{ buffer = bufnr })
				vim.keymap.set("n", "<leader>hs", gitsings.stage_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hr", gitsings.reset_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hp", gitsings.preview_hunk,
					{ buffer = bufnr })
				vim.keymap.set("n", "<leader>hb",
					function() gitsings.blame_line({ full = true }) end, { buffer = bufnr })
			end
		})
	end
}
