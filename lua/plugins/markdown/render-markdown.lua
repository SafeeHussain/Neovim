-- Markdown Rendering for in file viewing of the terminal

return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
    opts = {},

    config = function()
        require("render-markdown").setup({

            checkbox = {
                enabled = true,
                render_modes = false,
                bullet = false,
                left_pad = 0,
                right_pad = 1,

                unchecked = {
                    icon = "󰄱 ",
                    highlight = "RenderMarkdownUnchecked",
                    scope_highlight = nil,

                    vim.api.nvim_set_hl(0, "RenderMarkdownUnchecked", { fg = "#7c96cb" }),
                },
                checked = {
                    icon = "󰱒 ",
                    highlight = "RenderMarkdownChecked",
                    scope_highlight = nil,

                    vim.api.nvim_set_hl(0, "RenderMarkdownChecked", { fg = "#25b2bc" }),
                },
                custom = {
                    -- custom checkboxes
                    todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
                    star = { raw = "[~]", rendered = "󰓎 ", highlight = "RenderMarkdownStar", scope_highlight = nil },
                    warn = {
                        raw = "[!]",
                        rendered = "󰀪 ",
                        highlight = "RenderMarkdownWarning",
                        scope_highlight = nil,
                    },

                    -- custom checkboxes' colours
                    vim.api.nvim_set_hl(0, "RenderMarkdownTodo", { fg = "#97bc71" }),
                    vim.api.nvim_set_hl(0, "RenderMarkdownStar", { fg = "#ffc24b" }),
                    vim.api.nvim_set_hl(0, "RenderMarkdownWarning", { fg = "#f43753" }),
                },
                scope_priority = nil,
            },

            latex = {
                enabled = true,
                render_modes = false,
                converter = { "utftex", "latex2text" },
                highlight = "RenderMarkdownMath",
                position = "center",
                top_pad = 0,
                bottom_pad = 0,
            },

            heading = {
                enabled = true,
                render_modes = false,
                atx = true,
                setext = true,
                sign = false,
                icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
                position = "inline",
                signs = { "󰫎 " },
                width = "full",
                left_margin = 0,
                left_pad = 0,
                right_pad = 0,
                min_width = 0,
                border = false,
                border_virtual = false,
                border_prefix = false,
                above = "▄",
                below = "▀",
                backgrounds = {
                    "RenderMarkdownH1Bg",
                    "RenderMarkdownH2Bg",
                    "RenderMarkdownH3Bg",
                    "RenderMarkdownH4Bg",
                    "RenderMarkdownH5Bg",
                    "RenderMarkdownH6Bg",
                },
                foregrounds = {
                    "RenderMarkdownH1",
                    "RenderMarkdownH2",
                    "RenderMarkdownH3",
                    "RenderMarkdownH4",
                    "RenderMarkdownH5",
                    "RenderMarkdownH6",
                },
                custom = {},
            },
        })
    end,
}
