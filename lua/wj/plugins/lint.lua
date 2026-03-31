return {
    "mfussenegger/nvim-lint",
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            c          = { "clangtidy" },
            cpp        = { "clangtidy" },
            python     = { "ruff" },
            typescript = { "eslint_d" },
            javascript = { "eslint_d" },
            go         = { "golangcilint" },
            markdown   = { "markdownlint" },
        }

        vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
            callback = function()
                if lint_enabled then
                    lint.try_lint()
                end
            end,
        })

        local lint_enabled = true
        vim.keymap.set("n", "<leader>tl", function()
            lint_enabled = not lint_enabled
            if lint_enabled then
                lint.try_lint()
                vim.notify("linting on")
            else
                vim.diagnostic.reset()
                vim.notify("linting off")
            end
        end, { desc = "Toggle linting" })
    end,
}
