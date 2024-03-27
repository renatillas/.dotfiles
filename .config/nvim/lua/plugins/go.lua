return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofumpt", "golines", "gomodifytags" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.code_actions.gomodifytags,
        nls.builtins.code_actions.impl,
        nls.builtins.diagnostics.golangci_lint,
        nls.builtins.diagnostics.semgrep,
        nls.builtins.diagnostics.staticcheck,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "goimports")
      table.insert(opts.ensure_installed, "gofumpt")
      table.insert(opts.ensure_installed, "golines")
      table.insert(opts.ensure_installed, "gomodifytags")
      table.insert(opts.ensure_installed, "golangci-lint")
      table.insert(opts.ensure_installed, "impl")
      table.insert(opts.ensure_installed, "semgrep")
      table.insert(opts.ensure_installed, "staticcheck")
    end,
  },
}
