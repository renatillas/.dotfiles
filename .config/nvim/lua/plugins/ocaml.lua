return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.ocamlformat,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "ocamlformat")
      table.insert(opts.ensure_installed, "ocaml-lsp")
      table.insert(opts.ensure_installed, "reason-language-server")
    end,
  },
}
