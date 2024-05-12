return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  enabled = false,
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
  end,
}
