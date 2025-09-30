-- Markdown Rendering for in file viewing of the terminal

return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  config = function()
    require("render-markdown").setup({
      enabled = true,
      file_types = {"markdown"},
      latex = {
        enabled = true,
      },
        win_options = {
          conceallevel = {
            default = vim.api.nvim_get_option_value("conceallevel", {}),
            rendered = 2, -- Important for concealment of math in markdown buffers
          },
        },
    })
  end,
}
