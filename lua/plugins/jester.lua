return {
  'David-Kunz/jester',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  config = function()
    require('jester').setup {
      cmd = "npm run test -- -t '$result' $file", -- run command
      identifiers = { 'test', 'it' }, -- used to identify tests
      prepend = { 'describe' }, -- prepend describe blocks
      expressions = { 'call_expression' }, -- tree-sitter object used to scan for tests/describe blocks
      path_to_jest_run = 'jest', -- used to run tests
      path_to_jest_debug = './node_modules/.bin/jest', -- used for debugging
      terminal_cmd = ':vsplit | terminal', -- used to spawn a terminal for running tests, for debugging refer to nvim-dap's config
      dap = { -- debug adapter configuration
        type = 'node2',
        request = 'launch',
        cwd = vim.fn.getcwd(),
        runtimeArgs = { '--inspect-brk', '$path_to_jest', '--no-coverage', '-t', '$result', '--', '$file' },
        args = { '--no-cache' },
        sourceMaps = false,
        protocol = 'inspector',
        skipFiles = { '<node_internals>/**/*.js' },
        console = 'integratedTerminal',
        port = 9229,
        disableOptimisticBPs = true,
      },
    }
    vim.keymap.set('n', '<leader>rt', require('jester').run, { desc = '[R]un [T]est' })
    vim.keymap.set('n', '<leader>rf', require('jester').run_file, { desc = '[R]un [F]ile Tests' })
    vim.keymap.set('n', '<leader>rl', require('jester').run_last, { desc = '[R]un [L]ast Test' })
    vim.keymap.set('n', '<leader>dt', require('jester').debug, { desc = '[D]ebug [T]est' })
    vim.keymap.set('n', '<leader>df', require('jester').debug_file, { desc = '[D]ebug [F]ile Test' })
    vim.keymap.set('n', '<leader>dl', require('jester').debug_last, { desc = '[D]ebug [L]ast Test' })
  end,
}
