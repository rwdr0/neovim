return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- override hover keymap
        ["*"] = { keys = { { "K", false } } },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "fredrikaverpil/neotest-golang",
      "marilari88/neotest-vitest",
    },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-golang"))
      table.insert(opts.adapters, require("neotest-vitest"))
    end,
  },
}
