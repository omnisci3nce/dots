return {
  'folke/which-key.nvim',
  { 'folke/neoconf.nvim', cmd = 'Neoconf' },
  'folke/neodev.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  {
    'mbbill/undotree',
    cmd = 'Undotree',
    keys = {
      { '<leader>u', '<cmd>UndotreeToggle<CR>', desc = 'UndotreeToggle' }
    },
  },
  'tpope/vim-fugitive',
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    dependencies = {
      "nvim-lua/plenary.nvim",
      --"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  },
}
