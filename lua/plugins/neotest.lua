return {
  'nvim-neotest/neotest',
  enabled = false,
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-jest',
    'marilari88/neotest-vitest',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-jest',
        require 'neotest-vitest',
      },
    }
    vim.keymap.set('n', '<leader>rt', require('neotest').run.run, { desc = '[R]un [T]est' })
    vim.keymap.set('n', '<leader>rf', function()
      require('neotest').run.run(vim.fn.expand '%')
    end, { desc = '[R]un [F]ile Tests' })
    vim.keymap.set('n', '<leader>dt', function()
      require('neotest').run.run { strategy = 'dap' }
    end, { desc = '[D]ebug [T]est' })
  end,
}
