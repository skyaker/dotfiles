if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function(_, opts)
    opts.adapters.deepseek = function()
      return require("codecompanion.adapters").extend("openai", {
        name = "deepseek",
        env = {
          api_key_name = "DEEPSEEK_API_KEY",
        },
        url = "https://api.deepseek.com/v1/chat/completions",
        schema = {
          model = {
            default = "deepseek-coder-v2-lite-instruct",
          },
        },
      })
    end

    require("codecompanion").setup {
      strategies = {
        chat = { adapter = "deepseek" },
        inline = { adapter = "deepseek" },
      },
      log_level = "DEBUG",
    }
  end,
}
