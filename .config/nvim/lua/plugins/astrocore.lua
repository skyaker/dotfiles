-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        showtabline = 2,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        -- neo_tree_remove_legacy_commands = 1,
        -- neo_tree_show_hidden_files = true,
      },
      -- filesystem = {
      --   filtered_items = {
      --     visible = true, -- 👈 показывать скрытые файлы
      --     hide_dotfiles = false, -- 👈 НЕ скрывать файлы типа .env, .DS_Store и т.п.
      --     hide_gitignored = false, -- (опционально)
      --   },
      -- },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        --
        -- ["d"] = { '"_d', desc = "Delete without yank" },
        -- ["z"] = { "d", desc = "Yank and delete" },
        -- ["zz"] = { "dd", desc = "Cut line" },
        -- ["<C-r>"] = { "<C-r>", desc = "Redo" },
        -- ["<Space>"] = { "<Cmd>WhichKey '<Space>'<CR>", desc = "Which-key (space)" },
        --
        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
      -- v = {
      --   ["d"] = { '"_d', "Delete without yank" },
      --   ["z"] = { "d", "Yank and delete" },
      --   [">"] = { ">gv", "Indent right (preserve selection)" },
      --   ["<"] = { "<gv", "Indent left (preserve selection)" },
      -- },
      -- i = {
      --   ["<D-z>"] = {
      --     function() vim.cmd "undo" end,
      --     "Undo (Cmd+Z)",
      --   },
      --   ["<D-Z>"] = {
      --     function() vim.cmd "redo" end,
      --     "Redo (Cmd+Shift+Z)",
      --   },
      -- },
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
