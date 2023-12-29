return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    { "_", "<cmd>Oil --float<cr>", desc = "Open parent directory" },
  },
  view_options = {
    show_hidden = true,
  },
  delete_to_trash = true,
}
