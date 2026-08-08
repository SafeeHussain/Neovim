return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    local ts = require("nvim-treesitter")

    local parsers = {
      "lua",
      "python",
      "cpp",
      "markdown",
      "markdown_inline",
      "bash",
      "latex",
      "html",
      "yaml",
    }

    ts.setup({})

    -- Install missing parsers asynchronously.
    vim.defer_fn(function()
      ts.install(parsers)
    end, 0)

    -- Enable Tree-sitter highlighting for supported filetypes.
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "lua",
        "python",
        "cpp",
        "markdown",
        "bash",
        "tex",
        "html",
        "yaml",
      },
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })

    -- Enable Tree-sitter indentation except for Markdown.
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "lua",
        "python",
        "cpp",
        "bash",
        "tex",
        "html",
        "yaml",
      },
      callback = function()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
