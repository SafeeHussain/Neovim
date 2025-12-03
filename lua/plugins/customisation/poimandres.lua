-- Poimandres colour scheme

return {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('poimandres').setup({
            -- leave empty for defaults, or customize:
            bold_vert_split = true,
            dim_nc_background = true,
            disable_background = true,
            disable_float_background = true,
            disable_italics = false,
        })
    end,
    init = function()
        vim.cmd("colorscheme poimandres")
        vim.opt.fillchars = { eob = " " }
    end,
}
