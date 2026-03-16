return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup {
      keymaps = {
        accept_suggestion = "D-y",
        clear_suggestion = "D-]",
        accept_word = "<D-j>",
      },
      -- disable_keymaps = true,
    }
  end,
  -- config = function() require("supermaven-nvim").setup() end,
}
