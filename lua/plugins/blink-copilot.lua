return {
  'fang2hou/blink-copilot',
  dependencies = {
    'saghen/blink.cmp',
    'zbirenbaum/copilot.lua',
  },
  config = function()
    require('blink-copilot').setup {
      -- These are the default settings
      filetypes = {
        markdown = true,
        help = false,
      },
      suggestion = {
        auto_trigger = true,
      },
    }
  end,
}
