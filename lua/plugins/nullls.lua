return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local d = null_ls.builtins.diagnostics
    local f = null_ls.builtins.formatting
    local c = null_ls.builtins.completion

    null_ls.setup({
      sources = {
        -- lua
        f.stylua,

        -- python
        f.black,
        f.isort,

        -- js
        f.prettier,
        d.eslint_d,

        -- misc
        c.spell,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
