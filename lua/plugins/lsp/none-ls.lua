-- None-ls
-- update of null-ls, a deprecated version
-- null-ls is a bridge gap for general-purpose langauge servers


return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.ruff,
				null_ls.builtins.formatting.taplo,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.beautysh,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
