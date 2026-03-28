-- Indentation for the code
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.smartindent=true
vim.opt.autoindent=true

----
-- Disables checks for ruby and perl
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0


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
vim.opt.conceallevel = 2
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


