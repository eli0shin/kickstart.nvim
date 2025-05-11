return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    lazy = true,
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false }, -- Disable native suggestions as they'll be handled by blink-copilot
        panel = { enabled = false }, -- Disable panel as it's not needed with blink-copilot
      }
    end,
  },
}
