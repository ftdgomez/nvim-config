return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local x = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', x.find_files, {})
      vim.keymap.set('n', '<leader>pf', x.find_files, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local t = require("telescope")
      t.setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      t.load_extension("ui-select")
    end
  },
}
