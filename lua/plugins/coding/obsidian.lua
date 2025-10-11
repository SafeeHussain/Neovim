-- Gives the customisability of obsidian in neovim
-- Allows linking to other notes, and helps with notis and whatnot

return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()


		require("obsidian").setup({
			workspaces = {
				{
					name = "personal",
					path = "~/Documents/vaults/personal",
				},
				{
					name = "work",
					path = "~/Documents/vaults/work",
				},

			},
			conceal = {
				enabled = false,
			},
			indent = {
				enabled = false,
				per_level = 1,
				skip_level = 1,
			},
			ui = {
				enable = false,
			},
		})
	end,
}
