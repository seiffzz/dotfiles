return {
	"echasnovski/mini.statusline",
	version = "*",
	config = function()
		local MiniStatusline = require("mini.statusline")

		local content = function()
			local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
			local git = MiniStatusline.section_git({ trunc_width = 40 })
			local filename = MiniStatusline.section_filename({ trunc_width = 140 })
			local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
			local location = MiniStatusline.section_location({ trunc_width = 75 })
			local search = MiniStatusline.section_searchcount({ trunc_width = 75 })

			return MiniStatusline.combine_groups({
				{ hl = mode_hl,                  strings = { mode } },
				{ hl = "MiniStatuslineDevinfos", strings = { git } },
				"%<", -- Mark general truncate point
				{ hl = "MiniStatuslineFilename", strings = { filename } },
				"%=", -- End left alignment
				{ hl = "MiniStatuslineFileinfo", strings = { fileinfo } },
				{ hl = mode_hl,                  strings = { search, location } },
			})
		end

		require("mini.statusline").setup({
			content = {
				active = content,
			},
		})
	end,
}
