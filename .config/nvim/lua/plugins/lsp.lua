return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  },
  config = function(plugin, opts)
    local lsp = require('lsp-zero')
    lsp.preset('lsp-compe')

    -- my modifications
    lsp.ensure_installed({
--      'tsserver',
--      'rust_analyzer',
--      'lua_ls',
--      'elixirls'
    })

    local cmp = require('cmp')
    local cmp_config = lsp.defaults.cmp_config({
      completion = {
        -- turn autocomplete off. instead it's triggered with TAB
        autocomplete = false
      }
    })
    cmp.setup(cmp_config)

    lsp.on_attach(function(client, bufnr)
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    end)

    lsp.set_preferences({
      sign_icons = {}
    })

    lsp.setup()
  end
}
