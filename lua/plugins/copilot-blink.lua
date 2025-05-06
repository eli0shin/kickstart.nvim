return {
  -- This plugin configures the copilot source for blink.cmp
  'zbirenbaum/copilot-cmp',
  dependencies = {
    'zbirenbaum/copilot.lua',
    'saghen/blink.cmp',
    'saghen/blink.compat',
  },
  config = function()
    require('copilot_cmp').setup {
      formatters = {
        label = require('copilot_cmp.format').format_label_text,
        insert_text = require('copilot_cmp.format').format_insert_text,
        preview = require('copilot_cmp.format').deindent,
      },
    }

    -- Using pcall to safely check if the method exists before calling it
    local ok, compat = pcall(require, 'blink.compat')
    if ok and type(compat.register_source) == 'function' then
      compat.register_source('copilot', {
        priority = 1000, -- Higher than LSP
        get_trigger_characters = function()
          return {}
        end,
      })
    else
      vim.notify('blink.compat module found but register_source method not available', vim.log.levels.WARN)
    end
  end,
}
