-- maps are automatically loaded on the VeryLazy event
-- Default maps that are always: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional maps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Move between splits
-- map("n", "<C-h>", "<C-w>h")
-- map("n", "<C-j>", "<C-w>j")
-- map("n", "<C-k>", "<C-w>k")
-- map("n", "<C-l>", "<C-w>l")

-- Move lines
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")
map("n", "J", ":m .+1<CR>==")

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Save
map("n", "<C-s>", ":w<CR>")
