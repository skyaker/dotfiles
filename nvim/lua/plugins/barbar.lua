return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    require("barbar").setup {
      animation = false,
      clickable = true,
      filetype = {
        custom_colors = true,
      },
      sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
        NvimTree = true,
        undotree = {
          text = "undotree",
          align = "left", -- *optionally* specify an alignment (either 'left', 'center', or 'right')
        },
        ["nvim-tree"] = { event = "NvimTreeToggle" },
        -- Outline = { event = "BufWinLeave", text = "symbols-outline" },
      },
    }
    --    vim.cmd [[ augroup ChangeHighlight autocmd! autocmd BufEnter * highlight BufferTabpageFill ctermbg=#000000 augroup END ]]
  end,
}
