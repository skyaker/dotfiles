return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    enable = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup {
        hijack_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
        respect_buf_cwd = true,

        view = {
          width = 30,
          side = "left",
          preserve_window_proportions = true,
        },

        renderer = {
          highlight_opened_files = "none",
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },

        filters = {
          dotfiles = false,
          git_ignored = false,
        },

        git = {
          enable = true,
        },

        diagnostics = {
          enable = false,
        },

        update_focused_file = {
          enable = false,
          update_cwd = false,
        },
      }
    end,
  },
}
