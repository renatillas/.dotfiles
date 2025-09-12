-- tailwind-tools.lua
return {
  "highjeans/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  opts = {
    server = {
      settings = {
        includeLanguages = {
          gleam = "html",
        },
        classFunctions = {
          "class",
        },
        experimental = {
          classRegex = {
            'attribute\\.class\\("([^"]+)"\\)',
            'class\\("([^"]+)"\\)',
          },
        },
      },
      filetypes = { "gleam" },
    },
  },
}
