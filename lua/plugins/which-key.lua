return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    local which_key = require 'which-key'
    which_key.register {
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    }
    which_key.register({
      d = {
        name = '[D]iff',
        v = {
          name = '[V]iew',
          o = {
            '<cmd>DiffviewOpen<cr>',
            '[O]pen',
          },
          c = {
            '<cmd>DiffviewClose<cr>',
            '[C]lose',
          },
        },
      },
      g = {
        name = '+Git',
        h = {
          name = '+Github',
          c = {
            name = '+Commits',
            c = { '<cmd>GHCloseCommit<cr>', 'Close' },
            e = { '<cmd>GHExpandCommit<cr>', 'Expand' },
            o = { '<cmd>GHOpenToCommit<cr>', 'Open To' },
            p = { '<cmd>GHPopOutCommit<cr>', 'Pop Out' },
            z = { '<cmd>GHCollapseCommit<cr>', 'Collapse' },
          },
          i = {
            name = '+Issues',
            p = { '<cmd>GHPreviewIssue<cr>', 'Preview' },
          },
          l = {
            name = '+Litee',
            t = { '<cmd>LTPanel<cr>', 'Toggle Panel' },
          },
          r = {
            name = '+Review',
            b = { '<cmd>GHStartReview<cr>', 'Begin' },
            c = { '<cmd>GHCloseReview<cr>', 'Close' },
            d = { '<cmd>GHDeleteReview<cr>', 'Delete' },
            e = { '<cmd>GHExpandReview<cr>', 'Expand' },
            s = { '<cmd>GHSubmitReview<cr>', 'Submit' },
            z = { '<cmd>GHCollapseReview<cr>', 'Collapse' },
          },
          p = {
            name = '+Pull Request',
            c = { '<cmd>GHClosePR<cr>', 'Close' },
            d = { '<cmd>GHPRDetails<cr>', 'Details' },
            e = { '<cmd>GHExpandPR<cr>', 'Expand' },
            o = { '<cmd>GHOpenPR<cr>', 'Open' },
            p = { '<cmd>GHPopOutPR<cr>', 'PopOut' },
            r = { '<cmd>GHRefreshPR<cr>', 'Refresh' },
            t = { '<cmd>GHOpenToPR<cr>', 'Open To' },
            z = { '<cmd>GHCollapsePR<cr>', 'Collapse' },
          },
          t = {
            name = '+Threads',
            c = { '<cmd>GHCreateThread<cr>', 'Create' },
            n = { '<cmd>GHNextThread<cr>', 'Next' },
            t = { '<cmd>GHToggleThread<cr>', 'Toggle' },
          },
        },
      },
    }, { prefix = '<leader>' })
  end,
}
