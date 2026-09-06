-- Zenbones colour scheme

return {
	"zenbones-theme/zenbones.nvim",
	dependencies = "rktjmp/lush.nvim",
	lazy = false,
	priority = 1000,

	-- you can set set configuration options here
	config = function()
		vim.g.zenbones_darken_comments = 15
		vim.g.zenbones_transparent_background = true
		vim.g.nordbones = { darkness = "stark", darken_comments = 15 }
		vim.cmd.colorscheme("rosebones")
		vim.cmd("set termguicolors")
		vim.cmd("set background=dark")

		local lush = require("lush")
		local hl = lush(function()
			return {
				Normal({ fg = "#fdfdfd", bg = "#000000" }),
				-- Comment({ fg = "#6a7d8f" }), -- example: change comment colour
				-- Function({ fg = "#d3869b", gui = "bold" }),
				-- Identifier({ fg = "#8ec07c" }),
				-- Statement({ fg = "#ff7b72" }),
				-- Type({ fg = "#79c0ff" }),
				-- Constant({ fg = "#ff9d6a" }),
				-- String({ fg = "#a5d6ff" }),
				-- Special({ fg = "#d2a8ff" }),
				--
				-- -- UI / Neovim groups
				-- Normal({ fg = "#c9d1d9", bg = "NONE" }),
				-- CursorLine({ bg = "#2f3640" }),
				-- Visual({ bg = "#3a4452" }),
				-- Search({ fg = "#000000", bg = "#e6c87a" }),
			}
		end)

		lush.apply(hl)

		-- Overriding the whichkey
		vim.api.nvim_set_hl(0, "WhichKeyNormal", {
			fg = "#fdfdfd",
			bg = "#000000",
		})
	end,
}
