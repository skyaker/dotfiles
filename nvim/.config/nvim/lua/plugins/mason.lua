---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        "gopls",
        "goimports",
        "gofumpt",
        "golangci-lint",
        "golines",
        "gotests",

        "lua-language-server",
        "stylua",
        "selene",

        "debugpy",
        "pyright",

        "tree-sitter-cli",
      },
    },
  },
}
