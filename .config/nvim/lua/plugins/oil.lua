return {
  "stevearc/oil.nvim",
  opts = {
    view_options = {
      show_hidden = true,
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    { "_", "<cmd>Oil --float<cr>", desc = "Open parent directory" },
  },
}
