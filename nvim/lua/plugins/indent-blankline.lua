return {
  "lukas-reineke/indent-blankline.nvim",
  -- Загружаем плагин сразу при чтении файла, чтобы линии появились мгновенно
  event = { "BufReadPost", "BufNewFile" },
  main = "ibl", -- Указываем главный модуль плагина для правильной инициализации
  opts = {
    -- Настройки самих линий
    indent = {
      char = "│", -- Символ вертикальной линии (можно заменить на "╎" или "┆")
    },
    -- Настройки исключений (где линии рисовать НЕ нужно)
    exclude = {
      filetypes = {
        "help",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
      },
    },
  },
}
