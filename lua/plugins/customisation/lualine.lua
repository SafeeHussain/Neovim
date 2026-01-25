-- Gives the colours for the bottom line, this will be for 
-- INSERT
-- NORMAL
-- VISUAL
-- REPLACE
-- COMMAND
-- etc

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {'nvim-tree/nvim-web-devicons'},
  config = function()
    require('lualine').setup({
      options = {
        theme = 'horizon'
      }
    })
  end
}
