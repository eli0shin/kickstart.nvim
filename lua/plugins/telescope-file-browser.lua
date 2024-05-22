vim.keymap.set('n', '<space>fb', ':Telescope file_browser<CR>')

-- open file_browser with the path of the current buffer
vim.keymap.set('n', '<space>fc', ':Telescope file_browser path=%:p:h select_buffer=true<CR>')

return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
}
