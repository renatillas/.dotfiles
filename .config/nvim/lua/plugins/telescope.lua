local Util = require("lazyvim.util")
return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    enabled = vim.fn.executable("make") == 1,
    build = "make",
    config = function()
      Util.on_load("telescope.nvim", function()
        require("telescope").load_extension("fzf")
      end)
    end,
  },
  keys = function()
    return {
      { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "[s]earch [b]uffers" },
      { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "[s]earch workspace [d]iagnostics" },
      { "<leader>sD", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "[s]earch [D]ocument diagnostics" },
      { "<leader>sf", Util.telescope("files"), desc = "[s]earch [f]iles" },
      { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "[s]earch by [g]rep" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "[s]earch [h]elp" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "[s]earch [k]eymaps" },
      { "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "[s]earch [m]an pages" },
      { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "[s]earch [r]esume" },
      { "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "[s]earch current [w]ord" },
    }
  end,
}
