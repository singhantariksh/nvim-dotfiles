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

-- navigate vim panes
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- turns off search highlighting on command
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- move lines up & down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', {noremap = true, silent = true, desc = "move line down"})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', {noremap = true, silent = true, desc = "move line up"})

-- move visual blocks up & down
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true, desc = "move block down"})
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true, desc = "move block up"})

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
