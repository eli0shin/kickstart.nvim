return {
  'EdenEast/nightfox.nvim',
  priority = 1000,
  enabled = false,
  init = function()
    vim.cmd.colorscheme 'carbonfox'
  end,
  opts = {
    options = {
      styles = {
        functions = 'italic',
        keywords = 'italic',
        operators = 'italic',
      },
    },
  },
}