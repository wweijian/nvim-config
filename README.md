# Neovim Config

Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

## Plugins

| Plugin | Purpose |
|--------|---------|
| [harpoon2](https://github.com/ThePrimeagen/harpoon) | Quick file bookmarking and navigation |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, grep, buffers, and help |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/linter/formatter installer |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridges mason and lspconfig |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress notifications |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Displays available keybindings as you type |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting (clang-format, prettier, ruff, rustfmt, gofmt) |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Async linting (clangtidy, eslint_d, ruff, golangci-lint, markdownlint) |
| [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim) | AI-powered code completion |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and code parsing |

## Remaps

Leader key is `Space`.

### Motion

| Key | Action |
|-----|--------|
| `j` | Move cursor up (swapped with k) |
| `k` | Move cursor down (swapped with j) |

### Line movement

| Key | Action |
|-----|--------|
| `Alt + j` / `Alt + Up` | Move line up |
| `Alt + k` / `Alt + Down` | Move line down |

### General

| Key | Action |
|-----|--------|
| `Esc` | Clear search highlight |

### Harpoon

| Key | Action |
|-----|--------|
| `Space + a` | Add file to harpoon list |
| `Ctrl + h` | Toggle harpoon quick menu |
| `Ctrl + 1-4` | Jump to harpoon slot 1–4 |

### Telescope

| Key | Action |
|-----|--------|
| `Space + ff` | Find files |
| `Space + fg` | Live grep |
| `Space + fb` | Buffers |
| `Space + fh` | Help tags |

### LSP

| Key | Action |
|-----|--------|
| `Space + rn` | Rename symbol |
| `Space + td` | Toggle diagnostics |

### Formatting & Linting

| Key | Action |
|-----|--------|
| `Space + tf` | Format buffer |
| `Space + tl` | Toggle linting |

### Which-key

| Key | Action |
|-----|--------|
| `Space + ?` | Show buffer-local keymaps |
