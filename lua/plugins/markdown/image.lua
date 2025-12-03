-- Setting the image setter.

return {
	"3rd/image.nvim",
	opts = {
		backend = "kitty",
		processor = "magick_cli",
		integrations = {
			markdown = {
				enabled = true,
				clear_in_insert_mode = false,
				only_render_image_at_cursor = false,
				download_remote_images = true,
				filetypes = { "markdown", "vimwiki" },
			},
		},
		editor_only_render_when_focused = false,
		tmux_show_only_in_active_window = false,

		-- Add this for toggle keymap
		keymaps = {
			toggle = "<leader>ti", -- toggle all images
		},
	},
}
