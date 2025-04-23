local with_local_config = require 'utils.with_local_config'

return {
  'olimorris/codecompanion.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup(with_local_config('plugins.codecompanion-local', {}))

    vim.keymap.set('n', '<leader>cc', '<cmd>CodeCompanionChat<cr>', { desc = 'Open CodeCompanion Chat' })
    vim.keymap.set('n', '<leader>ca', '<cmd>CodeCompanionActions<cr>', { desc = 'Open CodeCompanion Chat' })
    vim.keymap.set('v', '<leader>cp', '<cmd>CodeCompanionPrompt<cr>', { desc = 'Send selection to CodeCompanion' })
  end,
}
