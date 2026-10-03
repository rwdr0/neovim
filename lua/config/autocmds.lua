-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

autocmd("RecordingEnter", {
  callback = function()
    vim.notify("Macro recording started at register " .. vim.fn.reg_recording(), "info")
  end,
})

autocmd("RecordingLeave", {
  callback = function()
    vim.notify("Macro recorded into register " .. vim.fn.reg_recording(), "info")
  end,
})

-- Rebuild treesitter parsers left stale by an interrupted plugin update
-- (LazyVim's build hook is async, so a headless `Lazy! sync` can exit before it finishes)
vim.schedule(function()
  require("nvim-treesitter").update()
end)
