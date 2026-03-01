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

-- Add mdx as a valid filetype
vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})
vim.treesitter.language.register("markdown", "mdx")
vim.treesitter.language.register("markdown", "vimwiki")

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
vim.opt.conceallevel = 1

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
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false

-- UFO Fold settings
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldinner: ,foldclose:"

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

-- Yank Highlighting
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
