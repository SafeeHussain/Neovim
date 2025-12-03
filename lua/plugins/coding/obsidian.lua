
return {
  "epwalsh/obsidian.nvim",
  version = "*",
  ft = "markdown",
  enabled = false,
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    require("obsidian").setup({
      workspaces = {
        { name = "personal", path = "~/Documents/vaults/personal" },
        { name = "work",     path = "~/Documents/vaults/work"     },
      },

      ui = { enable = false },  -- as you already had

      -- HARD DISABLE extra features that touch the buffer
      backlinks = { -- in older versions this may be under 'templates' or similar; disable if present
        -- if you see any `in_buffer` / `show_in_document` / similar, set to false
      },
      note_id_func = function(title) return title end,  -- keep simple logic

      completion = { nvim_cmp = false },  -- turn off its completion hooks
    })
  end,
}

