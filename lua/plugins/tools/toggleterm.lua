-- toggleterm
-- toggle multiple terminals during session
--

return {
	"akinsho/toggleterm.nvim",
	version = "*",

	config = function()
		require("toggleterm").setup({
			direction = "horizontal",
			size = 15,
		})

		vim.keymap.set("n", "<C-esc>", ":ToggleTermToggleAll!<CR>", {})

		-- Define global function to set terminal mappings
		_G.set_terminal_keymaps = function()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[exit<CR>]], opts) -- exit terminal mode
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
		end

		-- Set autocommand to execute the function whenever a terminal opens
		vim.cmd([[
      autocmd! TermOpen term://* lua set_terminal_keymaps()
    ]])
	end,
}
