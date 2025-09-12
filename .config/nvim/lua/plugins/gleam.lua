return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gleam = {},
      },
      inline_hints = { enabled = true },
    },
  },
}
