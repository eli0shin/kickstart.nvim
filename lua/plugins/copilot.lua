vim.keymap.set('n', '<leader>ct', '<CMD>CopilotChatToggle<CR>', { desc = '[C]opilot Chat [T]oggle' })

return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    lazy = true,
    event = 'VeryLazy',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
  },
}
