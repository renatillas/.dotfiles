return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        sourcery = function(_, opts)
          require("lspconfig").sourcery.setup({
            init_options = {
              token = "user_48GjfiVKD7Rn_TP2WOwvsI6vX2QiajizWr_zcQhwCrqs_aViWez8fdRef_c",
              extension_version = "vim.lsp",
              editor_version = "vim",
            },
          })
        end,
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black", "autoflake" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.black,
        nls.builtins.diagnostics.mypy,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "ruff")
      table.insert(opts.ensure_installed, "mypy")
      table.insert(opts.ensure_installed, "sourcery")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
        -- stylua: ignore
        keys = {
          { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
          { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
        },
      config = function()
        local path = require("mason-registry").get_package("debugpy"):get_install_path()
        require("dap-python").setup(path .. "/venv/bin/python")
      end,
    },
  },
}
