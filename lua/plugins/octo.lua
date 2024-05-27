return {
  'pwntester/octo.nvim',
  event = 'VeryLazy',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    -- OR 'ibhagwan/fzf-lua',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('octo').setup { enable_builtin = true }
  end,
  opts = {
    suppress_missing_scope = {
      projects_v2 = true,
    },
  },
  keys = {
    {
      '<leader>O',
      '<cmd>Octo<cr>',
      { desc = 'Octo' },
    },
  },
}
