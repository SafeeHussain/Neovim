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

-- Commented out code: this is for the case of using the tree-sitter for latex
--  - Treesitter is a parser generator tool and an incremental parsing library
--  - Build a syntax tree for a source file and update syntax tree as the file is edited
--  - A parser is a program that takes input and breaks downt the code into readable machine code
--
-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--parser_config.zimbu = {
--	install_info = {
--		url = "~/projects/tree-sitter-latex-master", -- local path or git repo
--		files = { "src/parser.c", "src/scanner.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
--		-- optional entries:
--		branch = "main", -- default branch in case of git repo if different from master
--	generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--		requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--	},
	-- filetype = "zu", -- if filetype does not match the parser name
--}

-- This list contains all of the custom commands
-- <C-#> will be Ctrl + #
-- <leaderL# will be Space + #
-- <CR> means Enter
