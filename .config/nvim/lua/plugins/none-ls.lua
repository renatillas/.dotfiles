return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.ocamlformat,
        nls.builtins.formatting.markdownlint,
        nls.builtins.formatting.black,
        nls.builtins.diagnostics.flake8,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "ocamlformat")
      table.insert(opts.ensure_installed, "mdformat")
      table.insert(opts.ensure_installed, "markdownlint")
      table.insert(opts.ensure_installed, "pyright")
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "flake8")
    end,
  },
}
