return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  init = function()
    require("harpoon"):setup()
  end,
  keys = {
    {
      "<leader>ha",
      function()
        require("harpoon"):list():append()
      end,
      desc = "[h]arpoon [a]dd to list",
    },
    {
      "<leader>hs",
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
      desc = "[h]arpoon [s]elect",
    },
    {
      "<leader>hh",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "[h]arpoon [h] (first item)",
    },
    {
      "<leader>hj",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "[h]arpoon [j] (second item)",
    },
    {
      "<leader>hk",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "[h]arpoon [k] (third item)",
    },
    {
      "<leader>hl",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "[h]arpoon [l] (fourth item)",
    },
  },
}
