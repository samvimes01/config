require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "ZZ", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

-- Move lines
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")
map("n", "J", ":m .+1<CR>==")

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Save
map("n", "<C-s>", ":w<CR>")

-- Tmux
map("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "TmuxNavigateLeft" })
map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "TmuxNavigateDown" })
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "TmuxNavigateUp" })
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "TmuxNavigateRight" })
map("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", { desc = "TmuxNavigatePrevious" })

map("n", "<leader>a", "<cmd>AerialToggle!<CR>")
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })

-- Trouble
-- map("n", "<leader>qx", "<cmd>TroubleToggle<CR>", { desc = "Open Trouble" })
-- map("n", "<leader>qw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { desc = "Open Workspace Trouble" })
-- map("n", "<leader>qd", "<cmd>TroubleToggle document_diagnostics<CR>", { desc = "Open Document Trouble" })
-- map("n", "<leader>qq", "<cmd>TroubleToggle quickfix<CR>", { desc = "Open Quickfix" })
-- map("n", "<leader>ql", "<cmd>TroubleToggle loclist<CR>", { desc = "Open Location List" })
-- map("n", "<leader>qt", "<cmd>TodoTrouble<CR>", { desc = "Open Todo Trouble" })
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {
  desc = "Buffer Diagnostics (Trouble)",
})
map("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
map(
  "n",
  "<leader>cl",
  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)" }
)
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
-- Tests
-- map("n", "<leader>tt", function()
--   require("neotest").run.run()
-- end, { desc = "Run nearest test" })
-- map("n", "<leader>tf", function()
--   require("neotest").run.run(vim.fn.expand "%")
-- end, { desc = "Run file test" })
-- map("n", "<leader>to", ":Neotest output<CR>", { desc = "Show test output" })
-- map("n", "<leader>ts", ":Neotest summary<CR>", { desc = "Show test summary" })

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle Debug UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "Start" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Step Over" })

-- Git
map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gv", ":DiffviewOpen<CR>", { desc = "Git Diff" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Toggle Log" })
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "telescope find files" })
