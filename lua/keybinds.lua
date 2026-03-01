-- Search & Highlight
vim.keymap.set("n", "<esc>", ":nohlsearch<CR>", { silent = true, desc = "Clear search Highlight" })
vim.keymap.set("n", "<C-a>", "gg0vG$") -- Select all text

-- <Esc> key alternative keymap for easier access
-- Swapped Escape and Capslock with niri config, no longer need this :)
-- vim.keymap.set("i", "jk", "<Esc>", { silent = true, noremap = false })
-- NOTE: use QMK to get tap-hold : esc-ctrl on capslock (alternative)

-- Disable the command-line window (q:)
vim.keymap.set("n", "q:", "<nop>", { desc = "Disable command-line window" })

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
vim.keymap.set("n", "<leader>W", ":bd!<CR>", { silent = true, desc = "Wipe buffer --forcefully" })

-- Move Lines & Visual Blocks

-- Move lines up & down in normal mode
vim.keymap.set("n", "<A-J>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set("n", "<A-K>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Move line up" })

-- Move visual blocks
vim.keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move block down" })
vim.keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move block up" })
vim.keymap.set("v", "<A-L>", ">gv", { noremap = true, silent = true, desc = "Move block left" })
vim.keymap.set("v", "<A-H>", "<gv", { noremap = true, silent = true, desc = "Move block right" })

-- Toggle Harper Spell Checker
vim.keymap.set("n", "<leader>th", function()
  local is_enabled = vim.lsp.is_enabled("harper_ls")

  vim.lsp.enable("harper_ls", not is_enabled)

  print("Harper-LS: " .. (not is_enabled and "ON" or "OFF"))
end, { desc = "Toggle Harper LS" })
