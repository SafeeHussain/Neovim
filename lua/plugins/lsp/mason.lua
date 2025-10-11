-- Contains files for the LSP
-- an LSP is for dictionary and syntax searching
--
-- LSP: dictionary for syntax searching
-- Linter: gives flags for any errors, warning and vunerabilities
-- Formatter: formats the code to be in a neat format

return {

	-- MASON
	-- * manager for external tools (LSPs, Linters, debuggers)
	-- * auto-install external tools
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
				ensure_installed = {

					-- lua config
					"lua_ls",

					-- c++ config
					"clangd",

					-- python config
					"pyright", -- LSP for python
					"ruff", -- Linter and formatter
					"taplo", -- LSP for toml (pyproject.toml files)
				},
			})
		end,
	},

    -- lsp-config
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

            -- topl
            vim.lsp.config.taplo = {
                capabilities = capabilities,
            }
            vim.lsp.enable("taplo")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},

}
