return {
  'ggandor/leap.nvim',
  lazy = false,
  dependencies = {
    'tpope/vim-repeat',
  },
  config = function()
    vim.keymap.set({ 'n', 'x', 'o' }, '<leader>l', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n', 'x', 'o' }, '<leader>L', '<Plug>(leap-backward)')
    vim.keymap.set({ 'n', 'x', 'o' }, '<leader>W', '<Plug>(leap-from-window)')
  end,
}
