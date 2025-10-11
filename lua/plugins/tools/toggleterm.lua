return {
	"akinsho/toggleterm.nvim",
	version = "*",

	opts = {
		direction = "horizontal",
		size = 15,
		on_open = function()
			vim.cmd("Neotree reveal")
		end,
	},

	config = function(_, opts)
		require("toggleterm").setup(opts)
		vim.api.nvim_set_keymap("n", "<leader>th", ":ToggleTerm<CR>", { noremap = true, silent = true })

		-- Define global function to set terminal mappings
		_G.set_terminal_keymaps = function()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\\><C-n>]], opts) -- exit terminal mode
			vim.keymap.set("t", "jk", [[<C-\\><C-n>]], opts) -- alternative exit
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
