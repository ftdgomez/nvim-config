return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  lazy = false,
  priority = 1000,
  config = function()
    local t = require("tokyonight")
    t.setup({
      style = "moon"
    })
    vim.cmd.colorscheme "tokyonight"
  end
}
