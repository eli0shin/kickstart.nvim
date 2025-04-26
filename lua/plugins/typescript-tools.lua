return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      expose_as_code_action = 'all',
    },
  }, -- stable version
  {
    'OlegGulevskyy/better-ts-errors.nvim',
    event = 'VeryLazy',
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {
      keymaps = {
        toggle = '<leader>dd', -- default '<leader>dd'
        go_to_definition = '<leader>dx', -- default '<leader>dx'
      },
    },
  },
}
