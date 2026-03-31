return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "j-hui/fidget.nvim",
    },
    config = function()
        require("fidget").setup()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {},
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            },
        })

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

        -- toggle LSP diagnostics (red underlines, warnings, etc.)
        vim.keymap.set("n", "<leader>td", function()
            local current = vim.diagnostic.is_enabled()
            vim.diagnostic.enable(not current)
            vim.notify("diagnostics " .. (current and "off" or "on"))
        end, { desc = "Toggle diagnostics" })
    end,
}
