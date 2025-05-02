return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        Lua = {
          library = {
            "${3rd}/love2d/library",
          },
        },
      },
    },
  },
}
