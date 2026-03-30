-- In your lazy.nvim plugins setup
return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false, -- Load immediately
    priority = 1000, -- Load before other plugins
    transparency = false,
    opts = {
      theme = 'dragon', -- Variants: "wave", "dragon", "lotus"
      background = {
        dark = 'dragon', -- Wave, Dragon
        light = 'lotus',
      },
    },
    config = function() end,
  },
}
