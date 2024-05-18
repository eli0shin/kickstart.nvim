return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  enabled = true,
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local tree = require 'nvim-tree'
    tree.setup {}
    vim.keymap.set('n', '<C-t>', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle Nvim [T]ree' })
  end,
}
