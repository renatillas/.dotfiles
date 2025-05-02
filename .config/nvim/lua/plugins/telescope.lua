local builtin = require("telescope.builtin")
return {
  "telescope.nvim",
  opts = {
    defaults = {
      path_display = {
        filename_first = { reverse_directories = true },
      },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob",
        "!{**/.git/*}",
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        find_command = {
          "rg",
          "--files",
          "--color=never",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob",
          "!{**/.git/*}",
        },
      },
    },
  },
  keys = function()
    return {
      { "<leader>sb", builtin.buffers, desc = "[b]uffers" },
      { "<leader>sd", builtin.diagnostics, desc = "workspace [d]iagnostics" },
      {
        "<leader>sf",
        function()
          builtin.find_files({ hidden = true })
        end,
        desc = "[f]iles",
      },
      { "<leader>sg", builtin.live_grep, desc = "[g]rep word" },
      { "<leader>sG", builtin.grep_string, desc = "[G]rep current word" },
      { "<leader>sh", builtin.help_tags, desc = "[h]elp" },
      { "<leader>sk", builtin.keymaps, desc = "[k]eymaps" },
      { "<leader>sm", builtin.man_pages, desc = "[m]an pages" },
      { "<leader>sr", builtin.resume, desc = "[r]esume telescope search" },
    }
  end,
}
