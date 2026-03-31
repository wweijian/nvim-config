return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                c          = { "clang_format" },
                cpp        = { "clang_format" },
                python     = { "ruff_format" },
                typescript = { "prettier" },
                javascript = { "prettier" },
                rust       = { "rustfmt" },
                go         = { "gofmt" },
                markdown   = { "prettier" },
                julia      = { "julia_formatter" },
            },
            format_on_save = {
                timeout_ms = 500,
                -- this tells conform to use itself, not the LSP, for formatting
                lsp_format = "fallback",
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>tf", function()
            conform.format({ async = true })
        end, { desc = "Format buffer" })
    end,
}
