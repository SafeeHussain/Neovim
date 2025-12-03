return {
	"Thiago4532/mdmath.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},

	config = function()
        local MdMath = require("mdmath")
		local enabled = false
		-- tracks status
		function ToggleMdMath()
			if enabled then
				MdMath.disable()
				enabled = false
			else
				MdMath.enable()
				enabled = true
			end
		end

	end,

	-- The build is already done by default in lazy.nvim, so you don't need
	-- the next line, but you can use the command `:MdMath build` to rebuild
	-- if the build fails for some reason.
	-- build = ':MdMath build'
}
