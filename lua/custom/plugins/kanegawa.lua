-- In your lazy.nvim plugins setup
return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false, -- Load immediately
    priority = 1000, -- Load before other plugins
    transparency = true,
    opts = {
      theme = 'wave', -- Variants: "wave", "dragon", "lotus"
      background = {
        dark = 'wave', -- Wave, Dragon
        light = 'lotus',
      },
    },
    config = function()
      vim.cmd 'colorscheme kanagawa'
    end,
  },
}
