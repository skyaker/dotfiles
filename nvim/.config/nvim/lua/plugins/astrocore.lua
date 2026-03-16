-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      diagnostics = { virtual_text = true, virtual_lines = false },
      highlighturl = true,
      notifications = true,
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    filetypes = {
      extension = { foo = "fooscript" },
      filename = { [".foorc"] = "fooscript" },
      pattern = { [".*/etc/foo/.*"] = "fooscript" },
    },
    disabled_plugins = {
      "neo-tree",
    },
    options = {
      opt = {
        relativenumber = false,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = true,
        linebreak = true,
        showbreak = "",
        cursorline = false,
        showtabline = 2,
        timeoutlen = 300,
        conceallevel = 2,
      },
      g = {
        ai_accept = function()
          local suggestion = require "supermaven-nvim.completion_preview"
          if suggestion.has_suggestion() then
            vim.schedule(function() suggestion.on_accept_suggestion() end)
            return true
          end
        end,
        -- global variables
      },
    },
    mappings = {
      -- NORMAL MODE ---
      n = {
        ["<Leader>a"] = { "<Esc>ggVG", desc = "Select all" },
        ["<D-a>"] = { "<Esc>ggVG", desc = "Select all" },

        ["<Leader>e"] = { "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeToggle" },

        ["d"] = { '"_d', desc = "Delete without yanking" },
        ["z"] = { "d", desc = "Yank and delete" },

        ["<C-r>"] = { "<C-r>", desc = "Redo" },
        ["<D-z>"] = { function() vim.cmd "undo" end, desc = "Undo (Cmd+Z)" },
        ["<D-Z>"] = { function() vim.cmd "redo" end, desc = "Redo (Cmd+Shift+Z)" },

        ["<D-Left>"] = { "<Home>", desc = "Go to beginning of line" },
        ["<C-D-h>"] = { "<Home>", desc = "Go to beginning of line" },
        ["<D-Right>"] = { "<End>", desc = "Go to end of line" },
        ["<C-D-l>"] = { "<End>", desc = "Go to end of line" },

        ["gb"] = { "<C-o>", desc = "Jump Back" },
        ["gt"] = { "<C-i>", desc = "Jump Forward" },

        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>bb"] = { "<cmd>BufferPick<CR>", desc = "Pick buffer (barbar)" },
        ["<Leader>bd"] = { "<cmd>BufferClose<CR>", desc = "Close buffer (barbar)" },
        ["<Leader>]"] = { "<cmd>BufferNext<CR>", desc = "Next buffer (barbar)" },
        ["<Leader>["] = { "<cmd>BufferPrevious<CR>", desc = "Previous buffer (barbar)" },
        ["<Leader>{"] = { "<cmd>BufferGoto 1<CR>", desc = "First buffer (barbar)" },
        ["<Leader>}"] = { "<cmd>BufferLast<CR>", desc = "Last buffer (barbar)" },
        ["<Leader>1"] = { "<cmd>BufferGoto 1<CR>", desc = "Buffer 1" },
        ["<Leader>2"] = { "<cmd>BufferGoto 2<CR>", desc = "Buffer 2" },
        ["<Leader>3"] = { "<cmd>BufferGoto 3<CR>", desc = "Buffer 3" },
        ["<Leader>4"] = { "<cmd>BufferGoto 4<CR>", desc = "Buffer 4" },
        ["<Leader>5"] = { "<cmd>BufferGoto 5<CR>", desc = "Buffer 5" },
        ["<Leader>6"] = { "<cmd>BufferGoto 6<CR>", desc = "Buffer 6" },
        ["<Leader>7"] = { "<cmd>BufferGoto 7<CR>", desc = "Buffer 7" },
        ["<Leader>8"] = { "<cmd>BufferGoto 8<CR>", desc = "Buffer 8" },
        ["<Leader>9"] = { "<cmd>BufferGoto 9<CR>", desc = "Buffer 9" },
      },

      -- INSERT MODE ---
      i = {
        ["<D-z>"] = { function() vim.cmd "undo" end, desc = "Undo (Cmd+Z)" },
        ["<D-Z>"] = { function() vim.cmd "redo" end, desc = "Redo (Cmd+Shift+Z)" },
        ["<D-Left>"] = { "<Home>", desc = "Go to beginning of line" },
        ["<C-D-h>"] = { "<Home>", desc = "Go to beginning of line" },
        ["<D-Right>"] = { "<End>", desc = "Go to end of line" },
        ["<C-D-l>"] = { "<End>", desc = "Go to end of line" },

        -- Supermaven
        ["<D-x>"] = {
          function()
            local suggestion = require "supermaven-nvim.completion_preview"
            if suggestion and suggestion.has_suggestion and suggestion.on_clear_suggestion then
              suggestion.on_clear_suggestion()
            end
          end,
          desc = "Supermaven: reject suggestion",
        },
      },

      --- VISUAL MODE ---
      v = {
        ["d"] = { '"_d', desc = "Delete without yanking" },
        ["z"] = { "d", desc = "Yank and delete" },
        ["v"] = { '"_dP', desc = "Paste over selection without changing buffer" },
        [">"] = { ">gv", desc = "Indent right and keep selection" },
        ["<"] = { "<gv", desc = "Indent left and keep selection" },
        ["<D-Left>"] = { "<Home>", desc = "Go to beginning of line" },
        ["<C-D-h>"] = { "<Home>", desc = "Go to beginning of line" },
        ["<D-Right>"] = { "<End>", desc = "Go to end of line" },
        ["<C-D-l>"] = { "<End>", desc = "Go to end of line" },
      },

      --- TERMINAL MODE ---
      t = {
        ["<Esc>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
      },
    },

    polish = function()
      local groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "EndOfBuffer",
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end
    end,
  },
}
