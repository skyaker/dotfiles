return {
  "nvim-treesitter/nvim-treesitter",
  -- Отключаем ленивую загрузку, чтобы подсветка работала сразу при старте
  lazy = false,
  -- Автоматически обновляем парсеры при обновлении плагина
  build = ":TSUpdate",

  -- Все настройки Treesitter должны быть внутри таблицы opts
  opts = {
    -- Список языков, которые будут установлены автоматически
    ensure_installed = {
      "lua",
      "vim",
      "java",
      "groovy",
    },
    -- Обязательно включаем саму подсветку Treesitter
    highlight = {
      enable = true,
      -- Можно добавить `additional_vim_regex_highlighting = false`,
      -- чтобы стандартная старая подсветка Vim не мешала новой
      additional_vim_regex_highlighting = false,
    },
  },
}
