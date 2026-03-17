return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLinePick<CR>", desc = "Tab pick" },
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    { "<S-h>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
  },
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      show_buffer_close_icons = false,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      indicator = {
        style = "underline",
      },
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
      },
    },
    highlights = {
      fill = { guibg = "none" },
      background = { guibg = "none" },
      tab = { guibg = "none" },
      buffer_visible = { guibg = "none" },

      indicator_selected = {
        fg = "#ff3b3b",
        sp = "#ff3b3b",
        guibg = "none",
      },

      buffer_selected = {
        guibg = "none",
        bold = true,
        italic = false,
        sp = "#ff3b3b",
      },

      separator = { fg = "#30363d", guibg = "none" },
      separator_selected = { fg = "#30363d", guibg = "none" },
      separator_visible = { fg = "#30363d", guibg = "none" },
      modified = { guibg = "none" },
      modified_visible = { guibg = "none" },
      duplicate_selected = { guibg = "none" },
      duplicate_visible = { guibg = "none" },
      duplicate = { guibg = "none" },
      pick_selected = { guibg = "none" },
      pick_visible = { guibg = "none" },
      pick = { guibg = "none" },
    },
  },
}
