return {
  'gaelph/logsitter.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  lazy = true,
  event = 'BufEnter',
  config = function()
    require('logsitter').setup {
      path_format = 'short',
      prefix = '[LS] ->',
      separator = '->',
    }
  end,
}
