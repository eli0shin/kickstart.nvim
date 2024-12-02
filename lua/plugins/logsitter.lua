return {
  'gaelph/logsitter.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('logsitter').setup {
      path_format = 'short',
      prefix = '[LS] ->',
      separator = '->',
    }
  end,
}
