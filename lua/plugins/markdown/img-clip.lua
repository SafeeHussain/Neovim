-- Takes image and stores as local folder, then recalls in a .md file

return {
	"HakonHarnes/img-clip.nvim",
	event = "VeryLazy",
	opts = {
		default = {
			dir_path = ".", -- save in current directory first
			file_name = "img-%Y%m%d-%H%M%S",
			use_absolute_path = false,
		},
		filetypes = {
			markdown = {
				template = "![img]($FILE_PATH)", -- inserts Markdown link
			},
		},
	},
	keys = {
		{
			"<leader>p",
			function()
				require("img-clip").paste_image()
			end,
			desc = "Paste image from clipboard",
			mode = { "n", "i" },
		},
	},
}
