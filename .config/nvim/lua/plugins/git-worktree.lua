local Util = require("lazyvim.util")
return {
  {
    "kdheepak/lazygit.nvim",
    enabled = false,
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "theprimeagen/git-worktree.nvim",
    config = function()
      Util.on_load("telescope.nvim", function()
        require("telescope").load_extension("git_worktree")
      end)
    end,
    keys = {
      {
        "<leader>gs",
        "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
        desc = "[g]it [s]elect worktree",
      },
      {
        "<leader>gc",
        "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
        desc = "[git] [c]reate a worktree",
      },
    },
  },
}
