return {
	"3rd/image.nvim",
	build = false, -- don't build the Lua rock
	opts = {
		backend = "kitty", -- you use kitty
		processor = "magick_cli",
		integrations = {
			markdown = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = false,
				only_render_image_at_cursor = false,
			},
		},
	},
}
