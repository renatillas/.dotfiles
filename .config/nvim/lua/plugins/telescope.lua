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
      { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "[b]uffers" },
      { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "workspace [d]iagnostics" },
      { "<leader>sD", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "[D]ocument diagnostics" },
      { "<leader>sf", Util.telescope("files"), desc = "[f]iles" },
      { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "[g]rep" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "[h]elp" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "[k]eymaps" },
      { "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "[m]an pages" },
      { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "[r]esume telescope search" },
      { "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "current [w]ord" },
    }
  end,
}
