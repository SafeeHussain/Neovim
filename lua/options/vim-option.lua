-- Indentation for the code
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.smartindent=true
vim.opt.autoindent=true

----


-- Command that changes the clipboard to be able to be copied from neovim code to
-- ~chatgpt~ other text editors
vim.opt.clipboard = "unnamedplus"

-- Shows number of lines at where the code is at
vim.opt.number = true
vim.opt.relativenumber = false
-- Above command is to ensure all copied code can be pasted elsewhere
-- Do "+y" to copy the code and then ctrl+v to paste


-- sets the concealment levels
-- Used for making the markdown to look more neat
vim.opt.conceallevel = 1
vim.opt.concealcursor = "nc"

-- Compiler for latex files

-- Function to save, compile, view, and return to insert mode
local function latex_quick_compile()
    vim.cmd('write')  -- Save the file (:w)
    vim.cmd('normal \\ll')  -- Toggle compilation
    vim.cmd('normal \\lv')  -- Open viewer
    vim.cmd('startinsert')  -- Return to insert mode (i)
end

-- Map to Alt+Enter (or choose your preferred key)
vim.keymap.set('i', '<C-CR>', latex_quick_compile, { noremap = true})



-- filerunner that reads the file defined in runfile.lua

vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua runfile.run_current_file()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<C-M-n>", -- Ctrl + Alt + n
	"<cmd>lua require('user.runfile').run_current_file()<CR>",
	{ noremap = true, silent = true }
)

