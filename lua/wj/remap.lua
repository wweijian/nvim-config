vim.g.mapleader = " "
vim.o.timeoutlen = 300

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set({'n', 'v'}, 'j', 'k')
vim.keymap.set({'n', 'v'}, 'k', 'j')

vim.keymap.set('n', '<A-Up>',   ':m .-2<CR>==', { silent = true })
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('v', '<A-Up>',   ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { silent = true })

vim.keymap.set('n', '<A-j>',   ':m .-2<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>',   ':m .+1<CR>==', { silent = true })
vim.keymap.set('v', '<A-j>',   ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>',   ":m '>+1<CR>gv=gv", { silent = true })
