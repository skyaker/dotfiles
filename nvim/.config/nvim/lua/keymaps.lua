vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTreeToggle" })

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })

vim.keymap.set({ "n", "v" }, "z", "d", { desc = "Yank and delete" })

vim.keymap.set("n", "zz", "dd", { noremap = true, desc = "Cut line" })

-- vim.keymap.set("Y", { desc = "yiw" })
-- Ctrl + R → redo (в normal-режиме)
vim.keymap.set("n", "<C-r>", "<C-r>", { desc = "Redo" })

-- Cmd + Z → undo (в insert и normal)
vim.keymap.set({ "i", "n" }, "<D-z>", function() vim.cmd "undo" end, { desc = "Undo (Cmd+Z)" })

-- Cmd + Shift + Z → redo
vim.keymap.set({ "i", "n" }, "<D-Z>", function() vim.cmd "redo" end, { desc = "Redo (Cmd+Shift+Z)" })

-- vim.keymap.set("n", "<Space>", "<Cmd>WhichKey '<Space>'<CR>", { silent = true, noremap = true })

v = {
  [">"] = { ">gv", "Indent right (preserve selection)" },
  ["<"] = { "<gv", "Indent left (preserve selection)" },
}

vim.keymap.set("v", ">", ">gv", { desc = "Indent right and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and keep selection" })

local harpoon = require "harpoon"

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- Pick buffer (barbar)
vim.keymap.set("n", "<leader>bb", "<cmd>BufferPick<CR>", { desc = "Pick buffer (barbar)" })

-- Close current buffer
vim.keymap.set("n", "<leader>bd", "<cmd>BufferClose<CR>", { desc = "Close buffer (barbar)" })

-- Next / previous buffer
vim.keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>", { desc = "Next buffer (barbar)" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>", { desc = "Previous buffer (barbar)" })

vim.keymap.set("n", "<leader>1", "<cmd>BufferGoto 1<CR>", { desc = "Buffer 1" })
vim.keymap.set("n", "<leader>2", "<cmd>BufferGoto 2<CR>", { desc = "Buffer 2" })
vim.keymap.set("n", "<leader>3", "<cmd>BufferGoto 3<CR>", { desc = "Buffer 3" })
vim.keymap.set("n", "<leader>4", "<cmd>BufferGoto 4<CR>", { desc = "Buffer 4" })
vim.keymap.set("n", "<leader>5", "<cmd>BufferGoto 5<CR>", { desc = "Buffer 5" })
vim.keymap.set("n", "<leader>6", "<cmd>BufferGoto 6<CR>", { desc = "Buffer 6" })
vim.keymap.set("n", "<leader>7", "<cmd>BufferGoto 7<CR>", { desc = "Buffer 7" })
vim.keymap.set("n", "<leader>8", "<cmd>BufferGoto 8<CR>", { desc = "Buffer 8" })
vim.keymap.set("n", "<leader>9", "<cmd>BufferGoto 9<CR>", { desc = "Buffer 9" })

-- В начало строки
vim.keymap.set({ "n", "i", "v" }, "<D-Left>", "<Home>", { desc = "Go to beginning of line" })

-- В конец строки
vim.keymap.set({ "n", "i", "v" }, "<D-Right>", "<End>", { desc = "Go to end of line" })

vim.keymap.set({ "n", "i" }, "<D-a>", "<Esc>ggVG", { desc = "Select all" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Navigation

-- vim.keymap.set("n", "i", "h", { noremap = true })
-- vim.keymap.set("n", "h", "O", { noremap = true })
-- vim.keymap.set("i", "h", "<Esc>O", { noremap = true })
