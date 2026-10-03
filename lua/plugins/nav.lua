return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "nvim-mini/mini.files",
    opts = {
      -- Module mappings created only inside explorer.
      -- Use `''` (empty string) to not create one.
      mappings = {
        close = "q",
        go_in = "L",
        go_in_plus = "<Enter>",
        go_out = "H",
        go_out_plus = "<BS>",
        mark_goto = "'",
        mark_set = "m",
        reset = "",
        reveal_cwd = "@",
        show_help = "g?",
        synchronize = ":w",
        trim_left = "<",
        trim_right = ">",
      },
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 30,
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
      {
        "<leader>E",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader><leader>", false },
      { "<leader>o", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
  {
    "mrjones2014/smart-splits.nvim",
    -- stylua: ignore
    keys = {
      { "<C-h>", function() require("smart-splits").move_cursor_left() end, desc = "Go to Left Window" },
      { "<C-j>", function() require("smart-splits").move_cursor_down() end, desc = "Go to Lower Window" },
      { "<C-k>", function() require("smart-splits").move_cursor_up() end, desc = "Go to Upper Window" },
      { "<C-l>", function() require("smart-splits").move_cursor_right() end, desc = "Go to Right Window" },
      { "<A-h>", function() require("smart-splits").resize_left() end, desc = "Resize Window Left" },
      { "<A-j>", function() require("smart-splits").resize_down() end, desc = "Resize Window Down" },
      { "<A-k>", function() require("smart-splits").resize_up() end, desc = "Resize Window Up" },
      { "<A-l>", function() require("smart-splits").resize_right() end, desc = "Resize Window Right" },
    },
  },
  {
    "cbochs/portal.nvim",
    keys = {
      { "<leader>[", "<cmd>Portal jumplist backward<cr>", desc = "Portal Jumplist Backward" },
      { "<leader>]", "<cmd>Portal jumplist forward<cr>", desc = "Portal Jumplist Forward" },
    },
  },
}
