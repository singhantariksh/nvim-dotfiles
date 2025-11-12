vim.loader.enable()

-- Basic Settings

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tab & indentation
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.tabstop = 2 -- a tab is 2 spaces
vim.opt.softtabstop = 2 -- editing behaves like 2 spaces per tab
vim.opt.shiftwidth = 2 -- >> and << use 2 spaces
vim.opt.textwidth = 120 -- sets default text width for wrapping and formatting

-- Line wrapping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Revert Indentation width for markdown as well
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

-- Colors & UI
vim.g.background = "dark"
vim.opt.termguicolors = true -- enable truecolor support
vim.opt.showmode = false -- hide -- INSERT -- since statusline shows it
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Better search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Better completion experience
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.pumheight = 10

-- Disable comment wrapping and insertion of comment leaders when pressing Enter (Carriage Return)
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Enable Smart Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- Mouse
vim.opt.mouse = "a"

-- Clipboard sync with OS
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- Nerd Font
vim.g.have_nerd_font = true

-- Swap & Undo Files

-- Swap files (centralized)
local swap_path = vim.fn.stdpath("state") .. "/swap/"
if vim.fn.isdirectory(swap_path) == 0 then
  vim.fn.mkdir(swap_path, "p")
end
vim.opt.directory = swap_path
vim.opt.swapfile = true

-- Persistent undo
local undo_path = vim.fn.stdpath("data") .. "/undodir/"
if vim.fn.isdirectory(undo_path) == 0 then
  vim.fn.mkdir(undo_path, "p")
end
vim.opt.undodir = undo_path
vim.opt.undofile = true

-- Search & Highlight
vim.opt.hlsearch = true
vim.keymap.set("n", "<esc>", ":nohlsearch<CR>", { silent = true, desc = "Clear search Highlight" })

-- Yank Highlighting
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- <Esc> key alternative keymap for easier access
-- NOTE: use QMK to get tap-hold : esc-ctrl on capslock (alternative)
vim.keymap.set("i", "jk", "<Esc>", { silent = true, noremap = false })

-- Window & Pane Management

-- Move focus between panes
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize panes
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true, desc = "Horizontal Resize ++" })
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true, desc = "Horizontal Resize --" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true, desc = "Vertical Resize ++" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true, desc = "Vertical Resize --" })

-- Buffer & Tab Navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { silent = true, desc = "Next Buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { silent = true, desc = "Previous Buffer" })
-- vim.keymap.set("n", "<leader>w", ":bd<CR>", { silent = true, desc = "Wipe buffer" }) -- I use Snacks.nvim for this now !

-- Move Lines & Visual Blocks

-- Move lines up & down in normal mode
vim.keymap.set("n", "<A-J>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set("n", "<A-K>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Move line up" })

-- Move visual blocks
vim.keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move block down" })
vim.keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move block up" })
vim.keymap.set("v", "<A-L>", ">gv", { noremap = true, silent = true, desc = "Move block left" })
vim.keymap.set("v", "<A-H>", "<gv", { noremap = true, silent = true, desc = "Move block right" })
