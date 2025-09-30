-- Indentation for the code
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smartindent")
vim.cmd("set autoindent")

----


-- Command that changes the clipboard to be able to be copied from neovim code to
-- ~chatgpt~ other text editors
vim.opt.clipboard = "unnamedplus"

-- Shows number of lines at where the code is at
vim.opt.number = true
vim.opt.relativenumber = false

-- Above command is to ensure all copied code can be pasted elsewhere
-- Do "+y" to copy the code and then ctrl+v to paste
