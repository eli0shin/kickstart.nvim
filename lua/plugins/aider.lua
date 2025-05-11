return {
  'joshuavial/aider.nvim',
  lazy = true,
  keys = {
    { '<leader>Ao', '<cmd>AiderOpen<cr>', desc = 'Aider' },
  },
  opts = {
    -- Configuration options
    auto_manage_context = true, -- automatically manage buffer context
    default_bindings = true, -- use default <leader>A keybindings
    debug = false, -- enable debug logging
  },
}
