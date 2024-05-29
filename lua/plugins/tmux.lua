return {
  'aserowy/tmux.nvim',
  config = function()
    require('tmux').setup {
      copy_sync = {
        enable = false,
      },
      resize = {
        enable_default_keybindings = false,
        resize_step_x = 10,
        resize_step_y = 10,
      },
    }
    vim.keymap.set({ 'n', 'x', 'o', 'v' }, '<M-h>', function()
      require('tmux').resize_left()
    end)
    vim.keymap.set({ 'n', 'x', 'o', 'v' }, '<M-j>', function()
      require('tmux').resize_bottom()
    end)
    vim.keymap.set({ 'n', 'x', 'o', 'v' }, '<M-k>', function()
      require('tmux').resize_top()
    end)
    vim.keymap.set({ 'n', 'x', 'o', 'v' }, '<M-l>', function()
      require('tmux').resize_right()
    end)
  end,
}
