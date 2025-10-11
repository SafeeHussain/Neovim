-- Initialising the file script to be used
-- Lukas' code that he recommends for me to have
--  cd's you into whatever the nvim argument was
do
	if vim.fn.argc() > 0 then
		local a0 = vim.fn.fnamemodify(vim.fn.argv(0), ":p") -- absolute path
		if vim.fn.isdirectory(a0) == 1 then
			pcall(vim.loop.chdir, a0)
			vim.cmd("cd " .. vim.fn.fnameescape(a0))
		elseif vim.fn.filereadable(a0) == 1 then
			local dir = vim.fn.fnamemodify(a0, ":h")
			pcall(vim.loop.chdir, dir)
			vim.cmd("cd " .. vim.fn.fnameescape(dir))
		end
	end
end

-- lazypath, installs lazyvim
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




-- core settings
require("options.vim-option")
require("options.keymaps")
require("lazy").setup("plugins", {
	change_detection = {
		notify = false,
	},
})


