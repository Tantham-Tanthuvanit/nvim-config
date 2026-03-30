return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup {
      transparent = true, -- set true if you want transparent background
      italic_comments = true,
      hide_fillchars = false,
      borderless_pickers = true,
      terminal_colors = false,
    }
  end,
}
