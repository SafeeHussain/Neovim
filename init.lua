-- Initialising the file script to be used

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-option")
require("lazy").setup("plugins")


-- This list contains all of the custom commands
-- <C-#> will be Ctrl + #
-- <leaderL# will be Space + #
-- <CR> means Enter


