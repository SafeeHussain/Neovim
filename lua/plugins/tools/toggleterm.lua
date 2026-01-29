-- toggleterm
-- toggle multiple terminals during session
--

return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	version = "*",

	config = function()
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		vim.keymap.set("t", "<C-0>", [[<C-\><C-n><C-w>k]], opts)
		vim.keymap.set("n", "<C-0>", [[<C-w>j]], opts)

		require("toggleterm").setup({
			size = 15,
			open_mapping = "<c-/>",
		})
	end,

	-- config = function()
	--	local opts = { buffer = 0 }
	--	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	-- end,
}
