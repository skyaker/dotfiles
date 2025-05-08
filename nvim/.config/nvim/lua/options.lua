-- set vim options here (vim.<first_key>.<second_key> = value)

-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = false
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
--

-- Удаление без копирования (в black hole register)
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })

-- Удаление с копированием (как обычное 'd')
vim.keymap.set({ "n", "v" }, "z", "d", { desc = "Yank and delete" })

-- zz → вырезать строку (аналог dd)
vim.keymap.set("n", "zz", "dd", { noremap = true, desc = "Cut line" })

-- Ctrl + R → redo (в normal-режиме)
vim.keymap.set("n", "<C-r>", "<C-r>", { desc = "Redo" })

-- Cmd + Z → undo (в insert и normal)
vim.keymap.set({ "i", "n" }, "<D-z>", function() vim.cmd "undo" end, { desc = "Undo (Cmd+Z)" })

-- Cmd + Shift + Z → redo
vim.keymap.set({ "i", "n" }, "<D-Z>", function() vim.cmd "redo" end, { desc = "Redo (Cmd+Shift+Z)" })

vim.keymap.set("n", "<Space>", "<Cmd>WhichKey '<Space>'<CR>", { silent = true, noremap = true })

v = {
  [">"] = { ">gv", "Indent right (preserve selection)" },
  ["<"] = { "<gv", "Indent left (preserve selection)" },
}

vim.keymap.set("v", ">", ">gv", { desc = "Indent right and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and keep selection" })
