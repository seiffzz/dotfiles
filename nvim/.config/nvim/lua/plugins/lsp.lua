return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
		},
		config = function()
			local servers = { "lua_ls", "ts_ls" }
			local capabilities = require('blink.cmp').get_lsp_capabilities()

			-- Setting up mason
			require("mason").setup {
				ui = {
					border = "rounded"
				}
			}

			-- Setting up mason-lspconfig
			require("mason-lspconfig").setup {
				ensure_installed = servers,
				automatic_installation = false,
			}

			-- Setting up lspconfig
			for _, value in pairs(servers) do
				require("lspconfig")[value].setup { capabilities = capabilities }
			end
		end
	}
}
