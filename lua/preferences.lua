-- set tabs to 2 and expand them to use spaces instead of \t
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- set leader to spacebar
vim.g.mapleader = " "

-- set colors to prefer dark
vim.g.background = "dark"

-- keep swapfiles but centralized
local swap_path = vim.fn.stdpath("state") .. "/swap/"
if vim.fn.isdirectory(swap_path) == 0 then
  vim.fn.mkdir(swap_path, "p")
end
vim.opt.directory = swap_path
vim.opt.swapfile = true

-- turns off search highlighting on command
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- move lines up & down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', {noremap = true, silent = true, desc = "move line down"})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', {noremap = true, silent = true, desc = "move line up"})

-- move visual blocks up & down
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true, desc = "move block down"})
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true, desc = "move block up"})

-- Splits
vim.keymap.set('n', '<leader>sv', '<C-w>v') -- vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- horizontally

-- Next/Prev buffer
vim.keymap.set('n', '<S-l>', ':bnext<CR>')
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')

-- Close buffer
vim.keymap.set("n", "<leader>q", ":bd<CR>", { silent = true })

-- Resize panes
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Clipboard Commands
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>d", '"+d', { desc = "Delete to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- turns on line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable persistent undo
local undo_path = vim.fn.stdpath("data") .. "/undodir/"
if vim.fn.isdirectory(undo_path) == 0 then
  vim.fn.mkdir(undo_path, "p")
end
vim.opt.undodir = undo_path
vim.opt.undofile = true
