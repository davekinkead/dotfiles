vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set("n", "<A-down>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-up>", ":m .-2<CR>==")

vim.keymap.set("i", "<C-Left>", "<C-o>0")
vim.keymap.set("i", "<C-Right>", "<C-o>$")
vim.keymap.set("i", "<C-Up>", "<C-o>gg")
vim.keymap.set("i", "<C-Down>", "<C-o>G")

vim.wo.number = true
