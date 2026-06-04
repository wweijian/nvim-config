return {
  {
    "stevearc/conform.nvim",
    keys = {
      {
        "<leader>tf",
        function()
          require("conform").format({ async = true })
        end,
        mode = { "n", "v" },
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        python = { "ruff_format" },
        typescript = { "prettier" },
        javascript = { "prettier" },
        rust = { "rustfmt" },
        go = { "gofmt" },
        markdown = { "prettier" },
        julia = { "julia_formatter" },
      },
      default_format_opts = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    keys = {
      { "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol" },
      {
        "<leader>td",
        function()
          local enabled = vim.diagnostic.is_enabled()
          vim.diagnostic.enable(not enabled)
          vim.notify("diagnostics " .. (enabled and "off" or "on"))
        end,
        desc = "Toggle diagnostics",
      },
    },
  },

  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>ff",
        function()
          Snacks.picker.files()
        end,
        desc = "Find files",
      },
      {
        "<leader>fg",
        function()
          Snacks.picker.grep()
        end,
        desc = "Live grep",
      },
      {
        "<leader>fb",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Buffers",
      },
      {
        "<leader>fh",
        function()
          Snacks.picker.help()
        end,
        desc = "Help tags",
      },
    },
  },

  {
    "folke/which-key.nvim",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer local keymaps",
      },
    },
  },
}
