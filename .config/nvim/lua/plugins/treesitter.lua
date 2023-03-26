return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = "BufReadPost",
    ---@type TSConfig
    opts = {
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      context_commentstring = { enable = true, enable_autocmd = false },
      ensure_installed = {
        'c',
        'rust',
        'ocaml',
        'bash',
        'help',
        'javascript',
        'typescript',
        'json',
        'lua',
        'elixir',
        'markdown',
        'python',
        'query',
        'regex',
        'tsx',
        'heex',
        'yaml',
      },
    },
    ---@param opts TSConfig
    config = function(plugin, opts)
      if plugin.ensure_installed then
        require("lazyvim.util").deprecate("treesitter.ensure_installed", "treesitter.opts.ensure_installed")
      end
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
