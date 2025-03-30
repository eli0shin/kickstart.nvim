return {
  'olimorris/codecompanion.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        -- Configure OpenRouter with Claude 3.7 Sonnet
        openrouter = {
          api_key = os.getenv 'OPENROUTER_API_KEY', -- Set your API key in environment variable
          model = 'anthropic/claude-3-7-sonnet-20240307',
          -- parameters = {
          --   temperature = 0.1,
          --   top_p = 0.95,
          --   max_tokens = 4000,
          -- },
          -- OpenRouter specific settings
          -- custom_endpoint_parameters = {
          --   route = 'fallback', -- or "fastest" or "lowest_latency" etc.
          -- },
        },
      },
      -- Set OpenRouter as the default adapter
      default_adapter = 'openrouter',

      -- Other codecompanion settings
      chat = {
        keymaps = {
          close = 'q',
          yank_code = 'y',
          yank_to_register = 'Y',
          execute_code = 'e',
          show_system_prompt = 'S',
        },
      },

      -- Enable logging for troubleshooting
      log_level = 'ERROR', -- Set to "DEBUG" if you need more detailed logs
    }

    -- Set up keymaps for codecompanion
    vim.keymap.set('n', '<leader>cc', '<cmd>CodeCompanionChat<cr>', { desc = 'Open CodeCompanion Chat' })
    vim.keymap.set('n', '<leader>ca', '<cmd>CodeCompanionActions<cr>', { desc = 'Open CodeCompanion Chat' })
    vim.keymap.set('v', '<leader>cp', '<cmd>CodeCompanionPrompt<cr>', { desc = 'Send selection to CodeCompanion' })
  end,
}
