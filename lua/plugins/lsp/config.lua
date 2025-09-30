-- Contains files for the LSP
-- an LSP is for dictionary and syntax searching

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- lua
			vim.lsp.config.lua_ls = {
				capabilities = capabilities,
			}
			vim.lsp.enable("lua_ls")

			-- c++
			vim.lsp.config.clangd = {
				capabilities = capabilities,
			}
			vim.lsp.enable("clangd")

			-- python
			vim.lsp.config.pyright = {
				capabilities = capabilities,
			}
			vim.lsp.enable("pyright")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
