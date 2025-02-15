return {
  {
    "rachartier/tiny-glimmer.nvim",
    event = "UiEnter",
    opts = {
      overwite = {
        auto_map = false,
      },
      animations = {
        fade = {
          from_color = "IncSearch",
          to_color = "Normal"
        }
      }
    }
  },
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 9999,
    config = function()
      local lackluster = require("lackluster")
      local color = lackluster.color

      -- custom lackluster variant. currently a combination of lackluster-hack and lackluster-mint.
      lackluster.setup({
        tweak_syntax = {
          -- keyword_return = color.green,
          keyword_exception = color.blue,
          type = color.green,
          type_primitive = color.green,
          func_param = color.gray7,
          comment = "#474747",
        },
        tweak_highlight = {
          ["Operator"] = {
            overwrite = false,
            fg = "#1bfd9c",
            bold = true,
          },
          ["@operator"] = {
            overwrite = true,
            link = "Operator"
          },
          ["IncSearch"] = { overwrite = true, fg = color.black, bg = "#1bfd9c" },
          ["Search"] = { overwrite = true, fg = "#1bfd9c", bold = true },
          ["PmenuSel"] = { overwrite = true, fg = color.black, bg = "#1bfd9c", bold = true },
        },
        disable_plugin = {},
      })
      vim.cmd [[colorscheme lackluster]]
    end
  },
  {
    "rebelot/heirline.nvim",
    event = "UiEnter",
    config = function()
      require('heirline').setup({
        statusline = require('skybox.heirline.statusline'),
        statuscolumn = require('skybox.heirline.statuscolumn')
      })
    end
  }
}
