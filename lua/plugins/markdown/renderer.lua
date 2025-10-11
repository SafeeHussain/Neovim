-- Markdown Rendering for in file viewing of the terminal


return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
	config = function()

		require("render-markdown").setup({
			enabled = true,
			file_types = { "markdown" },
			latex = {
				enabled = true,
			},
		})
	end,
}
