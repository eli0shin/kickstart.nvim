return {
  'm4xshen/autoclose.nvim',
  event = 'VeryLazy',
  enabled = false,
  opts = {
    keys = {
      ['('] = { escape = false, close = true, pair = '()' },
      ['['] = { escape = false, close = true, pair = '[]' },
      ['{'] = { escape = false, close = true, pair = '{}' },
      -- Don't autoclose less than operation. it's annoying
      ['<'] = { escape = true, close = false, pair = '<>' },

      ['>'] = { escape = true, close = false, pair = '<>' },
      [')'] = { escape = true, close = false, pair = '()' },
      [']'] = { escape = true, close = false, pair = '[]' },
      ['}'] = { escape = true, close = false, pair = '{}' },

      -- disabled for now due to the false positive pair rate.
      -- little things like "'" in a sentance being escaped constantly or surrounding a word in quotes.
      -- let's see how this goes
      ["'"] = { escape = true, close = false, pair = "''" },
      ['"'] = { escape = true, close = true, pair = '""' },
      ['`'] = { escape = true, close = true, pair = '``' },
    },
    options = {
      disabled_filetypes = { 'text' },
      disable_when_touch = false,
      touch_regex = '[%w(%[{]',
      pair_spaces = false,
      auto_indent = true,
      disable_command_mode = false,
    },
  },
}
