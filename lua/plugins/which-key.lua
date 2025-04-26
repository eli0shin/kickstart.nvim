return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    local which_key = require 'which-key'
    which_key.add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>c_', hidden = true },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>d_', hidden = true },
      { '<leader>r', group = '[R]ename' },
      { '<leader>r_', hidden = true },
      { '<leader>s', group = '[S]earch' },
      { '<leader>s_', hidden = true },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>w_', hidden = true },
      { '<leader>d', group = '[D]iff' },
      { '<leader>dv', group = '[V]iew' },
      { '<leader>dvc', '<cmd>DiffviewClose<cr>', desc = '[C]lose' },
      { '<leader>dvo', '<cmd>DiffviewOpen<cr>', desc = '[O]pen' },
      { '<leader>dvi', ':DiffviewOpen ', desc = '[O]pen' },
      { '<leader>t', group = '[T]urbo' },
      { '<leader>tc', '<cmd>LogsitterClearBuf<cr>', desc = '[C]lear File' },
      { '<leader>tl', '<cmd>Logsitter<cr>', desc = '[L]og' },
      { '<leader>o', '<cmd>Oil<cr>', desc = '[O]il' },
      { '<leader>m', group = '[M]arkdown' },
      { '<leader>mt', '<cmd>RenderMarkdown toggle<cr>', desc = '[T]oggle' },
    }
  end,
}
