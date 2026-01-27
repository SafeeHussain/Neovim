-- toggleterm
-- toggle multiple terminals during session
--

return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	version = "*",

	config = function()
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		require("toggleterm").setup({
			size = 15,
			open_mapping = "<c-s>",
		})
	end,

	-- config = function()
	--	local opts = { buffer = 0 }
	--	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	-- end,
}
