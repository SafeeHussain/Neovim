-- Configuring debugpy in a seperate lua file

return {
  "mfussenegger/nvim-dap-python",
  config = function()
    require("dap-python").setup(vim.fn.expand("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"))
  end,
}
