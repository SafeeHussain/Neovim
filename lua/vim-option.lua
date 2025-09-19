vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.cmd("set autoindent")

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = false

-- Above command is to ensure all copied code can be pasted elsewhere
-- Do "+y" to copy the code and then ctrl+v to paste
