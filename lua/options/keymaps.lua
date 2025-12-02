-- leader key
vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- MOVEMENT KEYBINDS:

-- Unmapping all arrow keys while in normal mode
vim.cmd("nnoremap <Left> :echo 'h to go left'<CR>")
vim.cmd("nnoremap <Right> :echo 'l to go right'<CR>")
vim.cmd("nnoremap <Up> :echo 'k to go up'<CR>")
vim.cmd("nnoremap <Down> :echo 'j to go down'<CR>")
-- Unmapping all arrow keys while in insert mode
-- vim.cmd("inoremap <Left> <Nop>")
-- vim.cmd("inoremap <Right> <Nop>")
-- vim.cmd("inoremap <Up> <Nop>")
-- vim.cmd("inoremap <Down> <Nop>")
-- Converts Alt + hjkl to be the movement keys whilst in insert mode
keymap("i", "<A-k>", "<Up>", opts)
keymap("i", "<A-j>", "<Down>", opts)
keymap("i", "<A-h>", "<Left>", opts)
keymap("i", "<A-l>", "<Right>", opts)

-- PLUGIN KEYBINDS:

-- MdMath Keybind
vim.keymap.set("n", "<C-.>", ":lua ToggleMdMath()<CR>", { noremap = true, silent = true })
-- Neo-tree Keybind
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>", {})
-- Toggle-term opening terminal session
-- (Rest of terms can be found in the toggleterm.lua file)
vim.api.nvim_set_keymap(
			"n",
			"<leader>th",
			":Neotree filesystem reveal left toggle<CR> :ToggleTerm<CR> <Cmd>wincmd k<CR> :Neotree filesystem reveal left toggle<CR> <C-w>l<CR> <C-w>j",
			{ noremap = true, silent = true }
		)

-- lua/options/keymaps.lua

-- Other important keymap notes
-- Ctrl + f for full page down
-- Ctrl + b for full page up
-- Ctrl + d for half page down
-- Ctrl + u for half page up
-- $ for end of a line
-- ^ for first non-blank character of a line
