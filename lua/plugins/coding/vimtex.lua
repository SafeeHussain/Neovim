return {
	{
		"lervag/vimtex",
		ft = "tex",
		init = function()
            vim.g.vimtex_enabled = 1
			vim.g.vimtex_view_method = "zathura"

			vim.g.vimtex_view_use_temp_files = 0
			vim.g.vimtex_quickfix_open_on_warning = 0
			vim.g.vimtex_quickfix_enabled = 1
			vim.g.vimtex_quickfix_mode = 0
			vim.g.vimtex_view_automatic = 1
			vim.g.vimtex_compiler_latexmk = {
				backend = "biber",
				executable = "latexmk",
				continuous = 0,
				options = {
					"-interaction=nonstopmode",
					"-synctex=1",
					"-file-line-error",
					"-shell-escape",
					"-view=none",
				},
			}
			vim.g.vimtex_complete_enabled = 1
			vim.g.vimtex_complete_close_braces = 1
			vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_compiler_latexmk_engines = { _ = "-xelatex" }
			vim.g.vimtex_bibliography_autoload = { filenames = { "**/bibliography/*.bib" } }
        end,
		config = function()
		
-- 			vim.api.nvim_create_autocmd("FileType", {
--   pattern = "tex",
--   callback = function()
--     -- Compilation
--     vim.keymap.set('n', '<leader>ll', '<cmd>VimtexCompile<CR>', { desc = 'Start/stop compilation' })
--     vim.keymap.set('n', '<leader>lv', '<cmd>VimtexView<CR>', { desc = 'View PDF' })
--     vim.keymap.set('n', '<leader>lc', '<cmd>VimtexClean<CR>', { desc = 'Clean auxiliary files' })
--     vim.keymap.set('n', '<leader>lC', '<cmd>VimtexClean!<CR>', { desc = 'Clean all files' })
--
--     -- Navigation
--     vim.keymap.set('n', '<leader>lt', '<cmd>VimtexTocToggle<CR>', { desc = 'Toggle TOC' })
--     vim.keymap.set('n', '<leader>lq', '<cmd>VimtexLog<CR>', { desc = 'View compilation log' })
--     vim.keymap.set('n', '<leader>ls', '<cmd>VimtexStatus<CR>', { desc = 'Show status' })
--     vim.keymap.set('n', '<leader>lg', '<cmd>VimtexStatus!<CR>', { desc = 'Show detailed status' })
--
--     -- Text objects and motions (examples)
--     -- These are built into VimTeX, just documenting them here
--     -- dse - delete surrounding environment
--     -- dsc - delete surrounding command
--     -- cse - change surrounding environment
--     -- csc - change surrounding command
--     -- ]] and [[ - move between sections
--     -- ]m and [m - move between environments
--   end,
-- })		end,
        end 
    }
}
