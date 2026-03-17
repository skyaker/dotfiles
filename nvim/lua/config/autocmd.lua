return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      pdf_viewer = {
        {
          event = "BufReadPost",
          pattern = "*.pdf",
          callback = function()
            local file_path = vim.api.nvim_buf_get_name(0)
            local ok, pdfview = pcall(require, "pdfview")
            if ok then pdfview.open(file_path) end
          end,
        },
      },
    },
  },
}
