return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    require('gruvbox').setup {
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      contrast = 'hard', -- "soft", "medium", "hard"
      transparent_mode = true,
    }
  end,
}
