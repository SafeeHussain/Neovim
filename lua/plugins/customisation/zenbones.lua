-- Zenbones colour scheme

return {
	"zenbones-theme/zenbones.nvim",
	dependencies = "rktjmp/lush.nvim",
	lazy = false,
	priority = 1000,

	-- you can set set configuration options here
	config = function()
        vim.g.zenbones_darken_comments = 45
        vim.g.nordbones = {darkness = "stark", darken_comments = 35}
		vim.cmd.colorscheme("rosebones")
		vim.cmd("set termguicolors")
		vim.cmd("set background=dark")
	end,

}
