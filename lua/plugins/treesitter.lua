return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {
        "lua", "python", "cpp", "markdown", "markdown_inline",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = {"markdown"},
      },
      indent = {
        enable = true
      },
    })
  end
}
 
