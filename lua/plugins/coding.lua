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
    dependencies = { "marilari88/neotest-vitest" },
    -- neotest-golang is already added by the lang.go extra
    opts = { adapters = { ["neotest-vitest"] = {} } },
  },
}
