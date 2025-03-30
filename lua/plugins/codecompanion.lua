local ok, local_config = pcall(require, 'plugins.codecompanion-local')
local codecompanion_opts
if ok and local_config then
  codecompanion_opts = local_config
else
  codecompanion_opts = {
    adapters = {
      opts = {
        show_defaults = false,
      },
      openrouter_claude = function()
        return require('codecompanion.adapters').extend('openai_compatible', {
          env = {
            url = 'https://openrouter.ai/api',
            api_key = 'OPENROUTER_API_KEY',
            chat_url = '/v1/chat/completions',
          },
          schema = {
            model = {
              default = 'anthropic/claude-3.7-sonnet',
            },
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = 'openrouter_claude',
      },
      inline = {
        adapter = 'openrouter_claude',
      },
      cmd = {
        adapter = 'openrouter_claude',
      },
    },
    opts = {
      log_level = 'ERROR',
    },
  }
end

return {
  'olimorris/codecompanion.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup(codecompanion_opts)

    -- Set up keymaps for codecompanion
    vim.keymap.set('n', '<leader>cc', '<cmd>CodeCompanionChat<cr>', { desc = 'Open CodeCompanion Chat' })
    vim.keymap.set('n', '<leader>ca', '<cmd>CodeCompanionActions<cr>', { desc = 'Open CodeCompanion Chat' })
    vim.keymap.set('v', '<leader>cp', '<cmd>CodeCompanionPrompt<cr>', { desc = 'Send selection to CodeCompanion' })
  end,
}
