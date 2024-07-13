local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
map("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
map({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
map({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- move text up and down
map("v", "J", ":m .+1<CR>==", opts)
map("v", "K", ":m .-2<CR>==", opts)
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
map("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
map("n", "<Esc>", "<Esc>:noh<CR>", opts)


-- call vscode commands from Neovim
map({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
map({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
map({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
map({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
map({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
map({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
map({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
map({"n", "v"}, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
map({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
map({"n", "v"}, "<leader>fm", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
