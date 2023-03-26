return {
  -- default colourscheme
  { 'savq/melange-nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd('colorscheme melange');
    end,
  },
  -- some others to choose from
  'catppuccin/nvim',
  'NLKNguyen/papercolor-theme',
  'rebelot/kanagawa.nvim',
  'EdenEast/nightfox.nvim',
  'AlexvZyl/nordic.nvim',
}
