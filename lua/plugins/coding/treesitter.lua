-- DO NOT USE LATEX, IT WAS A PAIN
-- JUST USE MdMath.nvim AND INSTALL ITS DEPENDENCIES INSTEAD

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = {
				"lua",
				"python",
				"cpp",
				"markdown",
				"markdown_inline",
				"bash",
                "latex",
            },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
			indent = {
				enable = true,
				disable = { "markdown" },
			},
		})
	end,
}
