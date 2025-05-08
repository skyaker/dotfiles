return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "pyright", -- вот здесь добавляем поддержку Python
        "cssls",
      },
    },
  },
}
